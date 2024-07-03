//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTEVENTDISPATCHERSLOTS_H
#define QABSTRACTEVENTDISPATCHERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QAbstractEventDispatcher>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractEventDispatcherSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractEventDispatcherSlots(QObject *parent = 0);
  ~QAbstractEventDispatcherSlots();
public slots:
  void aboutToBlock();
  void awake();
};

#endif // QABSTRACTEVENTDISPATCHERSLOTS_H
