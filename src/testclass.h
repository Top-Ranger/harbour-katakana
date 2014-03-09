#ifndef TESTCLASS_H
#define TESTCLASS_H

#include <QObject>
#include <QList>
#include "listelement.h"

class Testclass : public QObject
{
    Q_OBJECT
public:
    explicit Testclass(QObject *parent = 0);
    Q_INVOKABLE void initialise();
    Q_INVOKABLE void add(QString name, QString path);
    Q_INVOKABLE void newQuestion();
    Q_INVOKABLE QString picture();
    Q_INVOKABLE QString one();
    Q_INVOKABLE QString two();
    Q_INVOKABLE QString three();
    Q_INVOKABLE QString four();
    Q_INVOKABLE QString five();
    Q_INVOKABLE QString six();
    Q_INVOKABLE QString one_picture();
    Q_INVOKABLE QString two_picture();
    Q_INVOKABLE QString three_picture();
    Q_INVOKABLE QString four_picture();
    Q_INVOKABLE QString five_picture();
    Q_INVOKABLE QString six_picture();
    Q_INVOKABLE int correct();
    Q_INVOKABLE bool testPossible();
    Q_INVOKABLE QString valuecorrect();
    Q_INVOKABLE QString toLower(QString s);
    Q_INVOKABLE bool sameString(QString s, QString t);

signals:

public slots:

private:
    static QList<ListElement> elementlist;
    static QString _picture;
    static QString _one;
    static QString _two;
    static QString _three;
    static QString _four;
    static QString _five;
    static QString _six;
    static QString _one_picture;
    static QString _two_picture;
    static QString _three_picture;
    static QString _four_picture;
    static QString _five_picture;
    static QString _six_picture;
    static int _correct;
    static int _question;
    static QString _valuecorrect;

};

#endif // TESTCLASS_H
