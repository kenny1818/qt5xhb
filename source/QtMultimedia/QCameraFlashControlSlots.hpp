/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCAMERAFLASHCONTROLSLOTS_H
#define QCAMERAFLASHCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QCameraFlashControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QCameraFlashControlSlots: public QObject
{
  Q_OBJECT
  public:
  QCameraFlashControlSlots( QObject *parent = 0 );
  ~QCameraFlashControlSlots();
  public slots:
  void flashReady( bool ready );
};

#endif /* QCAMERAFLASHCONTROLSLOTS_H */
