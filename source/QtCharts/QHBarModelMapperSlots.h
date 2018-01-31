/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QHBARMODELMAPPERSLOTS_H
#define QHBARMODELMAPPERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHBarModelMapper>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class SlotsQHBarModelMapper: public QObject
{
  Q_OBJECT
  public:
  SlotsQHBarModelMapper(QObject *parent = 0);
  ~SlotsQHBarModelMapper();
  public slots:
  void columnCountChanged();
  void firstBarSetRowChanged();
  void firstColumnChanged();
  void lastBarSetRowChanged();
  void modelReplaced();
  void seriesReplaced();
};

#endif /* QHBARMODELMAPPERSLOTS_H */
