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
        property string picture: "Hiragana/empty.png"
        property string valueone: "Hiragana/empty.png"
        property string valuetwo: "Hiragana/empty.png"
        property string valuethree: "Hiragana/empty.png"
        property string valuefour: "Hiragana/empty.png"
        property string valuefive: "Hiragana/empty.png"
        property string valuesix: "Hiragana/empty.png"
        property string valuecorrect: ""
        property int sumCorrect: save.getInt("ReverseTestCorrect")
        property int sumQuestions: save.getInt("ReverseTestQuestions")
    }

    Item {
        id: handleQuestions

        function start(){
            if(!variable.started)
            {
                variable.started = true
                variable.questions++
                variable.sumQuestions++
                testclass.newQuestion()
                variable.picture = testclass.picture()
                variable.rightanswer = testclass.correct()
                variable.valueone = testclass.one_picture()
                variable.valuetwo = testclass.two_picture()
                variable.valuethree = testclass.three_picture()
                variable.valuefour = testclass.four_picture()
                variable.valuefive = testclass.five_picture()
                variable.valuesix = testclass.six_picture()
                variable.valuecorrect = testclass.valuecorrect()
            }

        }

        function onePressed(){
            end(1)
        }

        function twoPressed(){
            end(2)
        }

        function threePressed(){
            end(3)
        }

        function fourPressed(){
            end(4)
        }

        function fivePressed(){
            end(5)
        }

        function sixPressed(){
            end(6)
        }

        function end(i){
            if(i === variable.rightanswer)
            {
                variable.correct++
                variable.sumCorrect++
            }
            save.saveInt("ReverseTestQuestions",variable.sumQuestions)
            save.saveInt("ReverseTestCorrect",variable.sumCorrect)
            variable.started = false
            //TODO: Disable buttons
        }
    }

    SilicaFlickable {

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
                title: "Reverse Test"
            }

            Row {
                Label {
                    text: "Questions: " + variable.questions + "    "
                }

                Label {
                    text: "Correct: " + variable.correct + "    "
                }

                Label{
                    text: "Ratio: " + (variable.questions === 0?0:(Math.round(100.0/variable.questions*variable.correct))) + "%"
                }
            }

            Row {
                Label {
                    text: "Overall Questions: " + variable.sumQuestions + "    "
                    font.pixelSize: Theme.fontSizeTiny
                }

                Label {
                    text: "Overall Correct: " + variable.sumCorrect + "    "
                    font.pixelSize: Theme.fontSizeTiny
                }

                Label{
                    text: "Overall Ratio: " + (variable.sumQuestions === 0?0:(Math.round(100.0/variable.sumQuestions*variable.sumCorrect))) + "%"
                    font.pixelSize: Theme.fontSizeTiny
                }
            }

            Button {
                id: newQuestion
                enabled: !variable.started
                text: "New Question"
                onClicked: handleQuestions.start()
            }
            Row {
                Label {
                    text: variable.valuecorrect
                    font.pixelSize: Theme.fontSizeHuge
                }
                Image {
                    id: target
                    source: variable.started?"Hiragana/empty.png":variable.picture
                }
            }

            Grid {
                columns: 2

                IconButton {
                    id: one
                    enabled: variable.started
                    icon.source: variable.valueone
                    onClicked: handleQuestions.onePressed()
                    width:  mainColumn.width / 2
                    height: 150
                }

                IconButton {
                    id: two
                    enabled: variable.started
                    icon.source: variable.valuetwo
                    onClicked: handleQuestions.twoPressed()
                    width:  mainColumn.width / 2
                    height: 150
                }

                IconButton {
                    id: three
                    enabled: variable.started
                    icon.source: variable.valuethree
                    onClicked: handleQuestions.threePressed()
                    width:  mainColumn.width / 2
                    height: 150
                }

                IconButton {
                    id: four
                    enabled: variable.started
                    icon.source: variable.valuefour
                    onClicked: handleQuestions.fourPressed()
                    width:  mainColumn.width / 2
                    height: 150
                }

                IconButton {
                    id: five
                    enabled: variable.started
                    icon.source: variable.valuefive
                    onClicked: handleQuestions.fivePressed()
                    width:  mainColumn.width / 2
                    height: 150
                }


                IconButton {
                    id: six
                    enabled: variable.started
                    icon.source: variable.valuesix
                    onClicked: handleQuestions.sixPressed()
                    width:  mainColumn.width / 2
                    height: 150
                }
            }
        }
    }
}

