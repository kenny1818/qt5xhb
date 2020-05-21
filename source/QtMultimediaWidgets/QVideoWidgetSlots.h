/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIDEOWIDGETSLOTS_H
#define QVIDEOWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimediaWidgets/QVideoWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QVideoWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QVideoWidgetSlots( QObject *parent = 0 );
  ~QVideoWidgetSlots();
  public slots:
  void fullScreenChanged( bool fullScreen );
  void brightnessChanged( int brightness );
  void contrastChanged( int contrast );
  void hueChanged( int hue );
  void saturationChanged( int saturation );
};

#endif /* QVIDEOWIDGETSLOTS_H */
