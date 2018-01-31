/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLEGENDMARKERSLOTS_H
#define QLEGENDMARKERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLegendMarker>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class SlotsQLegendMarker: public QObject
{
  Q_OBJECT
  public:
  SlotsQLegendMarker(QObject *parent = 0);
  ~SlotsQLegendMarker();
  public slots:
  void brushChanged();
  void clicked();
  void fontChanged();
  void hovered( bool status );
  void labelBrushChanged();
  void labelChanged();
  void penChanged();
  void shapeChanged();
  void visibleChanged();
};

#endif /* QLEGENDMARKERSLOTS_H */
