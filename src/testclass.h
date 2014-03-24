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
    QList<ListElement> elementlist;
    QString _picture;
    QString _one;
    QString _two;
    QString _three;
    QString _four;
    QString _five;
    QString _six;
    QString _one_picture;
    QString _two_picture;
    QString _three_picture;
    QString _four_picture;
    QString _five_picture;
    QString _six_picture;
    int _correct;
    int _question;
    QString _valuecorrect;

};

#endif // TESTCLASS_H
