/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQUICKPAINTEDITEM_H
#define SLOTSQQUICKPAINTEDITEM_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQuickPaintedItem>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQuickPaintedItem: public QObject
{
  Q_OBJECT
  public:
  SlotsQQuickPaintedItem(QObject *parent = 0);
  ~SlotsQQuickPaintedItem();
  public slots:
  void contentsScaleChanged();
  void contentsSizeChanged();
  void fillColorChanged();
  void renderTargetChanged();
};

#endif // SLOTSQQUICKPAINTEDITEM_H