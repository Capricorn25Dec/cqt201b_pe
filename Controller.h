#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>
#include <QDebug>
#include <QString>
#include "PersonModel.h"
#include <string>
using namespace std;

class Controller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int indexWinner     READ indexWinner  WRITE setIndexWinner  NOTIFY indexWinnerChanged)
    Q_PROPERTY(QString nameWinner  READ nameWinner   WRITE setNameWinner   NOTIFY nameWinnerChanged)
    Q_PROPERTY(QString addrWinner  READ addrWinner   WRITE setAddrWinner   NOTIFY addrWinnerChanged)

public:
    explicit Controller(QObject *parent = nullptr);

    void createModel();
    void readfile(string filename);
    Q_INVOKABLE void playRamdomNumber();

public:
    PersonModel *m_DataModel;

    int indexWinner() const;
    void setIndexWinner(int indexWinner);
    QString nameWinner() const;
    void setNameWinner(QString nameWinner);
    QString addrWinner() const;
    void setAddrWinner(QString addrWinner);

signals:
    void indexWinnerChanged(int indexWinner);
    void nameWinnerChanged(QString nameWinner);
    void addrWinnerChanged(QString addrWinner);

private:
    int m_indexWinner;
    QString m_nameWinner;
    QString m_addrWinner;
};

#endif // CONTROLLER_H
