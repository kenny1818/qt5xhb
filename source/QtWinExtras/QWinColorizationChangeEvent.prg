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
#endif

CLASS QWinColorizationChangeEvent INHERIT QWinEvent

   METHOD new
   METHOD delete
   METHOD color
   METHOD opaqueBlend

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWinColorizationChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinColorizationChangeEvent>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtras/QWinColorizationChangeEvent>
#endif
#endif

/*
QWinColorizationChangeEvent( QRgb color, bool opaque )
*/
HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2) )
  {
    QWinColorizationChangeEvent * obj = new QWinColorizationChangeEvent( PQRGB(1), PBOOL(2) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinColorizationChangeEvent * obj = (QWinColorizationChangeEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
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
QRgb color() const
*/
HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinColorizationChangeEvent * obj = (QWinColorizationChangeEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQRGB( obj->color() );
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
bool opaqueBlend() const
*/
HB_FUNC_STATIC( QWINCOLORIZATIONCHANGEEVENT_OPAQUEBLEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinColorizationChangeEvent * obj = (QWinColorizationChangeEvent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->opaqueBlend() );
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
