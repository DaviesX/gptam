TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    player.cpp

CONFIG += link_pkgconfig
PKGCONFIG += opencv

LIBS += -L. -lgptam
LIBS += -lGL -lGLU -lglut
LIBS += -lpthread
LIBS += -lreadline
LIBS += -lm
