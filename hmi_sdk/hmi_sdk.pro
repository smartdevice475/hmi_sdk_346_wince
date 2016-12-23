#-------------------------------------------------
#
# Project created by QtCreator 2015-05-05T16:04:10
#
#-------------------------------------------------
QT       += core gui
#greaterThan(QT_MAJOR_VERSION, 4): QT += widgets multimedia
win32:QT += axcontainer

#DEFINES += __STDINT_MACROS  #for ffmpeg
CONFIG  += wince  ##wince

TARGET = AppLink_HMI
TEMPLATE = app

MOC_DIR=temp/moc
RCC_DIR=temp/rcc
UI_DIR=temp/ui
OBJECTS_DIR=temp/obj
DESTDIR=../bin

SOURCES += \
    main.cpp \
    HMI_SDK/Connect/SDLConnector.cpp \
    HMI_SDK/Connect/Channel.cpp \
    HMI_SDK/AppData/AppList.cpp \
    HMI_SDK/AppData/AppData.cpp \
    HMI_SDK/Connect/BasicCommunication.cpp \
    HMI_SDK/Connect/Buttons.cpp \
    HMI_SDK/Connect/Navigation.cpp \
    HMI_SDK/Connect/SocketsToSDL.cpp \
    HMI_SDK/Connect/TTS.cpp \
    HMI_SDK/Connect/UI.cpp \
    HMI_SDK/Connect/VehicleInfo.cpp \
    HMI_SDK/Connect/VR.cpp \
    HMI_Initial.cpp \
    Tools/json/json_reader.cpp \
    Tools/json/json_value.cpp \
    Tools/json/json_writer.cpp


INCLUDEPATH += $$PWD/   \
              $$PWD/HMI_SDK \
              $$PWD/Tools

HEADERS  += \
    HMI_SDK/AppData/AppData.h \
    HMI_SDK/AppData/AppList.h \
    HMI_SDK/Connect/SDLConnector.h \
    HMI_SDK/Connect/Channel.h \
    HMI_SDK/Connect/IMessageInterface.h \
    HMI_SDK/Connect/SDLConnector.h \
    HMI_SDK/Connect/ISocketManager.h \
    HMI_SDK/Connect/BasicCommunication.h \
    HMI_SDK/Connect/Buttons.h \
    HMI_SDK/Connect/Navigation.h \
    HMI_SDK/Connect/SocketsToSDL.h \
    HMI_SDK/Connect/TTS.h \
    HMI_SDK/Connect/UI.h \
    HMI_SDK/Connect/VehicleInfo.h \
    HMI_SDK/Connect/VR.h \
    Include/ProtocolDefines.h \
    HMI_Initial.h \
    Include/AppListInterface.h \
    Include/AppDataInterface.h \
    Include/UIInterface.h \
    Tools/json/assertions.h \
    Tools/json/autolink.h \
    Tools/json/config.h \
    Tools/json/features.h \
    Tools/json/forwards.h \
    Tools/json/json.h \
    Tools/json/json_tool.h \
    Tools/json/reader.h \
    Tools/json/value.h \
    Tools/json/version.h \
    Tools/json/writer.h \
    Include/AppCommon.h


INCLUDEPATH += $$PWD/../Include       \
               $$PWD/../Include/msp

################################for wince
wince{
INCLUDEPATH += $$PWD/../Include/pthread \
               $$PWD/../Include \
               $$PWD/../Include/wince

DEFINES +=  SDL_SUPPORT_LIB \
            OS_WIN32

LIBS +=  $$PWD/Library/ce/pthread.lib
LIBS +=  $$PWD/Library/ce/sdl/smartDeviceLinkCore.lib

pthread.path=$$OUT_PWD/../bin
pthread.files=$$PWD/Library/ce/*.dll
INSTALLS +=pthread

qt_dll.path=$$OUT_PWD/../bin
qt_dll.files=$$QMAKE_LIBDIR_QT/*.dll
INSTALLS +=qt_dll

sdl_lib.path=$$OUT_PWD/../bin
sdl_lib.files=$$PWD/Library/ce/sdl/*.*
INSTALLS +=sdl_lib
}

!android{
configfile.path=$$OUT_PWD/../bin/Config
configfile.files=$$PWD/Config/*
INSTALLS +=configfile
}
