/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTOAUTHSLOTS_H
#define QABSTRACTOAUTHSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtNetwork/QNetworkReply>

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QAbstractOAuth>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAbstractOAuthSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractOAuthSlots( QObject *parent = 0 );
  ~QAbstractOAuthSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void clientIdentifierChanged( const QString & clientIdentifier );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void tokenChanged( const QString & token );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void statusChanged( QAbstractOAuth::Status status );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void authorizationUrlChanged( const QUrl & url );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void extraTokensChanged( const QVariantMap & tokens );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void contentTypeChanged( QAbstractOAuth::ContentType contentType );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void authorizeWithBrowser( const QUrl & url );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void granted();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void finished( QNetworkReply * reply );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void replyDataReceived( const QByteArray & data );
#endif
};

#endif /* QABSTRACTOAUTHSLOTS_H */
