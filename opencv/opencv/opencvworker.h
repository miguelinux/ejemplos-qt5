#ifndef OPENCVWORKER_H
#define OPENCVWORKER_H

#include <QObject>

class OpenCvWorker : public QObject
{
    Q_OBJECT
public:
    explicit OpenCvWorker(QObject *parent = nullptr);

signals:

public slots:
};

#endif // OPENCVWORKER_H
