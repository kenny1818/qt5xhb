/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACT3DINPUTHANDLERSLOTS_H
#define QABSTRACT3DINPUTHANDLERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstract3DInputHandler>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstract3DInputHandler: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstract3DInputHandler(QObject *parent = 0);
  ~SlotsQAbstract3DInputHandler();
  public slots:
  void inputViewChanged( QAbstract3DInputHandler::InputView view )
  void positionChanged( const QPoint & position )
  void sceneChanged( Q3DScene * scene )
};

#endif /* QABSTRACT3DINPUTHANDLERSLOTS_H */
