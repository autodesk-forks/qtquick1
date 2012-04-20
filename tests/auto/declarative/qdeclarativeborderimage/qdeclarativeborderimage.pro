CONFIG += testcase
TARGET = tst_qdeclarativeborderimage

QT += testlib
contains(QT_CONFIG,quick1): QT += quick1 quick1-private widgets network
macx:CONFIG -= app_bundle

HEADERS += ../shared/testhttpserver.h
SOURCES += tst_qdeclarativeborderimage.cpp ../shared/testhttpserver.cpp

symbian: {
    importFiles.files = data
    importFiles.path = .
    DEPLOYMENT += importFiles
} else {
    DEFINES += SRCDIR=\\\"$$PWD\\\"
}

CONFIG += parallel_test
