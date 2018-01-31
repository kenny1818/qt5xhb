/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVCANDLESTICKMODELMAPPERSLOTS_H
#define QVCANDLESTICKMODELMAPPERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QVCandlestickModelMapper>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class SlotsQVCandlestickModelMapper: public QObject
{
  Q_OBJECT
  public:
  SlotsQVCandlestickModelMapper(QObject *parent = 0);
  ~SlotsQVCandlestickModelMapper();
  public slots:
  void closeRowChanged();
  void firstSetColumnChanged();
  void highRowChanged();
  void lastSetColumnChanged();
  void lowRowChanged();
  void openRowChanged();
  void timestampRowChanged();
};

#endif /* QVCANDLESTICKMODELMAPPERSLOTS_H */
