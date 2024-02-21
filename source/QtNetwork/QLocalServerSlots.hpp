/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLOCALSERVERSLOTS_H
#define QLOCALSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QLocalServer>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QLocalServerSlots : public QObject
{
  Q_OBJECT
public:
  QLocalServerSlots(QObject *parent = 0);
  ~QLocalServerSlots();
public slots:
  void newConnection();
};

#endif /* QLOCALSERVERSLOTS_H */
