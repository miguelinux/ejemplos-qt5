#ifndef OPENCVWORKER_H
#define OPENCVWORKER_H

#include <QObject>
#include <QImage>

#include <opencv4/opencv2/core.hpp>
#include <opencv4/opencv2/highgui.hpp>

class OpenCvWorker : public QObject
{
    Q_OBJECT
public:
    explicit OpenCvWorker(QObject *parent = nullptr);

signals:

public slots:
};

#endif // OPENCVWORKER_H
