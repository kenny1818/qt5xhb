/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMENUSLOTS_H
#define QMENUSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QMenu>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QMenuSlots: public QObject
{
  Q_OBJECT
  public:
  QMenuSlots( QObject *parent = 0 );
  ~QMenuSlots();
  public slots:
  void aboutToHide();
  void aboutToShow();
  void hovered( QAction * action );
  void triggered( QAction * action );
};

#endif /* QMENUSLOTS_H */