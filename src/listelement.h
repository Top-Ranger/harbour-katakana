#ifndef LISTELEMENT_H
#define LISTELEMENT_H

#include <QObject>
#include <QString>

class ListElement : public QObject
{
    Q_OBJECT
public:
    explicit ListElement(QObject *parent = 0);
    ListElement(const ListElement& e);
    QString Name;
    QString ImagePath;
    int Question;
    void operator=(const ListElement& other);

};

#endif // LISTELEMENT_H
