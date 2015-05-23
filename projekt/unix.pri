#***************************************
# Biblioteca IVT
# Where the ivt library is
#IVTDIR = /opt/IVT
#
#INCLUDEPATH += $${IVTDIR}/src
#LIBPATH += $${IVTDIR}/lib/linux
#LIBS += -livt -livtgui
#***************************************

#***************************************
# Biblioteca IL
#LIBS += -lil
#***************************************

#***************************************
# Biblioteca Dinamixel
#LIBS += -ldxl
#***************************************

#***************************************
# Biblioteca OpenCV
#INCLUDEPATH += /usr/include/opencv
#LIBS += -lcv -lcvaux
#LIBS += -lcxcore
#LIBS += -lhighgui
#
#LIBS += -livtopencv
#***************************************

#***************************************
# Biblioteca OpenGL
#QT += opengl
#LIBS += -lGL -lGLU
#***************************************

#***************************************
# Biblioteca Camaras
#
# uncoment this if you are using libdc1394 v1
#LIBS += -lraw1394 -ldc1394_control
#
# uncoment this if you are using libdc1394 v2
#LIBS += -lraw1394 -ldc1394
#
#LIBS += -livtvideocapture
#***************************************

#***************************************
# Biblioteca Camaras Mega-D (Geometer)
#LIBS += -lsvs -lsvscalc -lsvscap
#LIBPATH += /usr/local/svs/bin
#
#LIBS += -livtvideocapture
#***************************************

#***************************************
# Biblioteca ARIA (Geometer)
# Aria directory
ARIADIR = /usr/local/Aria
INCLUDEPATH += $${ARIADIR}/include
#INCLUDEPATH += $${ARIADIR}/ArNetworking/include
QMAKE_LIBDIR += $${ARIADIR}/lib 
LIBS += -lAria -lpthread -ldl -lrt
#LIBS += -lArNetworking
#***************************************

