TEMPLATE = app

QT += core autoupdatercore
QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

TARGET = ConsoleUpdater

SOURCES += main.cpp

target.path = $$[QT_INSTALL_EXAMPLES]/autoupdatercore/ConsoleUpdater
INSTALLS += target

#not found by linker?
unix:!mac {
	LIBS += -L$$[QT_INSTALL_LIBS] -licudata
	LIBS += -L$$[QT_INSTALL_LIBS] -licui18n
	LIBS += -L$$[QT_INSTALL_LIBS] -licuuc
}
