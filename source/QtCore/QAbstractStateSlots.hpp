/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTSTATESLOTS_H
#define QABSTRACTSTATESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QAbstractState>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractStateSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractStateSlots( QObject *parent = 0 );
  ~QAbstractStateSlots();
  public slots:
  void entered();
  void exited();
};

#endif /* QABSTRACTSTATESLOTS_H */
