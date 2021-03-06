QT += core gui network
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
greaterThan(QT_MAJOR_VERSION, 5): QT += core5compat

TARGET      = netserver
TEMPLATE    = app
DESTDIR     = $$PWD/../bin
RC_FILE     = qrc/main.rc

HEADERS     += head.h
SOURCES     += main.cpp
RESOURCES   += qrc/main.qrc
CONFIG      += warn_off

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/api
INCLUDEPATH += $$PWD/form

include ($$PWD/api/api.pri)
include ($$PWD/form/form.pri)
