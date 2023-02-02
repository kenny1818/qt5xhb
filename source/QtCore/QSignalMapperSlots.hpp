/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSIGNALMAPPERSLOTS_H
#define QSIGNALMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtWidgets/QWidget>

#include <QtCore/QSignalMapper>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QSignalMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QSignalMapperSlots( QObject *parent = 0 );
  ~QSignalMapperSlots();
  public slots:
  void mapped( int arg );
  void mapped( const QString & arg );
  void mapped( QWidget * arg );
  void mapped( QObject * arg );
};

#endif /* QSIGNALMAPPERSLOTS_H */