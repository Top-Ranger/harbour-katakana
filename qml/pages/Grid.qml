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

        function startNormalTest() {
            modus = 0
            initialiseTest()
        }

        function startReverseTest() {
            modus = 1
            initialiseTest()
        }

        function startFreeTest() {
            modus = 2
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
                text: "Start Free Test"
                onClicked: startTest.startFreeTest()
            }

            MenuItem {
                text: "Start Reverse Test"
                onClicked: startTest.startReverseTest()
            }

            MenuItem {
                text: "Start Test"
                onClicked: startTest.startNormalTest()
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
                }
                Switch {
                    id: i
                    icon.source: "Katakana/i.png"
                }
                Switch {
                    id: u
                    icon.source: "Katakana/u.png"
                }
                Switch {
                    id: e
                    icon.source: "Katakana/e.png"
                }
                Switch {
                    id: o
                    icon.source: "Katakana/o.png"
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
                }
                Switch {
                    id: ki
                    icon.source: "Katakana/ki.png"
                }
                Switch {
                    id: ku
                    icon.source: "Katakana/ku.png"
                }
                Switch {
                    id: ke
                    icon.source: "Katakana/ke.png"
                }
                Switch {
                    id: ko
                    icon.source: "Katakana/ko.png"
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
                }
                Switch {
                    id: shi
                    icon.source: "Katakana/shi.png"
                }
                Switch {
                    id: su
                    icon.source: "Katakana/su.png"
                }
                Switch {
                    id: se
                    icon.source: "Katakana/se.png"
                }
                Switch {
                    id: so
                    icon.source: "Katakana/so.png"
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
                }
                Switch {
                    id: chi
                    icon.source: "Katakana/chi.png"
                }
                Switch {
                    id: tsu
                    icon.source: "Katakana/tsu.png"
                }
                Switch {
                    id: te
                    icon.source: "Katakana/te.png"
                }
                Switch {
                    id: to
                    icon.source: "Katakana/to.png"
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
                }
                Switch {
                    id: ni
                    icon.source: "Katakana/ni.png"
                }
                Switch {
                    id: nu
                    icon.source: "Katakana/nu.png"
                }
                Switch {
                    id: ne
                    icon.source: "Katakana/ne.png"
                }
                Switch {
                    id: no
                    icon.source: "Katakana/no.png"
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
                }
                Switch {
                    id: hi
                    icon.source: "Katakana/hi.png"
                }
                Switch {
                    id: fu
                    icon.source: "Katakana/fu.png"
                }
                Switch {
                    id: he
                    icon.source: "Katakana/he.png"
                }
                Switch {
                    id: ho
                    icon.source: "Katakana/ho.png"
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
                }
                Switch {
                    id: mi
                    icon.source: "Katakana/mi.png"
                }
                Switch {
                    id: mu
                    icon.source: "Katakana/mu.png"
                }
                Switch {
                    id: me
                    icon.source: "Katakana/me.png"
                }
                Switch {
                    id: mo
                    icon.source: "Katakana/mo.png"
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
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: yu
                    icon.source: "Katakana/yu.png"
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: yo
                    icon.source: "Katakana/yo.png"
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
                }
                Switch {
                    id: ri
                    icon.source: "Katakana/ri.png"
                }
                Switch {
                    id: ru
                    icon.source: "Katakana/ru.png"
                }
                Switch {
                    id: re
                    icon.source: "Katakana/re.png"
                }
                Switch {
                    id: ro
                    icon.source: "Katakana/ro.png"
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
                }
                Switch {
                    id: wi
                    icon.source: "Katakana/wi.png"
                }
                Image {
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: we
                    icon.source: "Katakana/we.png"
                }
                Switch {
                    id: wo
                    icon.source: "Katakana/wo.png"
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
                }
                Switch {
                    id: gi
                    icon.source: "Katakana/gi.png"
                }
                Switch {
                    id: gu
                    icon.source: "Katakana/gu.png"
                }
                Switch {
                    id: ge
                    icon.source: "Katakana/ge.png"
                }
                Switch {
                    id: go
                    icon.source: "Katakana/go.png"
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
                }
                Switch {
                    id: ji
                    icon.source: "Katakana/ji.png"
                }
                Switch {
                    id: zu
                    icon.source: "Katakana/zu.png"
                }
                Switch {
                    id: ze
                    icon.source: "Katakana/ze.png"
                }
                Switch {
                    id: zo
                    icon.source: "Katakana/zo.png"
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
                }
                Switch {
                    id: di
                    icon.source: "Katakana/di.png"
                }
                Switch {
                    id: du
                    icon.source: "Katakana/du.png"
                }
                Switch {
                    id: de
                    icon.source: "Katakana/de.png"
                }
                Switch {
                    id: doswitch
                    icon.source: "Katakana/do.png"
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
                }
                Switch {
                    id: bi
                    icon.source: "Katakana/bi.png"
                }
                Switch {
                    id: bu
                    icon.source: "Katakana/bu.png"
                }
                Switch {
                    id: be
                    icon.source: "Katakana/be.png"
                }
                Switch {
                    id: bo
                    icon.source: "Katakana/bo.png"
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
                }
                Switch {
                    id: pi
                    icon.source: "Katakana/pi.png"
                }
                Switch {
                    id: pu
                    icon.source: "Katakana/pu.png"
                }
                Switch {
                    id: pe
                    icon.source: "Katakana/pe.png"
                }
                Switch {
                    id: po
                    icon.source: "Katakana/po.png"
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
                }
                Switch {
                    id: kyu
                    icon.source: "Katakana/kyu.png"
                }
                Switch {
                    id: kyo
                    icon.source: "Katakana/kyo.png"
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
                }
                Switch {
                    id: shu
                    icon.source: "Katakana/shu.png"
                }
                Switch {
                    id: sho
                    icon.source: "Katakana/sho.png"
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
                }
                Switch {
                    id: chu
                    icon.source: "Katakana/chu.png"
                }
                Switch {
                    id: cho
                    icon.source: "Katakana/cho.png"
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
                }
                Switch {
                    id: nyu
                    icon.source: "Katakana/nyu.png"
                }
                Switch {
                    id: nyo
                    icon.source: "Katakana/nyo.png"
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
                }
                Switch {
                    id: hyu
                    icon.source: "Katakana/hyu.png"
                }
                Switch {
                    id: hyo
                    icon.source: "Katakana/hyo.png"
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
                }
                Switch {
                    id: myu
                    icon.source: "Katakana/myu.png"
                }
                Switch {
                    id: myo
                    icon.source: "Katakana/myo.png"
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
                }
                Switch {
                    id: ryu
                    icon.source: "Katakana/ryu.png"
                }
                Switch {
                    id: ryo
                    icon.source: "Katakana/ryo.png"
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
                }
                Switch {
                    id: gyu
                    icon.source: "Katakana/gyu.png"
                }
                Switch {
                    id: gyo
                    icon.source: "Katakana/gyo.png"
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
                }
                Switch {
                    id: ju
                    icon.source: "Katakana/ju.png"
                }
                Switch {
                    id: jo
                    icon.source: "Katakana/jo.png"
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
                }
                Switch {
                    id: dyu
                    icon.source: "Katakana/dyu.png"
                }
                Switch {
                    id: dyo
                    icon.source: "Katakana/dyo.png"
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
                }
                Switch {
                    id: byu
                    icon.source: "Katakana/byu.png"
                }
                Switch {
                    id: byo
                    icon.source: "Katakana/byo.png"
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
                }
                Switch {
                    id: pyu
                    icon.source: "Katakana/pyu.png"
                }
                Switch {
                    id: pyo
                    icon.source: "Katakana/pyo.png"
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


