#include "cluster.h"

Cluster::Cluster(QObject *parent)
    : QObject{parent}
{
    connect(&m_timer, &QTimer::timeout, this, &Cluster::updateValues);
    m_timer.start(50); // Update every 1 second
}

void Cluster::updateValues()
{
    m_speed += e_speed;

    if(m_speed == 240)
        e_speed = -2;
    if(m_speed == 0)
        e_speed = 2;
    emit speedChanged();

}
