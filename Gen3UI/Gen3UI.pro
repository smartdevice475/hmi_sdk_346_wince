#-------------------------------------------------
#
# Project created by QtCreator 2016-02-25T16:06:45
#
#-------------------------------------------------

QT       += widgets
#QT += network
#greaterThan(QT_MAJOR_VERSION, 4): QT +=multimedia

TARGET = Gen3UI
TEMPLATE = lib

#CONFIG += ffmpeg
CONFIG  += wince  ##wince

#DEFINES += HMIUI_LIBRARY __STDC_CONSTANT_MACROS

INCLUDEPATH += $$PWD/
INCLUDEPATH += $$PWD/../Include       \
               $$PWD/../Include/msp

MOC_DIR=temp/moc
RCC_DIR=temp/rcc
UI_DIR=temp/ui
OBJECTS_DIR=temp/obj
DESTDIR=../bin/UILib

SOURCES += \
    Gen3UIManager.cpp \
    UILib.cpp \
    json/json_reader.cpp \
    json/json_value.cpp \
    json/json_writer.cpp \
    MainWindow/MainWindow.cpp \
    AppListView/AppListView.cpp \
    AppListView/CAppButton.cpp \
    Common/MenuButton.cpp \
    CommandView/CommandView.cpp \
    CommandView/CustomCombobox.cpp \
    CommandView/CustomComboboxItem.cpp \
    Common/Button.cpp \
    Common/ScrollBar.cpp \
    Common/AppBase.cpp \
    Common/CustomButton.cpp \
    Show/MainWidget.cpp \
    Show/MediaShow.cpp \
    Config/Config.cpp \
    VideoStream/VideoStream.cpp \
    Alert/AlertView.cpp \
    Common/CustomListView.cpp \
    ChoiceSet/ChoiceSet.cpp \
    ChoiceSet/ChoiceSetVR.cpp \
    ScrollableMessage/ScollMsgView.cpp \
    SliderView/SliderView.cpp \
    AudioPassThru/AudioPassView.cpp \
    VideoStream/MediaCodecStream.cpp \
    VideoStream/JniNative.cpp \
    VideoStream/JniFrame.cpp \
    VideoStream/CeVideoStream.cpp \
    AppListView/DeviceListView.cpp

HEADERS += \
    Gen3UIManager.h \
    json/assertions.h \
    json/autolink.h \
    json/config.h \
    json/features.h \
    json/forwards.h \
    json/json.h \
    json/json_tool.h \
    json/reader.h \
    json/value.h \
    json/version.h \
    json/writer.h \
    MainWindow/MainWindow.h \
    AppListView/AppListView.h \
    AppListView/CAppButton.h \
    Common/MenuButton.h \
    CommandView/CommandView.h \
    CommandView/CustomCombobox.h \
    CommandView/CustomComboboxItem.h \
    Common/Button.h \
    Common/ScrollBar.h \
    Common/AppBase.h \
    Common/CustomButton.h \
    Show/MainWidget.h \
    Show/MediaShow.h \
    Config/Config.h \
    main.h \
    VideoStream/VideoStream.h \
    Alert/AlertView.h \
    Common/CustomListView.h \
    ChoiceSet/ChoiceSet.h \
    ChoiceSet/ChoiceSetVR.h \
    ScrollableMessage/ScollMsgView.h \
    SliderView/SliderView.h \
    AudioPassThru/AudioPassView.h \
    VideoStream/MediaCodecStream.h \
    VideoStream/JniNative.h \
    VideoStream/JniFrame.h \
    VideoStream/CeVideoStream.h \
    AppListView/DeviceListView.h

RESOURCES += \
    image.qrc

################################for wince
wince{
DEFINES += SDL_CALL_BACK \
           OS_WIN32

LIBS +=  $$PWD/Library/ce/sdl/smartDeviceLinkCore.lib
}
