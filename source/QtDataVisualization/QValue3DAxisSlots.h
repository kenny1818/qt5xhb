/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVALUE3DAXISSLOTS_H
#define QVALUE3DAXISSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QValue3DAxis>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQValue3DAxis: public QObject
{
  Q_OBJECT
  public:
  SlotsQValue3DAxis(QObject *parent = 0);
  ~SlotsQValue3DAxis();
  public slots:
  formatterChanged( QValue3DAxisFormatter * formatter )
  labelFormatChanged( const QString & format )
  reversedChanged( bool enable )
  segmentCountChanged( int count )
  subSegmentCountChanged( int count )
};

#endif /* QVALUE3DAXISSLOTS_H */
