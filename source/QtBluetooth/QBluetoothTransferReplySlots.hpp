/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QBLUETOOTHTRANSFERREPLYSLOTS_H
#define QBLUETOOTHTRANSFERREPLYSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtBluetooth/QBluetoothTransferReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QBluetoothTransferReplySlots: public QObject
{
  Q_OBJECT
  public:
  QBluetoothTransferReplySlots( QObject *parent = 0 );
  ~QBluetoothTransferReplySlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void finished( QBluetoothTransferReply * r );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void transferProgress( qint64 bytesTransferred, qint64 bytesTotal );
#endif
};

#endif /* QBLUETOOTHTRANSFERREPLYSLOTS_H */