/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QOAUTH2AUTHORIZATIONCODEFLOWSLOTS_H
#define QOAUTH2AUTHORIZATIONCODEFLOWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth2AuthorizationCodeFlow>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QOAuth2AuthorizationCodeFlowSlots: public QObject
{
  Q_OBJECT
  public:
  QOAuth2AuthorizationCodeFlowSlots( QObject *parent = 0 );
  ~QOAuth2AuthorizationCodeFlowSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  void accessTokenUrlChanged( const QUrl & accessTokenUrl );
#endif
};

#endif /* QOAUTH2AUTHORIZATIONCODEFLOWSLOTS_H */
