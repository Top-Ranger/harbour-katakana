/*
  Copyright (C) 2014 Marcus Soll
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


Dialog {

    id: settings

    RemorsePopup {
        id: remorsePopup
    }

    onAccepted: {
        save.saveBool("NextAfterCorrect", autonext.checked)
        save.saveBool("CorrectDisabled", enabled1.checked)
        save.saveInt("TimeCorrect", time1.value)
        save.saveBool("WrongDisabled", enabled2.checked)
        save.saveInt("TimeWrong", time2.value)
    }

    SilicaFlickable {

        VerticalScrollDecorator {}

        anchors.fill: parent

        contentHeight: mainColumn.height

        Column {
            id: mainColumn

            anchors {
                left: parent.left
                right: parent.right
                margins: Theme.paddingLarge
            }

            DialogHeader {
                title: "Settings"
                acceptText: "Save"
                cancelText: "Discard"
            }

            TextSwitch {
                id: autonext
                width: parent.width
                checked: save.getBool("NextAfterCorrect")
                text: "Automatically get new questions after correct answer"
                description: "If this option is checked, you will automatically get a new question after you answered the previous one correctly"
            }

            TextSwitch {
                id: enabled1
                width: parent.width
                checked: save.getBool("CorrectDisabled")
                text: "Disable 'Correct'-Popup"
                description: "Disables the Answer-Popup which is shown in tests on correct answers"
            }

            Slider {
                id: time1
                width: parent.width
                minimumValue: 500
                maximumValue: 5000
                value: save.getInt("TimeCorrect") === 0 ? 2000: save.getInt("TimeCorrect")
                stepSize: 500
                valueText: value / 1000 + " sec"
                label: "Time the 'Correct'-Popup is shown"
            }

            TextSwitch {
                id: enabled2
                width: parent.width
                checked: save.getBool("WrongDisabled")
                text: "Disable 'Wrong'-Popup"
                description: "Disables the Answer-Popup which is shown in tests on wrong answers"
            }

            Slider {
                id: time2
                width: parent.width
                minimumValue: 500
                maximumValue: 5000
                value: save.getInt("TimeWrong") === 0 ? 2000 : save.getInt("TimeWrong")
                stepSize: 500
                valueText: value / 1000 + " sec"
                label: "Time the 'Wrong'-Popup is shown"
            }

            Separator {
                width: parent.width
                color: Theme.secondaryColor
            }

            Button {
                width: parent.width
                text: "Delete save"
                onClicked: remorsePopup.execute("Deleting save", function() {save.clear(); save.saveNow(); pageStack.replaceAbove(null, Qt.resolvedUrl("Grid.qml")) } )
            }


        }
    }
}
