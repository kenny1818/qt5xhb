/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLEGENDMARKERSLOTS_H
#define QLEGENDMARKERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QLegendMarker>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

using namespace QtCharts;

class QLegendMarkerSlots: public QObject
{
  Q_OBJECT
  public:
  QLegendMarkerSlots( QObject *parent = 0 );
  ~QLegendMarkerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void brushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void clicked();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void fontChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void hovered( bool status );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelBrushChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void labelChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void penChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  void shapeChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  void visibleChanged();
#endif
};

#endif /* QLEGENDMARKERSLOTS_H */
