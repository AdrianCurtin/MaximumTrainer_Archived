INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD


SOURCES     += \
    src/ANT/hub.cpp \
    $$PWD/antmsg.cpp \
    $$PWD/ant_controller.cpp \
    $$PWD/kickrant.cpp

HEADERS     += \
    src/ANT/hub.h \
    src/ANT/common_pages.h \
    src/ANT/antplus.h \
    $$PWD/antmsg.h \
    $$PWD/antdefine.h \
    $$PWD/ant_controller.h \
    $$PWD/kickrant.h \


#////////////////////////////////////////////////////////////////////////////////////////////////////////
# ANT LIBS - Download source from thisisant.com
    INCLUDEPATH += $$PWD/ANT_LIB/inc \
    INCLUDEPATH += $$PWD/ANT_LIB/common \
    INCLUDEPATH += $$PWD/ANT_LIB/libraries \
    INCLUDEPATH += $$PWD/ANT_LIB/software/ANTFS \
    INCLUDEPATH += $$PWD/ANT_LIB/software/serial \
    INCLUDEPATH += $$PWD/ANT_LIB/software/serial/device_management \
    INCLUDEPATH += $$PWD/ANT_LIB/software/system \
    INCLUDEPATH += $$PWD/ANT_LIB/software/USB \
    INCLUDEPATH += $$PWD/ANT_LIB/software/USB/device_handles \
    INCLUDEPATH += $$PWD/ANT_LIB/software/USB/devices \


#////////////////////////////////////////////////////////////////////////////////////////////////////////
win32 {

   LIBS +=  "C:/Program Files (x86)/Windows Kits/10/Lib/10.0.16299.0/um/x64/User32.lib"
   LIBS +=  "C:/Program Files (x86)/Windows Kits/10/Lib/10.0.16299.0/um/x64/AdvAPI32.lib"





}

#////////////////////////////////////////////////////////////////////////////////////////////////////////

unix:!macx {
    LIBS += $$PWD/libs/linux/libANT_LIB.a -lusb-1.0
}
macx {

    INCLUDEPATH += $$PWD/libs/software/USB/iokit_driver


    #static ANT_LIB builded with ANT_LIB project (Download source from thisisant.com, build with XCode)
    LIBS += $$PWD/libs/mac/libantbase.a

}
