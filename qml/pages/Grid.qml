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

        function startTest() {
            modus = selectModus.currentIndex
            initialiseTest()
        }

        function setMonographs(modus) {

            a.checked = modus
            save.saveBool("a",modus)

            i.checked = modus
            save.saveBool("i",modus)

            u.checked = modus
            save.saveBool("u",modus)

            e.checked = modus
            save.saveBool("e",modus)

            o.checked = modus
            save.saveBool("o",modus)

            ka.checked = modus
            save.saveBool("ka",modus)

            ki.checked = modus
            save.saveBool("ki",modus)

            ku.checked = modus
            save.saveBool("ku",modus)

            ke.checked = modus
            save.saveBool("ke",modus)

            ko.checked = modus
            save.saveBool("ko",modus)

            sa.checked = modus
            save.saveBool("sa",modus)

            shi.checked = modus
            save.saveBool("shi",modus)

            su.checked = modus
            save.saveBool("su",modus)

            se.checked = modus
            save.saveBool("se",modus)

            so.checked = modus
            save.saveBool("so",modus)

            ta.checked = modus
            save.saveBool("ta",modus)

            chi.checked = modus
            save.saveBool("chi",modus)

            tsu.checked = modus
            save.saveBool("tsu",modus)

            te.checked = modus
            save.saveBool("te",modus)

            to.checked = modus
            save.saveBool("to",modus)

            na.checked = modus
            save.saveBool("na",modus)

            ni.checked = modus
            save.saveBool("ni",modus)

            nu.checked = modus
            save.saveBool("nu",modus)

            ne.checked = modus
            save.saveBool("ne",modus)

            no.checked = modus
            save.saveBool("no",modus)

            ha.checked = modus
            save.saveBool("ha",modus)

            hi.checked = modus
            save.saveBool("hi",modus)

            fu.checked = modus
            save.saveBool("fu",modus)

            he.checked = modus
            save.saveBool("he",modus)

            ho.checked = modus
            save.saveBool("ho",modus)

            ma.checked = modus
            save.saveBool("ma",modus)

            mi.checked = modus
            save.saveBool("mi",modus)

            mu.checked = modus
            save.saveBool("mu",modus)

            me.checked = modus
            save.saveBool("me",modus)

            mo.checked = modus
            save.saveBool("mo",modus)

            ya.checked = modus
            save.saveBool("ya",modus)

            yu.checked = modus
            save.saveBool("yu",modus)

            yo.checked = modus
            save.saveBool("yo",modus)

            ra.checked = modus
            save.saveBool("ra",modus)

            ri.checked = modus
            save.saveBool("ri",modus)

            ru.checked = modus
            save.saveBool("ru",modus)

            re.checked = modus
            save.saveBool("re",modus)

            ro.checked = modus
            save.saveBool("ro",modus)

            wa.checked = modus
            save.saveBool("wa",modus)

            wi.checked = modus
            save.saveBool("wi",modus)

            we.checked = modus
            save.saveBool("we",modus)

            wo.checked = modus
            save.saveBool("wo",modus)

            n.checked = modus
            save.saveBool("n",modus)
        }

        function setDiacritics(modus) {

            ga.checked = modus
            save.saveBool("ga",modus)

            gi.checked = modus
            save.saveBool("gi",modus)

            gu.checked = modus
            save.saveBool("gu",modus)

            ge.checked = modus
            save.saveBool("ge",modus)

            go.checked = modus
            save.saveBool("go",modus)

            za.checked = modus
            save.saveBool("za",modus)

            ji.checked = modus
            save.saveBool("ji",modus)

            zu.checked = modus
            save.saveBool("zu",modus)

            ze.checked = modus
            save.saveBool("ze",modus)

            zo.checked = modus
            save.saveBool("zo",modus)

            da.checked = modus
            save.saveBool("da",modus)

            di.checked = modus
            save.saveBool("di",modus)

            du.checked = modus
            save.saveBool("du",modus)

            de.checked = modus
            save.saveBool("de",modus)

            doswitch.checked = modus
            save.saveBool("do",modus)

            ba.checked = modus
            save.saveBool("ba",modus)

            bi.checked = modus
            save.saveBool("bi",modus)

            bu.checked = modus
            save.saveBool("bu",modus)

            be.checked = modus
            save.saveBool("be",modus)

            bo.checked = modus
            save.saveBool("bo",modus)

            pa.checked = modus
            save.saveBool("pa",modus)

            pi.checked = modus
            save.saveBool("pi",modus)

            pu.checked = modus
            save.saveBool("pu",modus)

            pe.checked = modus
            save.saveBool("pe",modus)

            po.checked = modus
            save.saveBool("po",modus)
        }

        function setDigraphs(modus) {

            kya.checked = modus
            save.saveBool("kya",modus)

            kyu.checked = modus
            save.saveBool("kyu",modus)

            kyo.checked = modus
            save.saveBool("kyo",modus)

            sha.checked = modus
            save.saveBool("sha",modus)

            shu.checked = modus
            save.saveBool("shu",modus)

            sho.checked = modus
            save.saveBool("sho",modus)

            cha.checked = modus
            save.saveBool("cha",modus)

            chu.checked = modus
            save.saveBool("chu",modus)

            cho.checked = modus
            save.saveBool("cho",modus)

            nya.checked = modus
            save.saveBool("nya",modus)

            nyu.checked = modus
            save.saveBool("nyu",modus)

            nyo.checked = modus
            save.saveBool("nyo",modus)

            hya.checked = modus
            save.saveBool("hya",modus)

            hyu.checked = modus
            save.saveBool("hyu",modus)

            hyo.checked = modus
            save.saveBool("hyo",modus)

            mya.checked = modus
            save.saveBool("mya",modus)

            myu.checked = modus
            save.saveBool("myu",modus)

            myo.checked = modus
            save.saveBool("myo",modus)

            rya.checked = modus
            save.saveBool("rya",modus)

            ryu.checked = modus
            save.saveBool("ryu",modus)

            ryo.checked = modus
            save.saveBool("ryo",modus)
        }

        function setDigraphsDiacritics(modus) {

            gya.checked = modus
            save.saveBool("gya",modus)

            gyu.checked = modus
            save.saveBool("gyu",modus)

            gyo.checked = modus
            save.saveBool("gyo",modus)

            ja.checked = modus
            save.saveBool("ja",modus)

            ju.checked = modus
            save.saveBool("ju",modus)

            jo.checked = modus
            save.saveBool("",modus)

            dya.checked = modus
            save.saveBool("dya",modus)

            dyu.checked = modus
            save.saveBool("dyu",modus)

            dyo.checked = modus
            save.saveBool("dyo",modus)

            bya.checked = modus
            save.saveBool("bya",modus)

            byu.checked = modus
            save.saveBool("byu",modus)

            byo.checked = modus
            save.saveBool("byo",modus)

            pya.checked = modus
            save.saveBool("pya",modus)

            pyu.checked = modus
            save.saveBool("pyu",modus)

            pyo.checked = modus
            save.saveBool("pyo",modus)
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
                text: "Settings"
                onClicked: pageStack.push(Qt.resolvedUrl("Settings.qml"))
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

            width: parent.width

            anchors {
                left: parent.left
                right: parent.right
                margins: Theme.paddingLarge
            }

            RemorsePopup {
                id: remorsePopup
            }

            PageHeader {
                title: "Katakana"
            }

            VerticalScrollDecorator {}

            Label {
                id: errorlabel
                text: "You need at least six Katakana selected"
                color: Theme.highlightColor
                visible: startTest.showerror
            }

            ComboBox {
                x: 0 - parent.x
                id: selectModus
                width: grid.width
                label: "Test mode:"
                currentIndex: save.getInt("Modus")

                onCurrentIndexChanged: save.saveInt("Modus",currentIndex)

                menu: ContextMenu {
                    MenuItem { text: "Normal Test" }
                    MenuItem { text: "Reverse Test" }
                    MenuItem { text: "Free Test"}
                }
            }

            Row {
                Button {
                    text: "Enable all\nKatakana"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Enable all Katakana", function() { startTest.setMonographs(true); startTest.setDigraphs(true); startTest.setDiacritics(true); startTest.setDigraphsDiacritics(true) }, 3000 )
                }

                Button {
                    text: "Disable all\nKatakana"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Disable all Katakana", function() { startTest.setMonographs(false); startTest.setDigraphs(false); startTest.setDiacritics(false); startTest.setDigraphsDiacritics(false) }, 3000 )
                }
            }

            TextSwitch {
                id: switchMonographs
                width: parent.width
                text: "Monographs"
            }

            Row {
                visible: switchMonographs.checked

                Button {
                    text: "Enable all\nMonographs"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Enable all Monographs", function() { startTest.setMonographs(true) }, 3000 )
                }

                Button {
                    text: "Disable all\nMonographs"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Disable all Monographs", function() { startTest.setMonographs(false) }, 3000 )
                }
            }

            Grid {
                id: monographsGrid
                width: parent.width
                columns: 5
                visible: switchMonographs.checked

                // The "a" line

                Switch {
                    id: a
                    width: parent.width / 5
                    icon.source: "Katakana/a.png"
                    checked: save.getBool("a")
                    onClicked: {save.saveBool("a",checked)}
                }
                Switch {
                    id: i
                    width: parent.width / 5
                    icon.source: "Katakana/i.png"
                    checked: save.getBool("i")
                    onClicked: {save.saveBool("i",checked)}
                }
                Switch {
                    id: u
                    width: parent.width / 5
                    icon.source: "Katakana/u.png"
                    checked: save.getBool("u")
                    onClicked: {save.saveBool("u",checked)}
                }
                Switch {
                    id: e
                    width: parent.width / 5
                    icon.source: "Katakana/e.png"
                    checked: save.getBool("e")
                    onClicked: {save.saveBool("e",checked)}
                }
                Switch {
                    id: o
                    width: parent.width / 5
                    icon.source: "Katakana/o.png"
                    checked: save.getBool("o")
                    onClicked: {save.saveBool("o",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     a"
                }
                Label{
                    width: parent.width / 5
                    text: "     i"
                }
                Label{
                    width: parent.width / 5
                    text: "     u"
                }
                Label{
                    width: parent.width / 5
                    text: "     e"
                }
                Label{
                    width: parent.width / 5
                    text: "     o"
                }

                // The "ka" line

                Switch {
                    id: ka
                    width: parent.width / 5
                    icon.source: "Katakana/ka.png"
                    checked: save.getBool("ka")
                    onClicked: {save.saveBool("ka",checked)}
                }
                Switch {
                    id: ki
                    width: parent.width / 5
                    icon.source: "Katakana/ki.png"
                    checked: save.getBool("ki")
                    onClicked: {save.saveBool("ki",checked)}
                }
                Switch {
                    id: ku
                    width: parent.width / 5
                    icon.source: "Katakana/ku.png"
                    checked: save.getBool("ku")
                    onClicked: {save.saveBool("ku",checked)}
                }
                Switch {
                    id: ke
                    width: parent.width / 5
                    icon.source: "Katakana/ke.png"
                    checked: save.getBool("ke")
                    onClicked: {save.saveBool("ke",checked)}
                }
                Switch {
                    id: ko
                    width: parent.width / 5
                    icon.source: "Katakana/ko.png"
                    checked: save.getBool("ko")
                    onClicked: {save.saveBool("ko",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ka"
                }
                Label{
                    width: parent.width / 5
                    text: "     ki"
                }
                Label{
                    width: parent.width / 5
                    text: "     ku"
                }
                Label{
                    width: parent.width / 5
                    text: "     ke"
                }
                Label{
                    width: parent.width / 5
                    text: "     ko"
                }

                // The "a" line

                Switch {
                    id: sa
                    width: parent.width / 5
                    icon.source: "Katakana/sa.png"
                    checked: save.getBool("sa")
                    onClicked: {save.saveBool("sa",checked)}
                }
                Switch {
                    id: shi
                    width: parent.width / 5
                    icon.source: "Katakana/shi.png"
                    checked: save.getBool("shi")
                    onClicked: {save.saveBool("shi",checked)}
                }
                Switch {
                    id: su
                    width: parent.width / 5
                    icon.source: "Katakana/su.png"
                    checked: save.getBool("su")
                    onClicked: {save.saveBool("su",checked)}
                }
                Switch {
                    id: se
                    width: parent.width / 5
                    icon.source: "Katakana/se.png"
                    checked: save.getBool("se")
                    onClicked: {save.saveBool("se",checked)}
                }
                Switch {
                    id: so
                    width: parent.width / 5
                    icon.source: "Katakana/so.png"
                    checked: save.getBool("so")
                    onClicked: {save.saveBool("so",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     sa"
                }
                Label{
                    width: parent.width / 5
                    text: "     shi"
                }
                Label{
                    width: parent.width / 5
                    text: "     su"
                }
                Label{
                    width: parent.width / 5
                    text: "     se"
                }
                Label{
                    width: parent.width / 5
                    text: "     so"
                }


                // The "ta" line

                Switch {
                    id: ta
                    width: parent.width / 5
                    icon.source: "Katakana/ta.png"
                    checked: save.getBool("ta")
                    onClicked: {save.saveBool("ta",checked)}
                }
                Switch {
                    id: chi
                    width: parent.width / 5
                    icon.source: "Katakana/chi.png"
                    checked: save.getBool("chi")
                    onClicked: {save.saveBool("chi",checked)}
                }
                Switch {
                    id: tsu
                    width: parent.width / 5
                    icon.source: "Katakana/tsu.png"
                    checked: save.getBool("tsu")
                    onClicked: {save.saveBool("tsu",checked)}
                }
                Switch {
                    id: te
                    width: parent.width / 5
                    icon.source: "Katakana/te.png"
                    checked: save.getBool("te")
                    onClicked: {save.saveBool("te",checked)}
                }
                Switch {
                    id: to
                    width: parent.width / 5
                    icon.source: "Katakana/to.png"
                    checked: save.getBool("to")
                    onClicked: {save.saveBool("to",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ta"
                }
                Label{
                    width: parent.width / 5
                    text: "     chi"
                }
                Label{
                    width: parent.width / 5
                    text: "     tsu"
                }
                Label{
                    width: parent.width / 5
                    text: "     te"
                }
                Label{
                    width: parent.width / 5
                    text: "     to"
                }


                // The "na" line

                Switch {
                    id: na
                    width: parent.width / 5
                    icon.source: "Katakana/na.png"
                    checked: save.getBool("na")
                    onClicked: {save.saveBool("na",checked)}
                }
                Switch {
                    id: ni
                    width: parent.width / 5
                    icon.source: "Katakana/ni.png"
                    checked: save.getBool("ni")
                    onClicked: {save.saveBool("ni",checked)}
                }
                Switch {
                    id: nu
                    width: parent.width / 5
                    icon.source: "Katakana/nu.png"
                    checked: save.getBool("nu")
                    onClicked: {save.saveBool("nu",checked)}
                }
                Switch {
                    id: ne
                    width: parent.width / 5
                    icon.source: "Katakana/ne.png"
                    checked: save.getBool("ne")
                    onClicked: {save.saveBool("ne",checked)}
                }
                Switch {
                    id: no
                    width: parent.width / 5
                    icon.source: "Katakana/no.png"
                    checked: save.getBool("no")
                    onClicked: {save.saveBool("no",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     na"
                }
                Label{
                    width: parent.width / 5
                    text: "     ni"
                }
                Label{
                    width: parent.width / 5
                    text: "     nu"
                }
                Label{
                    width: parent.width / 5
                    text: "     ne"
                }
                Label{
                    width: parent.width / 5
                    text: "     no"
                }

                // The "ha" line

                Switch {
                    id: ha
                    width: parent.width / 5
                    icon.source: "Katakana/ha.png"
                    checked: save.getBool("ha")
                    onClicked: {save.saveBool("ha",checked)}
                }
                Switch {
                    id: hi
                    width: parent.width / 5
                    icon.source: "Katakana/hi.png"
                    checked: save.getBool("hi")
                    onClicked: {save.saveBool("hi",checked)}
                }
                Switch {
                    id: fu
                    width: parent.width / 5
                    icon.source: "Katakana/fu.png"
                    checked: save.getBool("fu")
                    onClicked: {save.saveBool("fu",checked)}
                }
                Switch {
                    id: he
                    width: parent.width / 5
                    icon.source: "Katakana/he.png"
                    checked: save.getBool("he")
                    onClicked: {save.saveBool("he",checked)}
                }
                Switch {
                    id: ho
                    width: parent.width / 5
                    icon.source: "Katakana/ho.png"
                    checked: save.getBool("ho")
                    onClicked: {save.saveBool("ho",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ha"
                }
                Label{
                    width: parent.width / 5
                    text: "     hi"
                }
                Label{
                    width: parent.width / 5
                    text: "     fu"
                }
                Label{
                    width: parent.width / 5
                    text: "     he"
                }
                Label{
                    width: parent.width / 5
                    text: "     ho"
                }

                // The "ma" line

                Switch {
                    id: ma
                    width: parent.width / 5
                    icon.source: "Katakana/ma.png"
                    checked: save.getBool("ma")
                    onClicked: {save.saveBool("ma",checked)}
                }
                Switch {
                    id: mi
                    width: parent.width / 5
                    icon.source: "Katakana/mi.png"
                    checked: save.getBool("mi")
                    onClicked: {save.saveBool("mi",checked)}
                }
                Switch {
                    id: mu
                    width: parent.width / 5
                    icon.source: "Katakana/mu.png"
                    checked: save.getBool("mu")
                    onClicked: {save.saveBool("mu",checked)}
                }
                Switch {
                    id: me
                    width: parent.width / 5
                    icon.source: "Katakana/me.png"
                    checked: save.getBool("me")
                    onClicked: {save.saveBool("me",checked)}
                }
                Switch {
                    id: mo
                    width: parent.width / 5
                    icon.source: "Katakana/mo.png"
                    checked: save.getBool("mo")
                    onClicked: {save.saveBool("mo",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ma"
                }
                Label{
                    width: parent.width / 5
                    text: "     mi"
                }
                Label{
                    width: parent.width / 5
                    text: "     mu"
                }
                Label{
                    width: parent.width / 5
                    text: "     me"
                }
                Label{
                    width: parent.width / 5
                    text: "     mo"
                }


                // The "ya" line

                Switch {
                    id: ya
                    width: parent.width / 5
                    icon.source: "Katakana/ya.png"
                    checked: save.getBool("ya")
                    onClicked: {save.saveBool("ya",checked)}
                }
                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: yu
                    width: parent.width / 5
                    icon.source: "Katakana/yu.png"
                    checked: save.getBool("yu")
                    onClicked: {save.saveBool("yu",checked)}
                }
                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: yo
                    width: parent.width / 5
                    icon.source: "Katakana/yo.png"
                    checked: save.getBool("yo")
                    onClicked: {save.saveBool("yo",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ya"
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "     yu"
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "     yo"
                }

                // The "ra" line

                Switch {
                    id: ra
                    width: parent.width / 5
                    icon.source: "Katakana/ra.png"
                    checked: save.getBool("ra")
                    onClicked: {save.saveBool("ra",checked)}
                }
                Switch {
                    id: ri
                    width: parent.width / 5
                    icon.source: "Katakana/ri.png"
                    checked: save.getBool("ri")
                    onClicked: {save.saveBool("ri",checked)}
                }
                Switch {
                    id: ru
                    width: parent.width / 5
                    icon.source: "Katakana/ru.png"
                    checked: save.getBool("ru")
                    onClicked: {save.saveBool("ru",checked)}
                }
                Switch {
                    id: re
                    width: parent.width / 5
                    icon.source: "Katakana/re.png"
                    checked: save.getBool("re")
                    onClicked: {save.saveBool("re",checked)}
                }
                Switch {
                    id: ro
                    width: parent.width / 5
                    icon.source: "Katakana/ro.png"
                    checked: save.getBool("ro")
                    onClicked: {save.saveBool("ro",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ra"
                }
                Label{
                    width: parent.width / 5
                    text: "     ri"
                }
                Label{
                    width: parent.width / 5
                    text: "     ru"
                }
                Label{
                    width: parent.width / 5
                    text: "     re"
                }
                Label{
                    width: parent.width / 5
                    text: "     ro"
                }

                // The "wa" line

                Switch {
                    id: wa
                    width: parent.width / 5
                    icon.source: "Katakana/wa.png"
                    checked: save.getBool("wa")
                    onClicked: {save.saveBool("wa",checked)}
                }
                Switch {
                    id: wi
                    width: parent.width / 5
                    icon.source: "Katakana/wi.png"
                    checked: save.getBool("wi")
                    onClicked: {save.saveBool("wi",checked)}
                }
                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: we
                    width: parent.width / 5
                    icon.source: "Katakana/we.png"
                    checked: save.getBool("we")
                    onClicked: {save.saveBool("we",checked)}
                }
                Switch {
                    id: wo
                    width: parent.width / 5
                    icon.source: "Katakana/wo.png"
                    checked: save.getBool("wo")
                    onClicked: {save.saveBool("wo",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     wa"
                }
                Label{
                    width: parent.width / 5
                    text: "     wi"
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "     we"
                }
                Label{
                    width: parent.width / 5
                    text: "     wo"
                }

                // "n"

                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Image {
                    width: parent.width / 5
                    source: "Katakana/empty.png"
                }
                Switch {
                    id: n
                    width: parent.width / 5
                    icon.source: "Katakana/n.png"
                    checked: save.getBool("n")
                    onClicked: {save.saveBool("n",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "      "
                }
                Label{
                    width: parent.width / 5
                    text: "     n"
                }
            } // End grid

            TextSwitch {
                id: switchDiacritics
                width: parent.width
                text: "Diacritics"
            }

            Row {
                visible: switchDiacritics.checked

                Button {
                    text: "Enable all\nDiacritics"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Enable all Diacritics", function() { startTest.setDiacritics(true) }, 3000 )
                }

                Button {
                    text: "Disable all\nDiacritics"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Disable all Diacritics", function() { startTest.setDiacritics(false) }, 3000 )
                }
            }

            Grid {
                id: diacriticsGrid
                width: parent.width
                columns: 5
                visible: switchDiacritics.checked

                // The "ga" line

                Switch {
                    id: ga
                    width: parent.width / 5
                    icon.source: "Katakana/ga.png"
                    checked: save.getBool("ga")
                    onClicked: {save.saveBool("ga",checked)}
                }
                Switch {
                    id: gi
                    width: parent.width / 5
                    icon.source: "Katakana/gi.png"
                    checked: save.getBool("gi")
                    onClicked: {save.saveBool("gi",checked)}
                }
                Switch {
                    id: gu
                    width: parent.width / 5
                    icon.source: "Katakana/gu.png"
                    checked: save.getBool("gu")
                    onClicked: {save.saveBool("gu",checked)}
                }
                Switch {
                    id: ge
                    width: parent.width / 5
                    icon.source: "Katakana/ge.png"
                    checked: save.getBool("ge")
                    onClicked: {save.saveBool("ge",checked)}
                }
                Switch {
                    id: go
                    width: parent.width / 5
                    icon.source: "Katakana/go.png"
                    checked: save.getBool("go")
                    onClicked: {save.saveBool("go",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ga"
                }
                Label{
                    width: parent.width / 5
                    text: "     gi"
                }
                Label{
                    width: parent.width / 5
                    text: "     gu"
                }
                Label{
                    width: parent.width / 5
                    text: "     ge"
                }
                Label{
                    width: parent.width / 5
                    text: "     go"
                }


                // The "a" line

                Switch {
                    id: za
                    width: parent.width / 5
                    icon.source: "Katakana/za.png"
                    checked: save.getBool("za")
                    onClicked: {save.saveBool("za",checked)}
                }
                Switch {
                    id: ji
                    width: parent.width / 5
                    icon.source: "Katakana/ji.png"
                    checked: save.getBool("ji")
                    onClicked: {save.saveBool("ji",checked)}
                }
                Switch {
                    id: zu
                    width: parent.width / 5
                    icon.source: "Katakana/zu.png"
                    checked: save.getBool("zu")
                    onClicked: {save.saveBool("zu",checked)}
                }
                Switch {
                    id: ze
                    width: parent.width / 5
                    icon.source: "Katakana/ze.png"
                    checked: save.getBool("ze")
                    onClicked: {save.saveBool("ze",checked)}
                }
                Switch {
                    id: zo
                    width: parent.width / 5
                    icon.source: "Katakana/zo.png"
                    checked: save.getBool("zo")
                    onClicked: {save.saveBool("zo",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     za"
                }
                Label{
                    width: parent.width / 5
                    text: "     ji/zi"
                }
                Label{
                    width: parent.width / 5
                    text: "     zu"
                }
                Label{
                    width: parent.width / 5
                    text: "     ze"
                }
                Label{
                    width: parent.width / 5
                    text: "     zo"
                }


                // The "da" line

                Switch {
                    id: da
                    width: parent.width / 5
                    icon.source: "Katakana/da.png"
                    checked: save.getBool("da")
                    onClicked: {save.saveBool("da",checked)}
                }
                Switch {
                    id: di
                    width: parent.width / 5
                    icon.source: "Katakana/di.png"
                    checked: save.getBool("di")
                    onClicked: {save.saveBool("di",checked)}
                }
                Switch {
                    id: du
                    width: parent.width / 5
                    icon.source: "Katakana/du.png"
                    checked: save.getBool("du")
                    onClicked: {save.saveBool("du",checked)}
                }
                Switch {
                    id: de
                    width: parent.width / 5
                    icon.source: "Katakana/de.png"
                    checked: save.getBool("de")
                    onClicked: {save.saveBool("de",checked)}
                }
                Switch {
                    id: doswitch
                    width: parent.width / 5
                    icon.source: "Katakana/do.png"
                    checked: save.getBool("do")
                    onClicked: {save.saveBool("do",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     da"
                }
                Label{
                    width: parent.width / 5
                    text: "     ji/di"
                }
                Label{
                    width: parent.width / 5
                    text: "     zu/du"
                }
                Label{
                    width: parent.width / 5
                    text: "     de"
                }
                Label{
                    width: parent.width / 5
                    text: "     do"
                }

                // The "a" line

                Switch {
                    id: ba
                    width: parent.width / 5
                    icon.source: "Katakana/ba.png"
                    checked: save.getBool("ba")
                    onClicked: {save.saveBool("ba",checked)}
                }
                Switch {
                    id: bi
                    width: parent.width / 5
                    icon.source: "Katakana/bi.png"
                    checked: save.getBool("bi")
                    onClicked: {save.saveBool("bi",checked)}
                }
                Switch {
                    id: bu
                    width: parent.width / 5
                    icon.source: "Katakana/bu.png"
                    checked: save.getBool("bu")
                    onClicked: {save.saveBool("bu",checked)}
                }
                Switch {
                    id: be
                    width: parent.width / 5
                    icon.source: "Katakana/be.png"
                    checked: save.getBool("be")
                    onClicked: {save.saveBool("be",checked)}
                }
                Switch {
                    id: bo
                    width: parent.width / 5
                    icon.source: "Katakana/bo.png"
                    checked: save.getBool("bo")
                    onClicked: {save.saveBool("bo",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     ba"
                }
                Label{
                    width: parent.width / 5
                    text: "     bi"
                }
                Label{
                    width: parent.width / 5
                    text: "     bu"
                }
                Label{
                    width: parent.width / 5
                    text: "     be"
                }
                Label{
                    width: parent.width / 5
                    text: "     bo"
                }


                // The "a" line

                Switch {
                    id: pa
                    width: parent.width / 5
                    icon.source: "Katakana/pa.png"
                    checked: save.getBool("pa")
                    onClicked: {save.saveBool("pa",checked)}
                }
                Switch {
                    id: pi
                    width: parent.width / 5
                    icon.source: "Katakana/pi.png"
                    checked: save.getBool("pi")
                    onClicked: {save.saveBool("pi",checked)}
                }
                Switch {
                    id: pu
                    width: parent.width / 5
                    icon.source: "Katakana/pu.png"
                    checked: save.getBool("pu")
                    onClicked: {save.saveBool("pu",checked)}
                }
                Switch {
                    id: pe
                    width: parent.width / 5
                    icon.source: "Katakana/pe.png"
                    checked: save.getBool("pe")
                    onClicked: {save.saveBool("pe",checked)}
                }
                Switch {
                    id: po
                    width: parent.width / 5
                    icon.source: "Katakana/po.png"
                    checked: save.getBool("po")
                    onClicked: {save.saveBool("po",checked)}
                }
                Label{
                    width: parent.width / 5
                    text: "     pa"
                }
                Label{
                    width: parent.width / 5
                    text: "     pi"
                }
                Label{
                    width: parent.width / 5
                    text: "     pu"
                }
                Label{
                    width: parent.width / 5
                    text: "     pe"
                }
                Label{
                    width: parent.width / 5
                    text: "     po"
                }

            } // End grid

            TextSwitch {
                id: switchDigraphs
                width: parent.width
                text: "Digraphs"
            }

            Row {
                visible: switchDigraphs.checked

                Button {
                    text: "Enable all\nDigraphs"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Enable all Digraphs", function() { startTest.setDigraphs(true) }, 3000 )
                }

                Button {
                    text: "Disable all\nDigraphs"
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Disable all Digraphs", function() { startTest.setDigraphs(false) }, 3000 )
                }
            }

            Grid {
                id: digraphsGrid
                width: parent.width
                columns: 3
                visible: switchDigraphs.checked

                // The "kya" line

                Switch {
                    id: kya
                    width: parent.width / 3
                    icon.source: "Katakana/kya.png"
                    checked: save.getBool("kya")
                    onClicked: {save.saveBool("kya",checked)}
                }
                Switch {
                    id: kyu
                    width: parent.width / 3
                    icon.source: "Katakana/kyu.png"
                    checked: save.getBool("kyu")
                    onClicked: {save.saveBool("kyu",checked)}
                }
                Switch {
                    id: kyo
                    width: parent.width / 3
                    icon.source: "Katakana/kyo.png"
                    checked: save.getBool("kyo")
                    onClicked: {save.saveBool("kyo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         kya"
                }
                Label{
                    width: parent.width / 3
                    text: "         kyu"
                }
                Label{
                    width: parent.width / 3
                    text: "         kyo"
                }


                // The "sha" line

                Switch {
                    id: sha
                    width: parent.width / 3
                    icon.source: "Katakana/sha.png"
                    checked: save.getBool("sha")
                    onClicked: {save.saveBool("sha",checked)}
                }
                Switch {
                    id: shu
                    width: parent.width / 3
                    icon.source: "Katakana/shu.png"
                    checked: save.getBool("shu")
                    onClicked: {save.saveBool("shu",checked)}
                }
                Switch {
                    id: sho
                    width: parent.width / 3
                    icon.source: "Katakana/sho.png"
                    checked: save.getBool("sho")
                    onClicked: {save.saveBool("sho",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         sha"
                }
                Label{
                    width: parent.width / 3
                    text: "         shu"
                }
                Label{
                    width: parent.width / 3
                    text: "         sho"
                }


                // The "cha" line

                Switch {
                    id: cha
                    width: parent.width / 3
                    icon.source: "Katakana/cha.png"
                    checked: save.getBool("cha")
                    onClicked: {save.saveBool("cha",checked)}
                }
                Switch {
                    id: chu
                    width: parent.width / 3
                    icon.source: "Katakana/chu.png"
                    checked: save.getBool("chu")
                    onClicked: {save.saveBool("chu",checked)}
                }
                Switch {
                    id: cho
                    width: parent.width / 3
                    icon.source: "Katakana/cho.png"
                    checked: save.getBool("cho")
                    onClicked: {save.saveBool("cho",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         cha"
                }
                Label{
                    width: parent.width / 3
                    text: "         chu"
                }
                Label{
                    width: parent.width / 3
                    text: "         cho"
                }


                // The "nya" line

                Switch {
                    id: nya
                    width: parent.width / 3
                    icon.source: "Katakana/nya.png"
                    checked: save.getBool("nya")
                    onClicked: {save.saveBool("nya",checked)}
                }
                Switch {
                    id: nyu
                    width: parent.width / 3
                    icon.source: "Katakana/nyu.png"
                    checked: save.getBool("nyu")
                    onClicked: {save.saveBool("nyu",checked)}
                }
                Switch {
                    id: nyo
                    width: parent.width / 3
                    icon.source: "Katakana/nyo.png"
                    checked: save.getBool("nyo")
                    onClicked: {save.saveBool("nyo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         nya"
                }
                Label{
                    width: parent.width / 3
                    text: "         nyu"
                }
                Label{
                    width: parent.width / 3
                    text: "         nyo"
                }


                // The "hya" line

                Switch {
                    id: hya
                    width: parent.width / 3
                    icon.source: "Katakana/hya.png"
                    checked: save.getBool("hya")
                    onClicked: {save.saveBool("hya",checked)}
                }
                Switch {
                    id: hyu
                    width: parent.width / 3
                    icon.source: "Katakana/hyu.png"
                    checked: save.getBool("hyu")
                    onClicked: {save.saveBool("hyu",checked)}
                }
                Switch {
                    id: hyo
                    width: parent.width / 3
                    icon.source: "Katakana/hyo.png"
                    checked: save.getBool("hyo")
                    onClicked: {save.saveBool("hyo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         hya"
                }
                Label{
                    width: parent.width / 3
                    text: "         hyu"
                }
                Label{
                    width: parent.width / 3
                    text: "         hyo"
                }


                // The "mya" line

                Switch {
                    id: mya
                    width: parent.width / 3
                    icon.source: "Katakana/mya.png"
                    checked: save.getBool("mya")
                    onClicked: {save.saveBool("mya",checked)}
                }
                Switch {
                    id: myu
                    width: parent.width / 3
                    icon.source: "Katakana/myu.png"
                    checked: save.getBool("myu")
                    onClicked: {save.saveBool("myu",checked)}
                }
                Switch {
                    id: myo
                    width: parent.width / 3
                    icon.source: "Katakana/myo.png"
                    checked: save.getBool("myo")
                    onClicked: {save.saveBool("myo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         mya"
                }
                Label{
                    width: parent.width / 3
                    text: "         myu"
                }
                Label{
                    width: parent.width / 3
                    text: "         myo"
                }


                // The "rya" line

                Switch {
                    id: rya
                    width: parent.width / 3
                    icon.source: "Katakana/rya.png"
                    checked: save.getBool("rya")
                    onClicked: {save.saveBool("rya",checked)}
                }
                Switch {
                    id: ryu
                    width: parent.width / 3
                    icon.source: "Katakana/ryu.png"
                    checked: save.getBool("ryu")
                    onClicked: {save.saveBool("ryu",checked)}
                }
                Switch {
                    id: ryo
                    width: parent.width / 3
                    icon.source: "Katakana/ryo.png"
                    checked: save.getBool("ryo")
                    onClicked: {save.saveBool("ryo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         rya"
                }
                Label{
                    width: parent.width / 3
                    text: "         ryu"
                }
                Label{
                    width: parent.width / 3
                    text: "         ryo"
                }

            } // End grid

            TextSwitch {
                id: switchDigraphsDiacritics
                width: parent.width
                text: "Digraphs with Diacritics"
            }

            Row {
                visible: switchDigraphsDiacritics.checked

                Button {
                    text: "Enable all\nDigraphs w. D."
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Enable all Digraphs with Diacritics", function() { startTest.setDigraphsDiacritics(true) }, 3000 )
                }

                Button {
                    text: "Disable all\nDigraphs w. D."
                    width: mainColumn.width/2
                    height: Theme.fontSizeMedium * 4
                    onClicked: remorsePopup.execute("Disable all Digraphs with Diacritics", function() { startTest.setDigraphsDiacritics(false) }, 3000 )
                }
            }

            Grid {
                id: digraphsDiacriticsGrid
                width: parent.width
                columns: 3
                visible: switchDigraphsDiacritics.checked

                // The "gya" line

                Switch {
                    id: gya
                    width: parent.width / 3
                    icon.source: "Katakana/gya.png"
                    checked: save.getBool("gya")
                    onClicked: {save.saveBool("gya",checked)}
                }
                Switch {
                    id: gyu
                    width: parent.width / 3
                    icon.source: "Katakana/gyu.png"
                    checked: save.getBool("gyu")
                    onClicked: {save.saveBool("gyu",checked)}
                }
                Switch {
                    id: gyo
                    width: parent.width / 3
                    icon.source: "Katakana/gyo.png"
                    checked: save.getBool("gyo")
                    onClicked: {save.saveBool("gyo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         gya"
                }
                Label{
                    width: parent.width / 3
                    text: "         gyu"
                }
                Label{
                    width: parent.width / 3
                    text: "         gyo"
                }


                // The "ja" line

                Switch {
                    id: ja
                    width: parent.width / 3
                    icon.source: "Katakana/ja.png"
                    checked: save.getBool("ja")
                    onClicked: {save.saveBool("ja",checked)}
                }
                Switch {
                    id: ju
                    width: parent.width / 3
                    icon.source: "Katakana/ju.png"
                    checked: save.getBool("ju")
                    onClicked: {save.saveBool("ju",checked)}
                }
                Switch {
                    id: jo
                    width: parent.width / 3
                    icon.source: "Katakana/jo.png"
                    checked: save.getBool("jo")
                    onClicked: {save.saveBool("jo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         ja"
                }
                Label{
                    width: parent.width / 3
                    text: "         ju"
                }
                Label{
                    width: parent.width / 3
                    text: "         jo"
                }

                // The "dya" line

                Switch {
                    id: dya
                    width: parent.width / 3
                    icon.source: "Katakana/dya.png"
                    checked: save.getBool("dya")
                    onClicked: {save.saveBool("dya",checked)}
                }
                Switch {
                    id: dyu
                    width: parent.width / 3
                    icon.source: "Katakana/dyu.png"
                    checked: save.getBool("dyu")
                    onClicked: {save.saveBool("dyu",checked)}
                }
                Switch {
                    id: dyo
                    width: parent.width / 3
                    icon.source: "Katakana/dyo.png"
                    checked: save.getBool("dyo")
                    onClicked: {save.saveBool("dyo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         ja(d)"
                }
                Label{
                    width: parent.width / 3
                    text: "         ju(d)"
                }
                Label{
                    width: parent.width / 3
                    text: "         jo(d)"
                }


                // The "bya" line

                Switch {
                    id: bya
                    width: parent.width / 3
                    icon.source: "Katakana/bya.png"
                    checked: save.getBool("bya")
                    onClicked: {save.saveBool("bya",checked)}
                }
                Switch {
                    id: byu
                    width: parent.width / 3
                    icon.source: "Katakana/byu.png"
                    checked: save.getBool("byu")
                    onClicked: {save.saveBool("byu",checked)}
                }
                Switch {
                    id: byo
                    width: parent.width / 3
                    icon.source: "Katakana/byo.png"
                    checked: save.getBool("byo")
                    onClicked: {save.saveBool("byo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         bya"
                }
                Label{
                    width: parent.width / 3
                    text: "         byu"
                }
                Label{
                    width: parent.width / 3
                    text: "         byo"
                }


                // The "pya" line

                Switch {
                    id: pya
                    width: parent.width / 3
                    icon.source: "Katakana/pya.png"
                    checked: save.getBool("pya")
                    onClicked: {save.saveBool("pya",checked)}
                }
                Switch {
                    id: pyu
                    width: parent.width / 3
                    icon.source: "Katakana/pyu.png"
                    checked: save.getBool("pyu")
                    onClicked: {save.saveBool("pyu",checked)}
                }
                Switch {
                    id: pyo
                    width: parent.width / 3
                    icon.source: "Katakana/pyo.png"
                    checked: save.getBool("pyo")
                    onClicked: {save.saveBool("pyo",checked)}
                }
                Label{
                    width: parent.width / 3
                    text: "         pya"
                }
                Label{
                    width: parent.width / 3
                    text: "         pyu"
                }
                Label{
                    width: parent.width / 3
                    text: "         pyo"
                }

            } // End grid
        }
    }
}


