# Release or Debug project
CONFIG += debug
#CONFIG += release

CONFIG += warn_on

# Use Qt library
#CONFIG += qt
#QT += opengl

# App without Qt
CONFIG -= qt

include( sources.pri )

#Name of the application
TARGET = geometerd

DESTDIR = bin

OBJECTS_DIR = tmp
MOC_DIR = tmp

win32 {
  TEMPLATE = vcapp
  include( windows.pri )
}

unix {
  include( unix.pri )

#  !exists( $$IVTDIR ) {
#    error( "Please update the IVT directory (IVTDIR) in unix.pri file." )
#  }

}

