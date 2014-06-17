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

#include "testclass.h"
#include <QTime>

Testclass::Testclass(QObject *parent) :
    QObject(parent)
{

}

void Testclass::initialise()
{
    elementlist.clear();
    _question = 0;
    _lastCorrect = "";
    _lastPicture = "";
}

void Testclass::add(QString name, QString path)
{
    ListElement e;
    e.Name = name;
    e.ImagePath = path;
    e.Question = 0;

    elementlist.append(e);
}

void Testclass::newQuestion()
{
    bool test;
    int amount = elementlist.size();
    qsrand(QTime(0,0,0).secsTo(QTime::currentTime()));
    _correct = (qrand()%6)+1;
    _question++;

    for(int i=1; i <=6; i++)
    {
        test = true;
        do{
            int random = qrand()%amount;
            ListElement e = elementlist.at(random);
            if(e.Question != _question)
            {
                e.Question = _question;
                test = false;
                switch(i)
                {
                case 1:
                    _one = e.Name;
                    _one_picture = e.ImagePath;
                    break;
                case 2:
                    _two = e.Name;
                    _two_picture = e.ImagePath;
                    break;
                case 3:
                    _three = e.Name;
                    _three_picture = e.ImagePath;
                    break;
                case 4:
                    _four = e.Name;
                    _four_picture = e.ImagePath;
                    _valuecorrect = _four;
                    break;
                case 5:
                    _five = e.Name;
                    _five_picture = e.ImagePath;
                    break;
                case 6:
                    _six = e.Name;
                    _six_picture = e.ImagePath;
                    break;
                default:
                    throw "Something went terribly wrong!";
                }
                elementlist.replace(random, e);
            }
        }while(test);
    }

    test = true;

    do{
        _correct = (_correct%6)+1;

        switch(_correct)
        {
        case 1:
            if(_one != _lastCorrect && _one_picture != _lastPicture)
            {
                _picture = _one_picture;
                _valuecorrect = _one;
                _lastPicture = _one_picture;
                _lastCorrect = _one;
                test = false;
            }
            break;
        case 2:
            if(_two != _lastCorrect && _two_picture != _lastPicture)
            {
                _picture = _two_picture;
                _valuecorrect = _two;
                _lastPicture = _two_picture;
                _lastCorrect = _two;
                test = false;
            }
            break;
        case 3:
            if(_three != _lastCorrect && _three_picture != _lastPicture)
            {
                _picture = _three_picture;
                _valuecorrect = _three;
                _lastPicture = _three_picture;
                _lastCorrect = _three;
                test = false;
            }
            break;
        case 4:
            if(_four != _lastCorrect && _four_picture != _lastPicture)
            {
                _picture = _four_picture;
                _valuecorrect = _four;
                _lastPicture = _four_picture;
                _lastCorrect = _four;
                test = false;
            }
            break;
        case 5:
            if(_five != _lastCorrect && _five_picture != _lastPicture)
            {
                _picture = _five_picture;
                _valuecorrect = _five;
                _lastPicture = _five_picture;
                _lastCorrect = _five;
                test = false;
            }
            break;
        case 6:
            if(_six != _lastCorrect && _six_picture != _lastPicture)
            {
                _picture = _six_picture;
                _valuecorrect = _six;
                _lastPicture = _six_picture;
                _lastCorrect = _six;
                test = false;
            }
            break;
        default:
            throw "Something went terribly wrong!";
        }
    }while(test);
}

QString Testclass::picture()
{
    return _picture;
}

QString Testclass::one()
{
    return _one;
}

QString Testclass::two()
{
    return _two;
}

QString Testclass::three()
{
    return _three;
}

QString Testclass::four()
{
    return _four;
}

QString Testclass::five()
{
    return _five;
}

QString Testclass::six()
{
    return _six;
}

int Testclass::correct()
{
    return _correct;
}

bool Testclass::testPossible()
{
    return 6 <= elementlist.size();
}

QString Testclass::valuecorrect()
{
    return _valuecorrect;
}

QString Testclass::one_picture()
{
    return _one_picture;
}

QString Testclass::two_picture()
{
    return _two_picture;
}

QString Testclass::three_picture()
{
    return _three_picture;
}

QString Testclass::four_picture()
{
    return _four_picture;
}

QString Testclass::five_picture()
{
    return _five_picture;
}

QString Testclass::six_picture()
{
    return _six_picture;
}

QString Testclass::toLower(QString s)
{
    return s.toLower();
}

bool Testclass::sameString(QString s, QString t)
{
    return s.compare(t, Qt::CaseInsensitive) == 0;
}
