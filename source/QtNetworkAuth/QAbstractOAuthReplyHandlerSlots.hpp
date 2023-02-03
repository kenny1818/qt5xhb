/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTOAUTHREPLYHANDLERSLOTS_H
#define QABSTRACTOAUTHREPLYHANDLERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuthReplyHandler>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractOAuthReplyHandlerSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractOAuthReplyHandlerSlots( QObject *parent = 0 );
  ~QAbstractOAuthReplyHandlerSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void callbackDataReceived( const QByteArray & data );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void replyDataReceived( const QByteArray & data );
#endif
};

#endif /* QABSTRACTOAUTHREPLYHANDLERSLOTS_H */
