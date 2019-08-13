#include "opencvworker.h"

OpenCvWorker::OpenCvWorker(QObject *parent) :
    QObject(parent),
    status(false),
    toggleStream(false),
    binaryThresholdEnable(false),
    binaryThreshold(127)
{
    cap = new cv::VideoCapture();

}

OpenCvWorker::~OpenCvWorker()
{
    if(cap != nullptr) {
        if(cap->isOpened())
            cap->release();
        delete cap;
    }
}

