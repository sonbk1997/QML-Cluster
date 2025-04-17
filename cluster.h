#ifndef CLUSTER_H
#define CLUSTER_H

#include <QObject>
#include <QTimer>

class Cluster : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int speed READ speed NOTIFY speedChanged)
public:
    explicit Cluster(QObject *parent = nullptr);
    int speed() const { return m_speed; }

signals:
    void speedChanged();
private slots:
    void updateValues();
private:
    int m_speed = 0;
    int e_speed = 2;

    QTimer m_timer;
};

#endif // CLUSTER_H
