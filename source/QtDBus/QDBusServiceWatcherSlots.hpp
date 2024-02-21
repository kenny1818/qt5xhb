/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDBUSSERVICEWATCHERSLOTS_H
#define QDBUSSERVICEWATCHERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDBus/QDBusServiceWatcher>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QDBusServiceWatcherSlots: public QObject
{
  Q_OBJECT
  public:
  QDBusServiceWatcherSlots( QObject *parent = 0 );
  ~QDBusServiceWatcherSlots();
  public slots:
  void serviceRegistered( const QString & service );
  void serviceUnregistered( const QString & service );
  void serviceOwnerChanged( const QString & service, const QString & oldOwner, const QString & newOwner );
};

#endif /* QDBUSSERVICEWATCHERSLOTS_H */
