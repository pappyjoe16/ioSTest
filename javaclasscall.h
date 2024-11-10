#ifndef JAVACLASSCALL_H
#define JAVACLASSCALL_H

#include <QObject>

class javaClassCall : public QObject
{
    Q_OBJECT
public:
    explicit javaClassCall(QObject *parent = nullptr);
    Q_INVOKABLE void platformCall();

signals:
    void objetiveMessageReceived(const QString &message);
    void javaMessageReceived(const QString &message);
};

#endif // JAVACLASSCALL_H
