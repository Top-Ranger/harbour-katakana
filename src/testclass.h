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
    QString _lastCorrect;
    QString _lastPicture;

};

#endif // TESTCLASS_H
