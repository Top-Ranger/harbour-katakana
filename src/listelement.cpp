#include "listelement.h"

ListElement::ListElement(QObject *parent) :
    QObject(parent)
{
}

ListElement::ListElement(const ListElement& e) :
    QObject()
{
    Name = e.Name;
    ImagePath = e.ImagePath;
    Question = e.Question;

}

void ListElement::operator=(const ListElement& other)
{
    Name = other.Name;
    ImagePath = other.ImagePath;
    Question = other.Question;
}
