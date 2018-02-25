/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QOAuth2AuthorizationCodeFlow INHERIT QAbstractOAuth2

   METHOD new
   METHOD delete

   METHOD accessTokenUrl
   METHOD grant
   METHOD refreshAccessToken
   METHOD setAccessTokenUrl

   METHOD onAccessTokenUrlChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOAuth2AuthorizationCodeFlow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOAuth2AuthorizationCodeFlow>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOAuth2AuthorizationCodeFlow>
#endif

/*
explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new1 ()
{
  QOAuth2AuthorizationCodeFlow * o = new QOAuth2AuthorizationCodeFlow ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new2 ()
{
  QOAuth2AuthorizationCodeFlow * o = new QOAuth2AuthorizationCodeFlow ( PQNETWORKACCESSMANAGER(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new3 ()
{
  QOAuth2AuthorizationCodeFlow * o = new QOAuth2AuthorizationCodeFlow ( PQSTRING(1), PQNETWORKACCESSMANAGER(2), OPQOBJECT(3,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new4 ()
{
  QOAuth2AuthorizationCodeFlow * o = new QOAuth2AuthorizationCodeFlow ( *PQURL(1), *PQURL(2), PQNETWORKACCESSMANAGER(3), OPQOBJECT(4,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth2AuthorizationCodeFlow_new5 ()
{
  QOAuth2AuthorizationCodeFlow * o = new QOAuth2AuthorizationCodeFlow ( PQSTRING(1), *PQURL(2), *PQURL(3), PQNETWORKACCESSMANAGER(4), OPQOBJECT(5,nullptr) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QOAuth2AuthorizationCodeFlow(QObject *parent = nullptr)
//[2]explicit QOAuth2AuthorizationCodeFlow(QNetworkAccessManager *manager, QObject *parent = nullptr)
//[3]QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, QNetworkAccessManager *manager, QObject *parent = nullptr)
//[4]QOAuth2AuthorizationCodeFlow(const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)
//[5]QOAuth2AuthorizationCodeFlow(const QString &clientIdentifier, const QUrl &authorizationUrl, const QUrl &accessTokenUrl, QNetworkAccessManager *manager, QObject *parent = nullptr)

HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth2AuthorizationCodeFlow_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth2AuthorizationCodeFlow_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQNETWORKACCESSMANAGER(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QOAuth2AuthorizationCodeFlow_new3();
  }
  else if( ISBETWEEN(3,4) && ISQURL(1) && ISQURL(2) && ISQNETWORKACCESSMANAGER(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QOAuth2AuthorizationCodeFlow_new4();
  }
  else if( ISBETWEEN(4,5) && ISCHAR(1) && ISQURL(2) && ISQURL(3) && ISQNETWORKACCESSMANAGER(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QOAuth2AuthorizationCodeFlow_new5();
  }
}

/*
~QOAuth2AuthorizationCodeFlow()
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_DELETE )
{
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl accessTokenUrl() const
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_ACCESSTOKENURL )
{
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUrl * ptr = new QUrl( obj->accessTokenUrl () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAccessTokenUrl(const QUrl &accessTokenUrl)
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_SETACCESSTOKENURL )
{
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQURL(1) )
    {
      obj->setAccessTokenUrl ( *PQURL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grant() override (slot)
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_GRANT )
{
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->grant ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void refreshAccessToken() (slot)
*/
HB_FUNC_STATIC( QOAUTH2AUTHORIZATIONCODEFLOW_REFRESHACCESSTOKEN )
{
  QOAuth2AuthorizationCodeFlow * obj = (QOAuth2AuthorizationCodeFlow *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->refreshAccessToken ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl buildAuthenticateUrl(const QVariantMap &parameters = QVariantMap()) (protected)
*/

/*
void requestAccessToken(const QString &code) (protected)
*/

/*
void resourceOwnerAuthorization(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override (protected)
*/

#pragma ENDDUMP
