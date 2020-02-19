#include "opencvworker.h"
#include <opencv2/imgproc.hpp>

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

void OpenCvWorker::receiveGrabFrame()
{
    if(!toggleStream)
        return;

    (*cap) >> _frameOriginal;

    if (_frameOriginal.empty())
        return;

    process();

    QImage output(const_cast<const unsigned char *>(_frameProcessed.data), _frameProcessed.cols, _frameProcessed.rows, QImage::Format_Indexed8);

    emit sendFrame(output);

}

void OpenCvWorker::checkIfDeviceIsOpen(const int device)
{
    if (cap != nullptr) {
        if (cap->isOpened()) cap->release();
        cap->open(device);
    }
}

void OpenCvWorker::process()
{
    cv::cvtColor(_frameOriginal, _frameProcessed, cv::COLOR_BGR2GRAY);

    if(binaryThresholdEnable){
        cv::threshold(_frameProcessed, _frameProcessed, binaryThreshold, 255, cv::THRESH_BINARY);
    }

}

void OpenCvWorker::receiveSetup(const int device)
{

}

void OpenCvWorker::receiveTogleStream()
{

}

void OpenCvWorker::receiveEnableBinaryThreshold()
{

}

void OpenCvWorker::receiveBinaryThreshold(int threshold)
{

}
