#-------------------------------------------------
#
# Project created by QtCreator 2019-06-30T12:53:03
#
#-------------------------------------------------

QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TRANSLATIONS = ./trans/lang_English.ts \
               ./trans/lang_Chinses.ts

CONFIG += link_pkgconfig
PKGCONFIG += dtkwidget

TARGET = oh-my-dde
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += link_pkgconfig

SOURCES += main.cpp\
    widget.cpp \
    youjianpage.cpp \
    systemuipage.cpp

HEADERS  += \
    widget.h \
    youjianpage.h \
    systemuipage.h



CONFIG += c++11

FORMS += \
    widget.ui \
    youjianpage.ui \
    systemuipage.ui

RESOURCES += \
    icons.qrc \
    translations.qrc

DISTFILES +=
