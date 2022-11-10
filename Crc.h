#ifndef CRC_H
#define CRC_H
#include <QObject>

class Crc
{
public:
    Crc();
     uint16_t ModbusCRC16(QByteArray senddata);
};

#endif // CRC_H
