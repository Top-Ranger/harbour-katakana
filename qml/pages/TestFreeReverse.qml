/*
  Copyright (C) 2014 Marcus Soll
  Copyright (C) 2013 Jolla Ltd.
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: test

    Item {
        id: variable
        property int questions: 0
        property int correct: 0
        property int rightanswer: 0
        property bool started: false
        property bool enableButton: true
        property bool first: true
        property string picture: "Katakana/empty.png"
        property string valuecorrect: ""
        property int sumCorrect: save.getInt("FreeReversrTestCorrect")
        property int sumQuestions: save.getInt("FreeReverseTestQuestions")

        property bool drawingComplete: false
        property bool correctAnswer: false
    }

    Item {
        id: handleQuestions

        function start(){
            if(!variable.started)
            {
                variable.started = true
                variable.enableButton = false
                variable.first = false
                testclass.newQuestion()
                variable.picture = testclass.picture()
                variable.valuecorrect = testclass.valuecorrect()
                drawnImage.clear()
            }

        }

        function end(){
            variable.questions++
            variable.sumQuestions++
            if(variable.correctAnswer)
            {
                variable.correct++
                variable.sumCorrect++
            }
            save.saveInt("FreeReverseTestQuestions",variable.sumQuestions)
            save.saveInt("FreeReversrTestCorrect",variable.sumCorrect)
            variable.started = false
            if(variable.correctAnswer)
            {
                if(save.getBool("CorrectDisabled"))
                {
                    if(save.getBool("NextAfterCorrect"))
                    {
                        handleQuestions.start()
                    }
                    else
                    {
                        variable.enableButton = true
                    }
                }
                else
                {
                    correctPanel.show()
                }
            }
            else
            {
                if(save.getBool("WrongDisabled"))
                {
                    variable.enableButton = true
                }
                else
                {
                    falsePanel.show()
                }
            }
        }
    }

    SilicaFlickable {
        id: flickable

        PullDownMenu {
            visible: false
        }

        anchors.fill: parent

        contentHeight: mainColumn.height

        Column {
            id: mainColumn

            anchors {
                left: parent.left
                right: parent.right
                margins: Theme.paddingLarge
            }

            PageHeader {
                title: "Free Reverse Test"
            }

            Row {
                Label {
                    text: "Questions: " + variable.questions + "   "
                }

                Label {
                    text: "Correct: " + variable.correct + "   "
                }

                Label{
                    text: "Ratio: " + (variable.questions === 0?0:(Math.round(100.0/variable.questions*variable.correct))) + "%"
                }
            }

            Row {
                Label {
                    text: "Overall Questions: " + variable.sumQuestions + "   "
                    font.pixelSize: Theme.fontSizeTiny
                }

                Label {
                    text: "Overall Correct: " + variable.sumCorrect + "   "
                    font.pixelSize: Theme.fontSizeTiny
                }

                Label{
                    text: "Ratio: " + (variable.sumQuestions === 0?0:(Math.round(100.0/variable.sumQuestions*variable.sumCorrect))) + "%"
                    font.pixelSize: Theme.fontSizeTiny
                }
            }

            Row {
                x: parent.width/2 - (target.width + target2.width)/2
                Label {
                    id: target2
                    text: variable.valuecorrect
                    font.pixelSize: Theme.fontSizeHuge
                }
                Image {
                    id: target
                    source: variable.started?"Katakana/empty.png":variable.picture
                }
            }

            Rectangle {
                width: Screen.width*2/3
                height: width
                x: (parent.width/2) - (width/2)
                color: (variable.started && !variable.drawingComplete)?Theme.highlightColor:Theme.secondaryHighlightColor

                Rectangle {
                    width: parent.width - 10
                    height: parent.height - 10
                    anchors.centerIn: parent
                    color: (variable.started && !variable.drawingComplete)?"black":"#3A3A3A"

                    Canvas {

                        function clear() {
                            var context = drawnImage.getContext('2d')
                            context.clearRect(0, 0, drawnImage.width, drawnImage.height)
                            clearDrawing = true
                            requestPaint()
                            clearDrawing = false
                        }

                        property int positionX: 0
                        property int positionY: 0
                        property bool clearDrawing: false

                        id: drawnImage
                        height: parent.height
                        width: parent.width
                        anchors.centerIn: parent

                        renderTarget: Canvas.FramebufferObject
                        antialiasing: true

                        onPaint: {
                            if(!clearDrawing && mouseArea.containsMouse)
                            {
                                var context = getContext('2d')
                                context.lineJoin = "round"
                                context.linecap = "round"
                                context.lineWidth = 5
                                context.strokeStyle = "lightgrey"
                                context.beginPath()
                                context.moveTo(positionX, positionY)
                                context.lineTo(mouseArea.mouseX, mouseArea.mouseY)
                                context.stroke()
                                positionX = mouseArea.mouseX
                                positionY = mouseArea.mouseY
                            }
                        }

                        MouseArea {
                            id: mouseArea
                            height: parent.height
                            width: parent.width
                            anchors.centerIn: parent

                            enabled: variable.started && !variable.drawingComplete

                            onPressed: {test.backNavigation = false; test.canNavigateForward = false; flickable.interactive = false; hoverEnabled = true; drawnImage.positionX = mouseX; drawnImage.positionY = mouseY}
                            onReleased: {test.backNavigation = true; test.canNavigateForward = true; flickable.interactive = true; hoverEnabled = false}
                            onPositionChanged: {
                                drawnImage.requestPaint()
                            }
                        }
                    }
                }
            }

            Row {
                width: parent.width

                Button {
                    width: parent.width/2
                    enabled: variable.started && !variable.drawingComplete
                    text: "Clear"
                    onClicked: {
                        drawnImage.clear()
                    }
                }

                Button {
                    width: parent.width/2
                    enabled: variable.started && !variable.drawingComplete
                    text: "Finished"
                    onClicked: {
                        variable.drawingComplete = true
                    }
                }
            }

            Separator {
                width: parent.width
                color: Theme.secondaryColor
            }

            Label {
                x: parent.width/2 - width/2
                color: (variable.started && variable.drawingComplete)?Theme.primaryColor:Theme.secondaryColor
                text: "Is it the same?"
            }

            Image {
                x: parent.width/2 - width/2
                source: variable.drawingComplete?variable.picture:"Katakana/empty.png"
            }

            Separator {
                width: parent.width
                color: Theme.secondaryColor
            }

            Button {
                id: newQuestion
                width: parent.width
                enabled: variable.enableButton
                visible: !(variable.started && variable.drawingComplete)
                text: variable.first?"Start":"Continue"
                onClicked: handleQuestions.start()
            }

            Row {
                width: parent.width
                visible: variable.started && variable.drawingComplete

                Button {
                    width: parent.width/2
                    enabled: variable.started && variable.drawingComplete
                    text: "Yes"
                    onClicked: {
                        variable.drawingComplete = false
                        variable.correctAnswer = true
                        handleQuestions.end()
                    }
                }

                Button {
                    width: parent.width/2
                    enabled: variable.started && variable.drawingComplete
                    text: "No"
                    onClicked: {
                        variable.drawingComplete = false
                        variable.correctAnswer = false
                        handleQuestions.end()
                    }
                }
            }
        }
    }

    UpperPanel {
        id: correctPanel
        time: save.getInt("TimeCorrect") === 0 ? 2000: save.getInt("TimeCorrect")
        color: "green"
        text: "Correct"
        onTriggered: save.getBool("NextAfterCorrect")? handleQuestions.start() : variable.enableButton = true
    }

    UpperPanel {
        id: falsePanel
        time: save.getInt("TimeWrong") === 0 ? 2000 : save.getInt("TimeWrong")
        color: "red"
        text: "Wrong"
        onTriggered: variable.enableButton = true
    }
}

