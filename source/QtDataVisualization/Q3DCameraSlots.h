/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef Q3DCAMERASLOTS_H
#define Q3DCAMERASLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <Q3DCamera>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQ3DCamera: public QObject
{
  Q_OBJECT
  public:
  SlotsQ3DCamera(QObject *parent = 0);
  ~SlotsQ3DCamera();
  public slots:
  void cameraPresetChanged( Q3DCamera::CameraPreset preset );
  void maxZoomLevelChanged( float zoomLevel );
  void minZoomLevelChanged( float zoomLevel );
  void targetChanged( const QVector3D & target );
  void wrapXRotationChanged( bool isEnabled );
  void wrapYRotationChanged( bool isEnabled );
  void xRotationChanged( float rotation );
  void yRotationChanged( float rotation );
  void zoomLevelChanged( float zoomLevel );
};

#endif /* Q3DCAMERASLOTS_H */
