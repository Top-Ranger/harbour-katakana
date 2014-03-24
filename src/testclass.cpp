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
                if(i == _correct)
                {
                    _picture = e.ImagePath;
                    _valuecorrect = e.Name;
                }
                elementlist.replace(random, e);
            }
        }while(test);
    }
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
