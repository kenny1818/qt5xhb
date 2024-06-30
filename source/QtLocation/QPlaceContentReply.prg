/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACECONTENTREQUEST
#endif

CLASS QPlaceContentReply INHERIT QPlaceReply

   METHOD new
   METHOD delete
   METHOD type
   METHOD totalCount
   METHOD request
   METHOD previousPageRequest
   METHOD nextPageRequest

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlaceContentReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceContentReply>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceContentReply>
#endif
#endif

/*
QPlaceContentReply( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QPlaceContentReply * obj = new QPlaceContentReply( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QPLACECONTENTREPLY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPlaceReply::Type type() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
int totalCount() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_TOTALCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->totalCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPlaceContentRequest request() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_REQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->request() );
      Qt5xHb::createReturnClass(ptr, "QPLACECONTENTREQUEST", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPlaceContentRequest previousPageRequest() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_PREVIOUSPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->previousPageRequest() );
      Qt5xHb::createReturnClass(ptr, "QPLACECONTENTREQUEST", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPlaceContentRequest nextPageRequest() const
*/
HB_FUNC_STATIC( QPLACECONTENTREPLY_NEXTPAGEREQUEST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentReply * obj = (QPlaceContentReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPlaceContentRequest * ptr = new QPlaceContentRequest( obj->nextPageRequest() );
      Qt5xHb::createReturnClass(ptr, "QPLACECONTENTREQUEST", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

#pragma ENDDUMP
