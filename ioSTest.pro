QT += quick

# Include the shared source file for both platforms
SOURCES += \
    main.cpp \
    javaclasscall.cpp

HEADERS += \
    javaclasscall.h

# Conditionally include iOS-specific files
ios {
    #SOURCES += ioshelper.mm
    OBJECTIVE_SOURCES += ioshelper.mm
    QMAKE_CXXFLAGS += -fobjc-arc
    OBJECTIVE_HEADERS += ioshelper.h
}

RESOURCES += qml.qrc

# Android-specific configuration
android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

    DISTFILES += \
        android/AndroidManifest.xml \
        android/build.gradle \
        android/gradle.properties \
        android/gradle/wrapper/gradle-wrapper.jar \
        android/gradle/wrapper/gradle-wrapper.properties \
        android/gradlew \
        android/gradlew.bat \
        android/res/values/libs.xml \
        android/res/xml/qtprovider_paths.xml \
        android/src/JavaClass.java
}
