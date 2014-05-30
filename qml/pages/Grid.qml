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
    id: grid

    Item {
        id: startTest

        property bool showerror: false
        /**
          * 0 = normal test
          * 1 = reverse test
          * 2 = free test
          */
        property int modus: 0

        function starTest() {
            modus = selectModus.currentIndex
            initialiseTest()
        }

        function initialiseTest() {
            testclass.initialise()

            // The "a" line

            if (a.checked) {
                testclass.add("a", "Katakana/a.png")
            }

            if (i.checked) {
                testclass.add("i", "Katakana/i.png")
            }

            if (u.checked) {
                testclass.add("u", "Katakana/u.png")
            }

            if (e.checked) {
                testclass.add("e", "Katakana/e.png")
            }

            if (o.checked) {
                testclass.add("o", "Katakana/o.png")
            }

            // The "ka" line

            if (ka.checked) {
                testclass.add("ka", "Katakana/ka.png")
            }

            if (ki.checked) {
                testclass.add("ki", "Katakana/ki.png")
            }

            if (ku.checked) {
                testclass.add("ku", "Katakana/ku.png")
            }

            if (ke.checked) {
                testclass.add("ke", "Katakana/ke.png")
            }

            if (ko.checked) {
                testclass.add("ko", "Katakana/ko.png")
            }

            // The "sa" line

            if (sa.checked) {
                testclass.add("sa", "Katakana/sa.png")
            }

            if (shi.checked) {
                testclass.add("shi", "Katakana/shi.png")
            }

            if (su.checked) {
                testclass.add("su", "Katakana/su.png")
            }

            if (se.checked) {
                testclass.add("se", "Katakana/se.png")
            }

            if (so.checked) {
                testclass.add("so", "Katakana/so.png")
            }


            // The "ta" line

            if (ta.checked) {
                testclass.add("ta", "Katakana/ta.png")
            }

            if (chi.checked) {
                testclass.add("chi", "Katakana/chi.png")
            }

            if (tsu.checked) {
                testclass.add("tsu", "Katakana/tsu.png")
            }

            if (te.checked) {
                testclass.add("te", "Katakana/te.png")
            }

            if (to.checked) {
                testclass.add("to", "Katakana/to.png")
            }

            // The "na" line

            if (na.checked) {
                testclass.add("na", "Katakana/na.png")
            }

            if (ni.checked) {
                testclass.add("ni", "Katakana/ni.png")
            }

            if (nu.checked) {
                testclass.add("nu", "Katakana/nu.png")
            }

            if (ne.checked) {
                testclass.add("ne", "Katakana/ne.png")
            }

            if (no.checked) {
                testclass.add("no", "Katakana/no.png")
            }


            // The "ha" line

            if (ha.checked) {
                testclass.add("ha", "Katakana/ha.png")
            }

            if (hi.checked) {
                testclass.add("hi", "Katakana/hi.png")
            }

            if (fu.checked) {
                testclass.add("fu", "Katakana/fu.png")
            }

            if (he.checked) {
                testclass.add("he", "Katakana/he.png")
            }

            if (ho.checked) {
                testclass.add("ho", "Katakana/ho.png")
            }



            // The "ma" line

            if (ma.checked) {
                testclass.add("ma", "Katakana/ma.png")
            }

            if (mi.checked) {
                testclass.add("mi", "Katakana/mi.png")
            }

            if (mu.checked) {
                testclass.add("mu", "Katakana/mu.png")
            }

            if (me.checked) {
                testclass.add("me", "Katakana/me.png")
            }

            if (mo.checked) {
                testclass.add("mo", "Katakana/mo.png")
            }

            // The "ya" line

            if (ya.checked) {
                testclass.add("ya", "Katakana/ya.png")
            }

            if (yu.checked) {
                testclass.add("yu", "Katakana/yu.png")
            }

            if (yo.checked) {
                testclass.add("yo", "Katakana/yo.png")
            }

            // The "ra" line

            if (ra.checked) {
                testclass.add("ra", "Katakana/ra.png")
            }

            if (ri.checked) {
                testclass.add("ri", "Katakana/ri.png")
            }

            if (ru.checked) {
                testclass.add("ru", "Katakana/ru.png")
            }

            if (re.checked) {
                testclass.add("re", "Katakana/re.png")
            }

            if (ro.checked) {
                testclass.add("ro", "Katakana/ro.png")
            }


            // The "wa" line

            if (wa.checked) {
                testclass.add("wa", "Katakana/wa.png")
            }

            if (wi.checked) {
                testclass.add("wi", "Katakana/wi.png")
            }

            if (we.checked) {
                testclass.add("we", "Katakana/we.png")
            }

            if (wo.checked) {
                testclass.add("wo", "Katakana/wo.png")
            }

            if (n.checked) {
                testclass.add("n", "Katakana/n.png")
            }


            // The "ga" line

            if (ga.checked) {
                testclass.add("ga", "Katakana/ga.png")
            }

            if (gi.checked) {
                testclass.add("gi", "Katakana/gi.png")
            }

            if (gu.checked) {
                testclass.add("gu", "Katakana/gu.png")
            }

            if (ge.checked) {
                testclass.add("ge", "Katakana/ge.png")
            }

            if (go.checked) {
                testclass.add("go", "Katakana/go.png")
            }



            // The "za" line

            if (za.checked) {
                testclass.add("za", "Katakana/za.png")
            }

            if (ji.checked) {
                if(modus === 2) { // In free mode we only want to type in the transcription
                    testclass.add("ji", "Katakana/ji.png")
                }
                else {
                    testclass.add("ji/zi", "Katakana/ji.png")
                }
            }

            if (zu.checked) {
                testclass.add("zu", "Katakana/zu.png")
            }

            if (ze.checked) {
                testclass.add("ze", "Katakana/ze.png")
            }

            if (zo.checked) {
                testclass.add("zo", "Katakana/zo.png")
            }


            // The "da" line

            if (da.checked) {
                testclass.add("da", "Katakana/da.png")
            }

            if (di.checked) {
                if(modus === 2) { // In free mode we only want to type in the transcription
                    testclass.add("ji", "Katakana/di.png")
                }
                else {
                    testclass.add("ji/di", "Katakana/di.png")
                }
            }

            if (du.checked) {
                if(modus === 2) {
                    testclass.add("zu", "Katakana/du.png")
                }
                else {
                    testclass.add("zu/du", "Katakana/du.png")
                }
            }

            if (de.checked) {
                testclass.add("de", "Katakana/de.png")
            }

            if (doswitch.checked) {
                testclass.add("do", "Katakana/do.png")
            }


            // The "ba" line

            if (ba.checked) {
                testclass.add("ba", "Katakana/ba.png")
            }

            if (bi.checked) {
                testclass.add("bi", "Katakana/bi.png")
            }

            if (bu.checked) {
                testclass.add("bu", "Katakana/bu.png")
            }

            if (be.checked) {
                testclass.add("be", "Katakana/be.png")
            }

            if (bo.checked) {
                testclass.add("bo", "Katakana/bo.png")
            }



            // The "pa" line

            if (pa.checked) {
                testclass.add("pa", "Katakana/pa.png")
            }

            if (pi.checked) {
                testclass.add("pi", "Katakana/pi.png")
            }

            if (pu.checked) {
                testclass.add("pu", "Katakana/pu.png")
            }

            if (pe.checked) {
                testclass.add("pe", "Katakana/pe.png")
            }

            if (po.checked) {
                testclass.add("po", "Katakana/po.png")
            }


            // The "kya" line

            if (kya.checked) {
                testclass.add("kya", "Katakana/kya.png")
            }

            if (kyu.checked) {
                testclass.add("kyu", "Katakana/kyu.png")
            }

            if (kyo.checked) {
                testclass.add("kyo", "Katakana/kyo.png")
            }


            // The "sha" line

            if (sha.checked) {
                testclass.add("sha", "Katakana/sha.png")
            }

            if (shu.checked) {
                testclass.add("shu", "Katakana/shu.png")
            }

            if (sho.checked) {
                testclass.add("sho", "Katakana/sho.png")
            }



            // The "cha" line

            if (cha.checked) {
                testclass.add("cha", "Katakana/cha.png")
            }

            if (chu.checked) {
                testclass.add("chu", "Katakana/chu.png")
            }

            if (cho.checked) {
                testclass.add("cho", "Katakana/cho.png")
            }


            // The "nya" line

            if (nya.checked) {
                testclass.add("nya", "Katakana/nya.png")
            }

            if (nyu.checked) {
                testclass.add("nyu", "Katakana/nyu.png")
            }

            if (nyo.checked) {
                testclass.add("nyo", "Katakana/nyo.png")
            }


            // The "hya" line

            if (hya.checked) {
                testclass.add("hya", "Katakana/hya.png")
            }

            if (hyu.checked) {
                testclass.add("hyu", "Katakana/hyu.png")
            }

            if (hyo.checked) {
                testclass.add("hyo", "Katakana/hyo.png")
            }


            // The "mya" line

            if (mya.checked) {
                testclass.add("mya", "Katakana/mya.png")
            }

            if (myu.checked) {
                testclass.add("myu", "Katakana/myu.png")
            }

            if (myo.checked) {
                testclass.add("myo", "Katakana/myo.png")
            }


            // The "rya" line

            if (rya.checked) {
                testclass.add("rya", "Katakana/rya.png")
            }

            if (ryu.checked) {
                testclass.add("ryu", "Katakana/ryu.png")
            }

            if (ryo.checked) {
                testclass.add("ryo", "Katakana/ryo.png")
            }


            // The "gya" line

            if (gya.checked) {
                testclass.add("gya", "Katakana/gya.png")
            }

            if (gyu.checked) {
                testclass.add("gyu", "Katakana/gyu.png")
            }

            if (gyo.checked) {
                testclass.add("gyo", "Katakana/gyo.png")
            }


            // The "ja" line

            if (ja.checked) {
                testclass.add("ja", "Katakana/ja.png")
            }

            if (ju.checked) {
                testclass.add("ju", "Katakana/ju.png")
            }

            if (jo.checked) {
                testclass.add("jo", "Katakana/jo.png")
            }


            // The "ja" line

            if (dya.checked) {
                if(modus === 2) { // In free mode we only want to type in the transcription
                    testclass.add("ja", "Katakana/dya.png")
                }
                else {
                    testclass.add("ja(d)", "Katakana/dya.png")
                }
            }

            if (dyu.checked) {
                if(modus === 2) {
                    testclass.add("ju", "Katakana/dyu.png")
                }
                else {
                    testclass.add("ju(d)", "Katakana/dyu.png")
                }
            }

            if (dyo.checked) {
                if(modus === 2) {
                    testclass.add("jo", "Katakana/dyo.png")
                }
                else {
                    testclass.add("jo(d)", "Katakana/dyo.png")
                }
            }


            // The "bya" line

            if (bya.checked) {
                testclass.add("bya", "Katakana/bya.png")
            }

            if (byu.checked) {
                testclass.add("byu", "Katakana/byu.png")
            }

            if (byo.checked) {
                testclass.add("byo", "Katakana/byo.png")
            }


            // The "pya" line

            if (pya.checked) {
                testclass.add("pya", "Katakana/pya.png")
            }

            if (pyu.checked) {
                testclass.add("pyu", "Katakana/pyu.png")
            }

            if (pyo.checked) {
                testclass.add("pyo", "Katakana/pyo.png")
            }


            // Start the test
            if(testclass.testPossible())
            {
                showerror = false
                if(modus  == 0)
                {
                    pageStack.push(Qt.resolvedUrl("Test.qml"))
                }
                else if (modus == 1)
                {
                    pageStack.push(Qt.resolvedUrl("TestReverse.qml"))
                }
                else
                {
                    pageStack.push(Qt.resolvedUrl("TestFree.qml"))
                }
            }
            else
            {
                showerror = true
            }
        }
    }

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {

            MenuItem {
                text: "About"
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }

            MenuItem {
                text: "Start Test"
                onClicked: startTest.startTest()
            }

        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: mainColumn.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: mainColumn

            anchors {
                left: parent.left
                right: parent.right
                margins: Theme.paddingLarge
            }

            PageHeader {
                title: ""
            }

            VerticalScrollDecorator {}

            Label {
                id: errorlabel
                text: "You need at least six Katakana selected"
                color: Theme.highlightColor
                visible: startTest.showerror
            }

            ComboBox {
                id: selectModus
                width: parent.width
                label: "Test mode:"
                currentIndex: save.getInt("Modus")

                onCurrentIndexChanged: save.saveInt("Modus",currentIndex)

                menu: ContextMenu {
                    MenuItem { text: "Normal Test" }
                    MenuItem { text: "Reverse Test" }
                    MenuItem { text: "Free Test"}
                }
            }

            TextSwitch {
                id: switchMonographs
                text: "Monographs"
            }

            Grid {
                id: monographsGrid
                columns: 5
                visible: switchMonographs.checked

                // The "a" line

                Switch {
                    id: a
                    icon.source: "Katakana/a.png"
                    checked: save.getBool("a")
                    onClicked: {save.saveBool("a",checked)}
                }
                Switch {
                    id: i
                    icon.source: "Katakana/i.png"
                    checked: save.getBool("i")
                    onClicked: {save.saveBool("i",checked)}
                }
                Switch {
                    id: u
                    icon.source: "Katakana/u.png"
                    checked: save.getBool("u")
                    onClicked: {save.saveBool("u",checked)}
                }
                Switch {
                    id: e
                    icon.source: "Katakana/e.png"
                    checked: save.getBool("e")
                    onClicked: {save.saveBool("e",checked)}
                }
                Switch {
                    id: o
                    icon.source: "Katakana/o.png"
                    checked: save.getBool("o")
                    onClicked: {save.saveBool("o",checked)}
                }
                Label{
                    text: "     a"
                }
                Label{
                    text: "     i"
                }
                Label{
                    text: "     u"
                }
                Label{
                    text: "     e"
                }
                Label{
                    text: "     o"
                }

                // The "ka" line

                Switch {
                    id: ka
                    icon.source: "Katakana/ka.png"
                    checked: save.getBool("ka")
                    onClicked: {save.saveBool("ka",checked)}
                }
                Switch {
                    id: ki
                    icon.source: "Katakana/ki.png"
                    checked: save.getBool("ki")
                    onClicked: {save.saveBool("ki",checked)}
                }
                Switch {
                    id: ku
                    icon.source: "Katakana/ku.png"
                    checked: save.getBool("ku")
                    onClicked: {save.saveBool("ku",checked)}
                }
                Switch {
                    id: ke
                    icon.source: "Katakana/ke.png"
                    checked: save.getBool("ke")
                    onClicked: {save.saveBool("ke",checked)}
                }
                Switch {
                    id: ko
                    icon.source: "Katakana/ko.png"
                    checked: save.getBool("ko")
                    onClicked: {save.saveBool("ko",checked)}
                }
                Label{
                    text: "     ka"
                }
                Label{
                    text: "     ki"
                }
                Label{
                    text: "     ku"
                }
                Label{
                    text: "     ke"
                }
                Label{
                    text: "     ko"
                }

                // The "a" line

                Switch {
                    id: sa
                    icon.source: "Katakana/sa.png"
                    checked: save.getBool("sa")
                    onClicked: {save.saveBool("sa",checked)}
                }
                Switch {
                    id: shi
                    icon.source: "Katakana/shi.png"
                    checked: save.getBool("shi")
                    onClicked: {save.saveBool("shi",checked)}
                }
                Switch {
                    id: su
                    icon.source: "Katakana/su.png"
                    checked: save.getBool("su")
                    onClicked: {save.saveBool("su",checked)}
                }
                Switch {
                    id: se
                    icon.source: "Katakana/se.png"
                    checked: save.getBool("se")
                    onClicked: {save.saveBool("se",checked)}
                }
                Switch {
                    id: so
                    icon.source: "Katakana/so.png"
                    checked: save.getBool("so")
                    onClicked: {save.saveBool("so",checked)}
                }
                Label{
                    text: "     sa"
                }
                Label{
                    text: "     shi"
                }
                Label{
                    text: "     su"
                }
                Label{
                    text: "     se"
                }
                Label{
                    text: "     so"
                }


                // The "ta" line

                Switch {
                    id: ta
                    icon.source: "Katakana/ta.png"
                    checked: save.getBool("ta")
                    onClicked: {save.saveBool("ta",checked)}
                }
                Switch {
                    id: chi
                    icon.source: "Katakana/chi.png"
                    checked: save.getBool("chi")
                    onClicked: {save.saveBool("chi",checked)}
                }
                Switch {
                    id: tsu
                    icon.source: "Katakana/tsu.png"
                    checked: save.getBool("tsu")
                    onClicked: {save.saveBool("tsu",checked)}
                }
                Switch {
                    id: te
                    icon.source: "Katakana/te.png"
                    checked: save.getBool("te")
                    onClicked: {save.saveBool("te",checked)}
                }
                Switch {
                    id: to
                    icon.source: "Katakana/to.png"
                    checked: save.getBool("to")
                    onClicked: {save.saveBool("to",checked)}
                }
                Label{
                    text: "     ta"
                }
                Label{
                    text: "     chi"
                }
                Label{
                    text: "     tsu"
                }
                Label{
                    text: "     te"
                }
                Label{
                    text: "     to"
                }


                // The "na" line

                Switch {
                    id: na
                    icon.source: "Katakana/na.png"
                    checked: save.getBool("na")
                    onClicked: {save.saveBool("na",checked)}
                }
                Switch {
                    id: ni
                    icon.source: "Katakana/ni.png"
                    checked: save.getBool("ni")
                    onClicked: {save.saveBool("ni",checked)}
                }
                Switch {
                    id: nu
                    icon.source: "Katakana/nu.png"
                    checked: save.getBool("nu")
                    onClicked: {save.saveBool("nu",checked)}
                }
                Switch {
                    id: ne
                    icon.source: "Katakana/ne.png"
                    checked: save.getBool("ne")
                    onClicked: {save.saveBool("ne",checked)}
                }
                Switch {
                    id: no
                    icon.source: "Katakana/no.png"
                    checked: save.getBool("no")
                    onClicked: {save.saveBool("no",checked)}
                }
                Label{
                    text: "     na"
                }
                Label{
                    text: "     ni"
                }
                Label{
                    text: "     nu"
                }
                Label{
                    text: "     ne"
                }
                Label{
                    text: "     no"
                }

                // The "ha" line

                Switch {
                    id: ha
                    icon.source: "Katakana/ha.png"
                    checked: save.getBool("ha")
                    onClicked: {save.saveBool("ha",checked)}
                }
                Switch {
                    id: hi
                    icon.source: "Katakana/hi.png"
                    checked: save.getBool("hi")
                    onClicked: {save.saveBool("hi",checked)}
                }
                Switch {
                    id: fu
                    icon.source: "Katakana/fu.png"
                    checked: save.getBool("fu")
                    onClicked: {save.saveBool("fu",checked)}
                }
                Switch {
                    id: he
                    icon.source: "Katakana/he.png"
                    checked: save.getBool("he")
                    onClicked: {save.saveBool("he",checked)}
                }
                Switch {
                    id: ho
                    icon.source: "Katakana/ho.png"
                    checked: save.getBool("ho")
                    onClicked: {save.saveBool("ho",checked)}
                }
                Label{
                    text: "     ha"
                }
                Label{
                    text: "     hi"
                }
                Label{
                    text: "     fu"
                }
                Label{
                    text: "     he"
                }
                Label{
                    text: "     ho"
                }

                // The "ma" line

                Switch {
                    id: ma
                    icon.source: "Katakana/ma.png"
                    checked: save.getBool("ma")
                    onClicked: {save.saveBool("ma",checked)}
                }
                Switch {
                    id: mi
                    icon.source: "Katakana/mi.png"
                    checked: save.getBool("mi")
                    onClicked: {save.saveBool("mi",checked)}
                }
                Switch {
                    id: mu
                    icon.source: "Katakana/mu.png"
                    checked: save.getBool("mu")
                    onClicked: {save.saveBool("mu",checked)}
                }
                Switch {
                    id: me
                    icon.source: "Katakana/me.png"
                    checked: save.getBool("me")
                    onClicked: {save.saveBool("me",checked)}
                }
                Switch {
                    id: mo
                    icon.source: "Katakana/mo.png"
                    checked: save.getBool("mo")
                    onClicked: {save.saveBool("mo",checked)}
                }
                Label{
                    text: "     ma"
                }
                Label{
                    text: "     mi"
                }
                Label{
                    text: "     mu"
                }
                Label{
                    text: "     me"
                }
                Label{
                    text: "     mo"
                }


                // The "ya" line

                Switch {
                    id: ya
                    icon.source: "Katakana/ya.png"
                    checked: save.getBool("ya")
                    onClicked: {save.saveBool("ya",checked)}
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: yu
                    icon.source: "Katakana/yu.png"
                    checked: save.getBool("yu")
                    onClicked: {save.saveBool("yu",checked)}
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: yo
                    icon.source: "Katakana/yo.png"
                    checked: save.getBool("yo")
                    onClicked: {save.saveBool("yo",checked)}
                }
                Label{
                    text: "     ya"
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "     yu"
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "     yo"
                }

                // The "ra" line

                Switch {
                    id: ra
                    icon.source: "Katakana/ra.png"
                    checked: save.getBool("ra")
                    onClicked: {save.saveBool("ra",checked)}
                }
                Switch {
                    id: ri
                    icon.source: "Katakana/ri.png"
                    checked: save.getBool("ri")
                    onClicked: {save.saveBool("ri",checked)}
                }
                Switch {
                    id: ru
                    icon.source: "Katakana/ru.png"
                    checked: save.getBool("ru")
                    onClicked: {save.saveBool("ru",checked)}
                }
                Switch {
                    id: re
                    icon.source: "Katakana/re.png"
                    checked: save.getBool("re")
                    onClicked: {save.saveBool("re",checked)}
                }
                Switch {
                    id: ro
                    icon.source: "Katakana/ro.png"
                    checked: save.getBool("ro")
                    onClicked: {save.saveBool("ro",checked)}
                }
                Label{
                    text: "     ra"
                }
                Label{
                    text: "     ri"
                }
                Label{
                    text: "     ru"
                }
                Label{
                    text: "     re"
                }
                Label{
                    text: "     ro"
                }

                // The "wa" line

                Switch {
                    id: wa
                    icon.source: "Katakana/wa.png"
                    checked: save.getBool("wa")
                    onClicked: {save.saveBool("wa",checked)}
                }
                Switch {
                    id: wi
                    icon.source: "Katakana/wi.png"
                    checked: save.getBool("wi")
                    onClicked: {save.saveBool("wi",checked)}
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: we
                    icon.source: "Katakana/we.png"
                    checked: save.getBool("we")
                    onClicked: {save.saveBool("we",checked)}
                }
                Switch {
                    id: wo
                    icon.source: "Katakana/wo.png"
                    checked: save.getBool("wo")
                    onClicked: {save.saveBool("wo",checked)}
                }
                Label{
                    text: "     wa"
                }
                Label{
                    text: "     wi"
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "     we"
                }
                Label{
                    text: "     wo"
                }

                // "n"

                Image {
                    source: "Katakana/empty.png"
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: n
                    icon.source: "Katakana/n.png"
                    checked: save.getBool("n")
                    onClicked: {save.saveBool("n",checked)}
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "      "
                }
                Label{
                    text: "     n"
                }
            } // End grid

            TextSwitch {
                id: switchDiacritics
                text: "Diacritics"
            }

            Grid {
                id: diacriticsGrid
                columns: 5
                visible: switchDiacritics.checked

                // The "ga" line

                Switch {
                    id: ga
                    icon.source: "Katakana/ga.png"
                    checked: save.getBool("ga")
                    onClicked: {save.saveBool("ga",checked)}
                }
                Switch {
                    id: gi
                    icon.source: "Katakana/gi.png"
                    checked: save.getBool("gi")
                    onClicked: {save.saveBool("gi",checked)}
                }
                Switch {
                    id: gu
                    icon.source: "Katakana/gu.png"
                    checked: save.getBool("gu")
                    onClicked: {save.saveBool("gu",checked)}
                }
                Switch {
                    id: ge
                    icon.source: "Katakana/ge.png"
                    checked: save.getBool("ge")
                    onClicked: {save.saveBool("ge",checked)}
                }
                Switch {
                    id: go
                    icon.source: "Katakana/go.png"
                    checked: save.getBool("go")
                    onClicked: {save.saveBool("go",checked)}
                }
                Label{
                    text: "     ga"
                }
                Label{
                    text: "     gi"
                }
                Label{
                    text: "     gu"
                }
                Label{
                    text: "     ge"
                }
                Label{
                    text: "     go"
                }


                // The "a" line

                Switch {
                    id: za
                    icon.source: "Katakana/za.png"
                    checked: save.getBool("za")
                    onClicked: {save.saveBool("za",checked)}
                }
                Switch {
                    id: ji
                    icon.source: "Katakana/ji.png"
                    checked: save.getBool("ji")
                    onClicked: {save.saveBool("ji",checked)}
                }
                Switch {
                    id: zu
                    icon.source: "Katakana/zu.png"
                    checked: save.getBool("zu")
                    onClicked: {save.saveBool("zu",checked)}
                }
                Switch {
                    id: ze
                    icon.source: "Katakana/ze.png"
                    checked: save.getBool("ze")
                    onClicked: {save.saveBool("ze",checked)}
                }
                Switch {
                    id: zo
                    icon.source: "Katakana/zo.png"
                    checked: save.getBool("zo")
                    onClicked: {save.saveBool("zo",checked)}
                }
                Label{
                    text: "     za"
                }
                Label{
                    text: "     ji/zi"
                }
                Label{
                    text: "     zu"
                }
                Label{
                    text: "     ze"
                }
                Label{
                    text: "     zo"
                }


                // The "da" line

                Switch {
                    id: da
                    icon.source: "Katakana/da.png"
                    checked: save.getBool("da")
                    onClicked: {save.saveBool("da",checked)}
                }
                Switch {
                    id: di
                    icon.source: "Katakana/di.png"
                    checked: save.getBool("di")
                    onClicked: {save.saveBool("di",checked)}
                }
                Switch {
                    id: du
                    icon.source: "Katakana/du.png"
                    checked: save.getBool("du")
                    onClicked: {save.saveBool("du",checked)}
                }
                Switch {
                    id: de
                    icon.source: "Katakana/de.png"
                    checked: save.getBool("de")
                    onClicked: {save.saveBool("de",checked)}
                }
                Switch {
                    id: doswitch
                    icon.source: "Katakana/do.png"
                    checked: save.getBool("do")
                    onClicked: {save.saveBool("do",checked)}
                }
                Label{
                    text: "     da"
                }
                Label{
                    text: "     ji/di"
                }
                Label{
                    text: "     zu/du"
                }
                Label{
                    text: "     de"
                }
                Label{
                    text: "     do"
                }

                // The "a" line

                Switch {
                    id: ba
                    icon.source: "Katakana/ba.png"
                    checked: save.getBool("ba")
                    onClicked: {save.saveBool("ba",checked)}
                }
                Switch {
                    id: bi
                    icon.source: "Katakana/bi.png"
                    checked: save.getBool("bi")
                    onClicked: {save.saveBool("bi",checked)}
                }
                Switch {
                    id: bu
                    icon.source: "Katakana/bu.png"
                    checked: save.getBool("bu")
                    onClicked: {save.saveBool("bu",checked)}
                }
                Switch {
                    id: be
                    icon.source: "Katakana/be.png"
                    checked: save.getBool("be")
                    onClicked: {save.saveBool("be",checked)}
                }
                Switch {
                    id: bo
                    icon.source: "Katakana/bo.png"
                    checked: save.getBool("bo")
                    onClicked: {save.saveBool("bo",checked)}
                }
                Label{
                    text: "     ba"
                }
                Label{
                    text: "     bi"
                }
                Label{
                    text: "     bu"
                }
                Label{
                    text: "     be"
                }
                Label{
                    text: "     bo"
                }


                // The "a" line

                Switch {
                    id: pa
                    icon.source: "Katakana/pa.png"
                    checked: save.getBool("pa")
                    onClicked: {save.saveBool("pa",checked)}
                }
                Switch {
                    id: pi
                    icon.source: "Katakana/pi.png"
                    checked: save.getBool("pi")
                    onClicked: {save.saveBool("pi",checked)}
                }
                Switch {
                    id: pu
                    icon.source: "Katakana/pu.png"
                    checked: save.getBool("pu")
                    onClicked: {save.saveBool("pu",checked)}
                }
                Switch {
                    id: pe
                    icon.source: "Katakana/pe.png"
                    checked: save.getBool("pe")
                    onClicked: {save.saveBool("pe",checked)}
                }
                Switch {
                    id: po
                    icon.source: "Katakana/po.png"
                    checked: save.getBool("po")
                    onClicked: {save.saveBool("po",checked)}
                }
                Label{
                    text: "     pa"
                }
                Label{
                    text: "     pi"
                }
                Label{
                    text: "     pu"
                }
                Label{
                    text: "     pe"
                }
                Label{
                    text: "     po"
                }

            } // End grid

            TextSwitch {
                id: switchDigraphs
                text: "Digraphs"
            }

            Grid {
                id: digraphsGrid
                columns: 3
                visible: switchDigraphs.checked

                // The "kya" line

                Switch {
                    id: kya
                    icon.source: "Katakana/kya.png"
                    checked: save.getBool("kya")
                    onClicked: {save.saveBool("kya",checked)}
                }
                Switch {
                    id: kyu
                    icon.source: "Katakana/kyu.png"
                    checked: save.getBool("kyu")
                    onClicked: {save.saveBool("kyu",checked)}
                }
                Switch {
                    id: kyo
                    icon.source: "Katakana/kyo.png"
                    checked: save.getBool("kyo")
                    onClicked: {save.saveBool("kyo",checked)}
                }
                Label{
                    text: "         kya"
                }
                Label{
                    text: "         kyu"
                }
                Label{
                    text: "         kyo"
                }


                // The "sha" line

                Switch {
                    id: sha
                    icon.source: "Katakana/sha.png"
                    checked: save.getBool("sha")
                    onClicked: {save.saveBool("sha",checked)}
                }
                Switch {
                    id: shu
                    icon.source: "Katakana/shu.png"
                    checked: save.getBool("shu")
                    onClicked: {save.saveBool("shu",checked)}
                }
                Switch {
                    id: sho
                    icon.source: "Katakana/sho.png"
                    checked: save.getBool("sho")
                    onClicked: {save.saveBool("sho",checked)}
                }
                Label{
                    text: "         sha"
                }
                Label{
                    text: "         shu"
                }
                Label{
                    text: "         sho"
                }


                // The "cha" line

                Switch {
                    id: cha
                    icon.source: "Katakana/cha.png"
                    checked: save.getBool("cha")
                    onClicked: {save.saveBool("cha",checked)}
                }
                Switch {
                    id: chu
                    icon.source: "Katakana/chu.png"
                    checked: save.getBool("chu")
                    onClicked: {save.saveBool("chu",checked)}
                }
                Switch {
                    id: cho
                    icon.source: "Katakana/cho.png"
                    checked: save.getBool("cho")
                    onClicked: {save.saveBool("cho",checked)}
                }
                Label{
                    text: "         cha"
                }
                Label{
                    text: "         chu"
                }
                Label{
                    text: "         cho"
                }


                // The "nya" line

                Switch {
                    id: nya
                    icon.source: "Katakana/nya.png"
                    checked: save.getBool("nya")
                    onClicked: {save.saveBool("nya",checked)}
                }
                Switch {
                    id: nyu
                    icon.source: "Katakana/nyu.png"
                    checked: save.getBool("nyu")
                    onClicked: {save.saveBool("nyu",checked)}
                }
                Switch {
                    id: nyo
                    icon.source: "Katakana/nyo.png"
                    checked: save.getBool("nyo")
                    onClicked: {save.saveBool("nyo",checked)}
                }
                Label{
                    text: "         nya"
                }
                Label{
                    text: "         nyu"
                }
                Label{
                    text: "         nyo"
                }


                // The "hya" line

                Switch {
                    id: hya
                    icon.source: "Katakana/hya.png"
                    checked: save.getBool("hya")
                    onClicked: {save.saveBool("hya",checked)}
                }
                Switch {
                    id: hyu
                    icon.source: "Katakana/hyu.png"
                    checked: save.getBool("hyu")
                    onClicked: {save.saveBool("hyu",checked)}
                }
                Switch {
                    id: hyo
                    icon.source: "Katakana/hyo.png"
                    checked: save.getBool("hyo")
                    onClicked: {save.saveBool("hyo",checked)}
                }
                Label{
                    text: "         hya"
                }
                Label{
                    text: "         hyu"
                }
                Label{
                    text: "         hyo"
                }


                // The "mya" line

                Switch {
                    id: mya
                    icon.source: "Katakana/mya.png"
                    checked: save.getBool("mya")
                    onClicked: {save.saveBool("mya",checked)}
                }
                Switch {
                    id: myu
                    icon.source: "Katakana/myu.png"
                    checked: save.getBool("myu")
                    onClicked: {save.saveBool("myu",checked)}
                }
                Switch {
                    id: myo
                    icon.source: "Katakana/myo.png"
                    checked: save.getBool("myo")
                    onClicked: {save.saveBool("myo",checked)}
                }
                Label{
                    text: "         mya"
                }
                Label{
                    text: "         myu"
                }
                Label{
                    text: "         myo"
                }


                // The "rya" line

                Switch {
                    id: rya
                    icon.source: "Katakana/rya.png"
                    checked: save.getBool("rya")
                    onClicked: {save.saveBool("rya",checked)}
                }
                Switch {
                    id: ryu
                    icon.source: "Katakana/ryu.png"
                    checked: save.getBool("ryu")
                    onClicked: {save.saveBool("ryu",checked)}
                }
                Switch {
                    id: ryo
                    icon.source: "Katakana/ryo.png"
                    checked: save.getBool("ryo")
                    onClicked: {save.saveBool("ryo",checked)}
                }
                Label{
                    text: "         rya"
                }
                Label{
                    text: "         ryu"
                }
                Label{
                    text: "         ryo"
                }

            } // End grid

            TextSwitch {
                id: switchDigraphsDiacritics
                text: "Digraphs with Diacritics"
            }

            Grid {
                id: digraphsDiacriticsGrid
                columns: 3
                visible: switchDigraphsDiacritics.checked

                // The "gya" line

                Switch {
                    id: gya
                    icon.source: "Katakana/gya.png"
                    checked: save.getBool("gya")
                    onClicked: {save.saveBool("gya",checked)}
                }
                Switch {
                    id: gyu
                    icon.source: "Katakana/gyu.png"
                    checked: save.getBool("gyu")
                    onClicked: {save.saveBool("gyu",checked)}
                }
                Switch {
                    id: gyo
                    icon.source: "Katakana/gyo.png"
                    checked: save.getBool("gyo")
                    onClicked: {save.saveBool("gyo",checked)}
                }
                Label{
                    text: "         gya"
                }
                Label{
                    text: "         gyu"
                }
                Label{
                    text: "         gyo"
                }


                // The "ja" line

                Switch {
                    id: ja
                    icon.source: "Katakana/ja.png"
                    checked: save.getBool("ja")
                    onClicked: {save.saveBool("ja",checked)}
                }
                Switch {
                    id: ju
                    icon.source: "Katakana/ju.png"
                    checked: save.getBool("ju")
                    onClicked: {save.saveBool("ju",checked)}
                }
                Switch {
                    id: jo
                    icon.source: "Katakana/jo.png"
                    checked: save.getBool("jo")
                    onClicked: {save.saveBool("jo",checked)}
                }
                Label{
                    text: "         ja"
                }
                Label{
                    text: "         ju"
                }
                Label{
                    text: "         jo"
                }

                // The "dya" line

                Switch {
                    id: dya
                    icon.source: "Katakana/dya.png"
                    checked: save.getBool("dya")
                    onClicked: {save.saveBool("dya",checked)}
                }
                Switch {
                    id: dyu
                    icon.source: "Katakana/dyu.png"
                    checked: save.getBool("dyu")
                    onClicked: {save.saveBool("dyu",checked)}
                }
                Switch {
                    id: dyo
                    icon.source: "Katakana/dyo.png"
                    checked: save.getBool("dyo")
                    onClicked: {save.saveBool("dyo",checked)}
                }
                Label{
                    text: "         ja(d)"
                }
                Label{
                    text: "         ju(d)"
                }
                Label{
                    text: "         jo(d)"
                }


                // The "bya" line

                Switch {
                    id: bya
                    icon.source: "Katakana/bya.png"
                    checked: save.getBool("bya")
                    onClicked: {save.saveBool("bya",checked)}
                }
                Switch {
                    id: byu
                    icon.source: "Katakana/byu.png"
                    checked: save.getBool("byu")
                    onClicked: {save.saveBool("byu",checked)}
                }
                Switch {
                    id: byo
                    icon.source: "Katakana/byo.png"
                    checked: save.getBool("byo")
                    onClicked: {save.saveBool("byo",checked)}
                }
                Label{
                    text: "         bya"
                }
                Label{
                    text: "         byu"
                }
                Label{
                    text: "         byo"
                }


                // The "pya" line

                Switch {
                    id: pya
                    icon.source: "Katakana/pya.png"
                    checked: save.getBool("pya")
                    onClicked: {save.saveBool("pya",checked)}
                }
                Switch {
                    id: pyu
                    icon.source: "Katakana/pyu.png"
                    checked: save.getBool("pyu")
                    onClicked: {save.saveBool("pyu",checked)}
                }
                Switch {
                    id: pyo
                    icon.source: "Katakana/pyo.png"
                    checked: save.getBool("pyo")
                    onClicked: {save.saveBool("pyo",checked)}
                }
                Label{
                    text: "         pya"
                }
                Label{
                    text: "         pyu"
                }
                Label{
                    text: "         pyo"
                }

            } // End grid
        }
    }
}


