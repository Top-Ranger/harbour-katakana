# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-katakana

CONFIG += sailfishapp

SOURCES += src/harbour-katakana.cpp \
    src/listelement.cpp \
    src/testclass.cpp \
    src/persistenceclass.cpp

OTHER_FILES += qml/harbour-katakana.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-katakana.spec \
    rpm/harbour-katakana.yaml \
    harbour-katakana.desktop \
    qml/pages/Test.qml \
    qml/pages/Grid.qml \
    qml/pages/About.qml \
    qml/pages/TestReverse.qml \
    qml/pages/TestFree.qml \
    qml/pages/Katakana/zu.png \
    qml/pages/Katakana/zo.png \
    qml/pages/Katakana/ze.png \
    qml/pages/Katakana/za.png \
    qml/pages/Katakana/yu.png \
    qml/pages/Katakana/yo.png \
    qml/pages/Katakana/ya.png \
    qml/pages/Katakana/wo.png \
    qml/pages/Katakana/wi.png \
    qml/pages/Katakana/we.png \
    qml/pages/Katakana/wa.png \
    qml/pages/Katakana/u.png \
    qml/pages/Katakana/tsu.png \
    qml/pages/Katakana/to.png \
    qml/pages/Katakana/te.png \
    qml/pages/Katakana/ta.png \
    qml/pages/Katakana/su.png \
    qml/pages/Katakana/so.png \
    qml/pages/Katakana/shu.png \
    qml/pages/Katakana/sho.png \
    qml/pages/Katakana/shi.png \
    qml/pages/Katakana/sha.png \
    qml/pages/Katakana/se.png \
    qml/pages/Katakana/sa.png \
    qml/pages/Katakana/ryu.png \
    qml/pages/Katakana/ryo.png \
    qml/pages/Katakana/rya.png \
    qml/pages/Katakana/ru.png \
    qml/pages/Katakana/ro.png \
    qml/pages/Katakana/ri.png \
    qml/pages/Katakana/re.png \
    qml/pages/Katakana/ra.png \
    qml/pages/Katakana/pyu.png \
    qml/pages/Katakana/pyo.png \
    qml/pages/Katakana/pya.png \
    qml/pages/Katakana/pu.png \
    qml/pages/Katakana/po.png \
    qml/pages/Katakana/pi.png \
    qml/pages/Katakana/pe.png \
    qml/pages/Katakana/pa.png \
    qml/pages/Katakana/o.png \
    qml/pages/Katakana/nyu.png \
    qml/pages/Katakana/nyo.png \
    qml/pages/Katakana/nya.png \
    qml/pages/Katakana/nu.png \
    qml/pages/Katakana/no.png \
    qml/pages/Katakana/ni.png \
    qml/pages/Katakana/ne.png \
    qml/pages/Katakana/na.png \
    qml/pages/Katakana/n.png \
    qml/pages/Katakana/myu.png \
    qml/pages/Katakana/myo.png \
    qml/pages/Katakana/mya.png \
    qml/pages/Katakana/mu.png \
    qml/pages/Katakana/mo.png \
    qml/pages/Katakana/mi.png \
    qml/pages/Katakana/me.png \
    qml/pages/Katakana/ma.png \
    qml/pages/Katakana/kyu.png \
    qml/pages/Katakana/kyo.png \
    qml/pages/Katakana/kya.png \
    qml/pages/Katakana/ku.png \
    qml/pages/Katakana/ko.png \
    qml/pages/Katakana/ki.png \
    qml/pages/Katakana/ke.png \
    qml/pages/Katakana/ka.png \
    qml/pages/Katakana/ju.png \
    qml/pages/Katakana/jo.png \
    qml/pages/Katakana/ji.png \
    qml/pages/Katakana/ja.png \
    qml/pages/Katakana/i.png \
    qml/pages/Katakana/hyu.png \
    qml/pages/Katakana/hyo.png \
    qml/pages/Katakana/hya.png \
    qml/pages/Katakana/ho.png \
    qml/pages/Katakana/hi.png \
    qml/pages/Katakana/he.png \
    qml/pages/Katakana/ha.png \
    qml/pages/Katakana/gyu.png \
    qml/pages/Katakana/gyo.png \
    qml/pages/Katakana/gya.png \
    qml/pages/Katakana/gu.png \
    qml/pages/Katakana/go.png \
    qml/pages/Katakana/gi.png \
    qml/pages/Katakana/ge.png \
    qml/pages/Katakana/ga.png \
    qml/pages/Katakana/fu.png \
    qml/pages/Katakana/empty.png \
    qml/pages/Katakana/e.png \
    qml/pages/Katakana/dyu.png \
    qml/pages/Katakana/dyo.png \
    qml/pages/Katakana/dya.png \
    qml/pages/Katakana/du.png \
    qml/pages/Katakana/do.png \
    qml/pages/Katakana/di.png \
    qml/pages/Katakana/de.png \
    qml/pages/Katakana/da.png \
    qml/pages/Katakana/chu.png \
    qml/pages/Katakana/cho.png \
    qml/pages/Katakana/chi.png \
    qml/pages/Katakana/cha.png \
    qml/pages/Katakana/byu.png \
    qml/pages/Katakana/byo.png \
    qml/pages/Katakana/bya.png \
    qml/pages/Katakana/bu.png \
    qml/pages/Katakana/bo.png \
    qml/pages/Katakana/bi.png \
    qml/pages/Katakana/be.png \
    qml/pages/Katakana/ba.png \
    qml/pages/Katakana/a.png \
    LICENSE.txt \
    harbour-katakana.png \
    qml/cover/cover.png \
    qml/pages/UpperPanel.qml \
    qml/pages/Settings.qml

HEADERS += \
    src/listelement.h \
    src/testclass.h \
    src/persistenceclass.h

