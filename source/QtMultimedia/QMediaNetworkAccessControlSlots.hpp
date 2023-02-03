/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMEDIANETWORKACCESSCONTROLSLOTS_H
#define QMEDIANETWORKACCESSCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMediaNetworkAccessControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QMediaNetworkAccessControlSlots: public QObject
{
  Q_OBJECT
  public:
  QMediaNetworkAccessControlSlots( QObject *parent = 0 );
  ~QMediaNetworkAccessControlSlots();
  public slots:
  void configurationChanged( const QNetworkConfiguration & configuration );
};

#endif /* QMEDIANETWORKACCESSCONTROLSLOTS_H */
