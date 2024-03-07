#include "Controller.h"
#include <iostream>
#include <fstream>

Controller::Controller(QObject *parent) : QObject(parent)
{
    //your code here
}

void Controller::createModel()
{
    //Read file and append person infomation to model.
    readfile("../CQT_Question1/Data.txt");
}

void Controller::readfile(string filename) {
    ifstream inFile;
    inFile.open(filename, ios::in);
    string name, addr;
    int id = 0;
    if(inFile.fail()){
        qDebug() << "Can not read file";
        return;
    } else {
        qDebug() << "Read file successfully";
    }

    while(!inFile.eof()) {
        //Get each line info from file:
        getline(inFile, name, ',');
        getline(inFile, addr);

        id++;
        //your code here

        //m_DataModel->add(...);
    }
}

int Controller::indexWinner() const
{
    //your code here
    //...
}

void Controller::setIndexWinner(int indexWinner)
{
    //your code here
    //...
}

QString Controller::nameWinner() const
{
    //your code here
    //...
}

void Controller::setNameWinner(QString nameWinner)
{
    //your code here
    //...
}

QString Controller::addrWinner() const
{
    //your code here
    //...
}

void Controller::setAddrWinner(QString addrWinner)
{
    //your code here
    //...
}

void Controller::playRamdomNumber()
{
    //Make random player
    //your code here
    //...


    //Person per = m_DataModel->getPerSon(....);
    //setIndexWinner(...);
    //setNameWinner(...);
    //setAddrWinner(....);
}
