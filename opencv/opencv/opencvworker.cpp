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
