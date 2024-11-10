#include "javaclasscall.h"
#include <QDebug>

javaClassCall::javaClassCall(QObject *parent)
    : QObject{parent}
{}

#ifdef Q_OS_IOS
// Import the Objective-C helper only on iOS
#import "ioshelper.h"
#endif

#ifdef Q_OS_ANDROID
// Import the JNI only on Android
#include <QJniObject>
#include <jni.h>
#endif

// Method to call either Java (Android) or Objective-C (iOS) method
void javaClassCall::platformCall()
{
#ifdef Q_OS_ANDROID
    // Android code using JNI (Java)

             QString javaMessage = QJniObject::callStaticMethod<jstring>("gymboxingtraining/firebaseapp/com/JavaClass",
                                                                         "getJavaMessage")
                                       .toString();
             qWarning() << "Android Output from java file: " << javaMessage;
                emit javaMessageReceived(javaMessage);

#elif defined(Q_OS_IOS)
    // iOS code using Objective-C
    // Call the static method and print the message
    QString iosMessage = ObjectiveCppClass::getObjectiveCppMessage();
        qDebug() << "IoS Output from Objective-C++: " << iosMessage;
        emit objetiveMessageReceived(iosMessage);

#else
    qWarning() << "Unsupported platform";
#endif
}
