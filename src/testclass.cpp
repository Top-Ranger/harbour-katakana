#include "testclass.h"
#include <QTime>

QList<ListElement> Testclass::elementlist;
QString Testclass::_picture;
QString Testclass::_one;
QString Testclass::_two;
QString Testclass::_three;
QString Testclass::_four;
QString Testclass::_five;
QString Testclass::_six;
QString Testclass::_one_picture;
QString Testclass::_two_picture;
QString Testclass::_three_picture;
QString Testclass::_four_picture;
QString Testclass::_five_picture;
QString Testclass::_six_picture;
int Testclass::_correct;
int Testclass::_question;
QString Testclass::_valuecorrect;

Testclass::Testclass(QObject *parent) :
    QObject(parent)
{

}

void Testclass::initialise()
{
    Testclass::elementlist.clear();
    Testclass::_question = 0;
}

void Testclass::add(QString name, QString path)
{
    ListElement e;
    e.Name = name;
    e.ImagePath = path;
    e.Question = 0;

    Testclass::elementlist.append(e);
}

void Testclass::newQuestion()
{
    bool test;
    int amount = Testclass::elementlist.size();
    qsrand(QTime(0,0,0).secsTo(QTime::currentTime()));
    Testclass::_correct = (qrand()%6)+1;
    Testclass::_question++;

    for(int i=1; i <=6; i++)
    {
        test = true;
        do{
            int random = qrand()%amount;
            ListElement e = Testclass::elementlist.at(random);
            if(e.Question != Testclass::_question)
            {
                e.Question = Testclass::_question;
                test = false;
                switch(i)
                {
                case 1:
                    Testclass::_one = e.Name;
                    Testclass::_one_picture = e.ImagePath;
                    break;
                case 2:
                    Testclass::_two = e.Name;
                    Testclass::_two_picture = e.ImagePath;
                    break;
                case 3:
                    Testclass::_three = e.Name;
                    Testclass::_three_picture = e.ImagePath;
                    break;
                case 4:
                    Testclass::_four = e.Name;
                    Testclass::_four_picture = e.ImagePath;
                    break;
                case 5:
                    Testclass::_five = e.Name;
                    Testclass::_five_picture = e.ImagePath;
                    break;
                case 6:
                    Testclass::_six = e.Name;
                    Testclass::_six_picture = e.ImagePath;
                    break;
                default:
                    throw "Something went terribly wrong!";
                }
                if(i == Testclass::_correct)
                {
                    Testclass::_picture = e.ImagePath;
                    Testclass::_valuecorrect = e.Name;
                }
                Testclass::elementlist.replace(random, e);
            }
        }while(test);
    }
}

QString Testclass::picture()
{
    return Testclass::_picture;
}

QString Testclass::one()
{
    return Testclass::_one;
}

QString Testclass::two()
{
    return Testclass::_two;
}

QString Testclass::three()
{
    return Testclass::_three;
}

QString Testclass::four()
{
    return Testclass::_four;
}

QString Testclass::five()
{
    return Testclass::_five;
}

QString Testclass::six()
{
    return Testclass::_six;
}

int Testclass::correct()
{
    return Testclass::_correct;
}

bool Testclass::testPossible()
{
    return 6 <= Testclass::elementlist.size();
}

QString Testclass::valuecorrect()
{
    return Testclass::_valuecorrect;
}

QString Testclass::one_picture()
{
    return Testclass::_one_picture;
}

QString Testclass::two_picture()
{
    return Testclass::_two_picture;
}

QString Testclass::three_picture()
{
    return Testclass::_three_picture;
}

QString Testclass::four_picture()
{
    return Testclass::_four_picture;
}

QString Testclass::five_picture()
{
    return Testclass::_five_picture;
}

QString Testclass::six_picture()
{
    return Testclass::_six_picture;
}

QString Testclass::toLower(QString s)
{
    return s.toLower();
}

bool Testclass::sameString(QString s, QString t)
{
    return s.compare(t, Qt::CaseInsensitive) == 0;
}
