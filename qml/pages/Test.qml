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
        property string valueone: "one"
        property string valuetwo: "two"
        property string valuethree: "three"
        property string valuefour: "four"
        property string valuefive: "five"
        property string valuesix: "six"
        property string valuecorrect: ""
        property int sumCorrect: save.getInt("TestCorrect")
        property int sumQuestions: save.getInt("TestQuestions")
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
                variable.valueone = testclass.one()
                variable.valuetwo = testclass.two()
                variable.valuethree = testclass.three()
                variable.valuefour = testclass.four()
                variable.valuefive = testclass.five()
                variable.valuesix = testclass.six()
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
            save.saveInt("TestQuestions",variable.sumQuestions)
            save.saveInt("TestCorrect",variable.sumCorrect)
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
                title: "Test"
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
                Image {
                    id: target
                    source: variable.picture
                }
                Label {
                    visible: !variable.started
                    text: variable.valuecorrect
                    font.pixelSize: Theme.fontSizeHuge
                }
            }

            Grid {
                columns: 2

                Button {
                    id: one
                    enabled: variable.started
                    text: variable.valueone
                    onClicked: handleQuestions.onePressed()
                }

                Button {
                    id: two
                    enabled: variable.started
                    text: variable.valuetwo
                    onClicked: handleQuestions.twoPressed()
                }

                Button {
                    id: three
                    enabled: variable.started
                    text: variable.valuethree
                    onClicked: handleQuestions.threePressed()
                }

                Button {
                    id: four
                    enabled: variable.started
                    text: variable.valuefour
                    onClicked: handleQuestions.fourPressed()
                }

                Button {
                    id: five
                    enabled: variable.started
                    text: variable.valuefive
                    onClicked: handleQuestions.fivePressed()
                }


                Button {
                    id: six
                    enabled: variable.started
                    text: variable.valuesix
                    onClicked: handleQuestions.sixPressed()
                }
            }
        }
    }
}

