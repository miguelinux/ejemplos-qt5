#ifndef OPENCVWORKER_H
#define OPENCVWORKER_H

#include <QObject>
#include <QImage>

#include <opencv2/core.hpp>
//#include <opencv4/opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>


class OpenCvWorker : public QObject
{
    Q_OBJECT

private:
    cv::Mat _frameOriginal;
    cv::Mat _frameProcessed;
    cv::VideoCapture *cap;

    bool status;
    bool toggleStream;

    bool binaryThresholdEnable;
    int  binaryThreshold;

    void process();

public:
    explicit OpenCvWorker(QObject *parent = nullptr);

    ~OpenCvWorker();

signals:

    void sendFrame(QImage frameProcessed);

public slots:

    void receiveGrabFrame();
    void receiveSetup(const int device);
    void receiveTogleStream();

    void receiveEnableBinaryThreshold();
    void receiveBinaryThreshold(int threshold);

};

#endif // OPENCVWORKER_H
