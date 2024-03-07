#ifndef PERSONMODEL_H
#define PERSONMODEL_H

#include <QAbstractListModel>
#include <QScopedPointer>
#include <QString>

class Person
{
public:
    Person(const int &idPerson, const QString &name, const QString &addr);

    int idPerson() const;
    QString name() const;
    QString address() const;

    void setIdPerson(int id);
    void setName(QString name);
    void setAddress(QString addr);

private:
    int m_idPerson;
    QString m_name;
    QString m_address;

};

class PersonModel : public QAbstractListModel
{
    Q_OBJECT

public:
    enum Roles {
        RoleId = Qt::UserRole + 1,
        RoleName,
        RoleAddress
    };

    explicit PersonModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    void add(Person &person);
    Person getPerSon(int index);

protected:
    QHash<int, QByteArray> roleNames() const override;

private:
    QList<Person> m_data;
};
#endif // PERSONMODEL_H
