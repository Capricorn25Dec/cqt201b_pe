#include "PersonModel.h"

Person::Person(const int &idPerson, const QString &name, const QString &addr)
{
    //your code here
    //....
}

int Person::idPerson() const
{
    //your code here
    //....
}

QString Person::name() const
{
    //your code here
    //....
}

QString Person::address() const
{
    //your code here
    //....
}

void Person::setIdPerson(int id){
    //your code here
    //....
}

void Person::setName(QString name){
    //your code here
    //....
}

void Person::setAddress(QString addr){
    m_address = addr;
}

PersonModel::PersonModel(QObject *parent) : QAbstractListModel(parent)
{

}

int PersonModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    //your code here
    //....
}

QVariant PersonModel::data(const QModelIndex &index, int role) const
{
    if(!index.isValid()){
        return QVariant();
    }

    const Person &person = m_data[index.row()];
    //your code here
    //....
}

void PersonModel::add(Person &person)
{
    m_data.append(person);
}

Person PersonModel::getPerSon(int index)
{
    //your code here
    //....
}

QHash<int, QByteArray> PersonModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[RoleId] = "number";
    roles[RoleName] = "name";
    roles[RoleAddress] = "address";
    return roles;
}
