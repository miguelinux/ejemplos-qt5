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

public:
    explicit OpenCvWorker(QObject *parent = nullptr);

signals:

public slots:
};

#endif // OPENCVWORKER_H
