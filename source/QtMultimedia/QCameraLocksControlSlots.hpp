//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QCAMERALOCKSCONTROLSLOTS_H
#define QCAMERALOCKSCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QCameraLocksControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QCameraLocksControlSlots : public QObject
{
  Q_OBJECT
public:
  QCameraLocksControlSlots(QObject *parent = 0);
  ~QCameraLocksControlSlots();
public slots:
  void lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason);
};

#endif // QCAMERALOCKSCONTROLSLOTS_H
