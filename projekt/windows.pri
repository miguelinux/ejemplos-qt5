####################################################
#                                                  #
#  Put the camera that you will use in the project #
#                                                  #
#  USE_SVS                                         #
#  USE_OPENCV                                      #
#  USE_DFLY                                        #
#                                                  #
####################################################

#DEFINES += USE_DFLY

# Use console or windows application
CONFIG += console
#CONFIG += windows 

# Libraries from OpenCV
#LIBS += cxcore.lib cv.lib cvaux.lib 

# If you are using HighGUI form OpenCV uncomment following line
#LIBS += highgui.lib

# If you are using SVS MEGA-D camera uncomment following line
#LIBS += pimmegaapi.lib svs.lib svsgrab.lib

# If you are using DragonFly camera uncomment following line
#LIBS += PGRFlyCapture.lib

# Including IVT library
#CONFIG(debug) {
#  CONFIG(qt) {
#    LIBS += ivtguiqtd.lib
#  }
#  LIBS += ivtd.lib ivtopencvd.lib
#} else {
#  CONFIG(qt) {
#    LIBS += ivtguiqt.lib
#  }
#  LIBS += ivt.lib ivtopencv.lib
#} 


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
ARIADIR = C:/MobileRobots/Aria
INCLUDEPATH += $${ARIADIR}/include
#INCLUDEPATH += $${ARIADIR}\ArNetworking\include
QMAKE_LIBDIR += $${ARIADIR}/lib 
CONFIG(debug) {
 LIBS += $${ARIADIR}/lib/AriaDebugVC9.lib
} else {
 LIBS += $${ARIADIR}/lib/AriaVC9.lib
}
#LIBS += $${ARIADIR}\lib\ArNetworking.lib
#***************************************
 
