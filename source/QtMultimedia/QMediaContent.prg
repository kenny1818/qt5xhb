/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAPLAYLIST
REQUEST QMEDIARESOURCE
REQUEST QNETWORKREQUEST
REQUEST QURL
#endif

CLASS QMediaContent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD canonicalRequest
   METHOD canonicalResource
   METHOD canonicalUrl
   METHOD isNull
   METHOD playlist
   METHOD resources

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaContent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaContent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaContent>
#endif

#include <QtMultimedia/QMediaPlaylist>

HB_FUNC_STATIC( QMEDIACONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QMediaContent()
    */
    QMediaContent * obj = new QMediaContent();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    /*
    QMediaContent( const QUrl & contentUrl )
    */
    QMediaContent * obj = new QMediaContent( *PQURL(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    /*
    QMediaContent( const QNetworkRequest & contentRequest )
    */
    QMediaContent * obj = new QMediaContent( *PQNETWORKREQUEST(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQMEDIARESOURCE(1) )
  {
    /*
    QMediaContent( const QMediaResource & contentResource )
    */
    QMediaContent * obj = new QMediaContent( *PQMEDIARESOURCE(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    QMediaContent( const QMediaResourceList & resources )
    */
    QMediaResourceList par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QMediaResource *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    QMediaContent * obj = new QMediaContent( par1 );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    /*
    QMediaContent( const QMediaContent & other )
    */
    QMediaContent * obj = new QMediaContent( *PQMEDIACONTENT(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISBETWEEN(1,3) && ISQMEDIAPLAYLIST(1) && (ISQURL(2)||HB_ISNIL(2)) && ( HB_ISLOG(3)||HB_ISNIL(3)) )
  {
    /*
    QMediaContent( QMediaPlaylist * playlist, const QUrl & contentUrl = QUrl(), bool takeOwnership = false )
    */
    QMediaContent * obj = new QMediaContent( PQMEDIAPLAYLIST(1), HB_ISNIL(2)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(2), OPBOOL(3,false) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QMediaContent()
*/
HB_FUNC_STATIC( QMEDIACONTENT_DELETE )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QNetworkRequest canonicalRequest() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALREQUEST )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkRequest * ptr = new QNetworkRequest( obj->canonicalRequest() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKREQUEST", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMediaResource canonicalResource() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALRESOURCE )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaResource * ptr = new QMediaResource( obj->canonicalResource() );
      Qt5xHb::createReturnClass(ptr, "QMEDIARESOURCE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QUrl canonicalUrl() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_CANONICALURL )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->canonicalUrl() );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_ISNULL )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMediaPlaylist * playlist() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_PLAYLIST )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaPlaylist * ptr = obj->playlist();
      Qt5xHb::createReturnQObjectClass( ptr, "QMEDIAPLAYLIST" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMediaResourceList resources() const
*/
HB_FUNC_STATIC( QMEDIACONTENT_RESOURCES )
{
  QMediaContent * obj = (QMediaContent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaResourceList list = obj->resources();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QMEDIARESOURCE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QMediaResource *) new QMediaResource( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMEDIARESOURCE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMEDIACONTENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QMEDIACONTENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMEDIACONTENT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIACONTENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMEDIACONTENT_NEWFROM );
}

HB_FUNC_STATIC( QMEDIACONTENT_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QMEDIACONTENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
