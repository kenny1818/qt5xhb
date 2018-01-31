/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QXYSERIESSLOTS_H
#define QXYSERIESSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QXYSeries>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

using namespace QtCharts;

class SlotsQXYSeries: public QObject
{
  Q_OBJECT
  public:
  SlotsQXYSeries(QObject *parent = 0);
  ~SlotsQXYSeries();
  public slots:
  void clicked( const QPointF & point );
  void colorChanged( QColor color );
  void doubleClicked( const QPointF & point );
  void hovered( const QPointF & point, bool state );
  void penChanged( const QPen & pen );
  void pointAdded( int index );
  void pointLabelsClippingChanged( bool clipping );
  void pointLabelsColorChanged( const QColor & color );
  void pointLabelsFontChanged( const QFont & font );
  void pointLabelsFormatChanged( const QString & format );
  void pointLabelsVisibilityChanged( bool visible );
  void pointRemoved( int index );
  void pointReplaced( int index );
  void pointsRemoved( int index, int count );
  void pointsReplaced();
  void pressed( const QPointF & point );
  void released( const QPointF & point );
};

#endif /* QXYSERIESSLOTS_H */
