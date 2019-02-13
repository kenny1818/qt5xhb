/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTAPREADING
#endif

CLASS QTapSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnDoubleTapEvents
   METHOD setReturnDoubleTapEvents

   METHOD onReturnDoubleTapEventsChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QTapSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QTapSensor>
#endif
#endif

/*
QTapSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QTAPSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QTapSensor * o = new QTapSensor ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QTAPSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
QTapReading *reading() const
*/
HB_FUNC_STATIC( QTAPSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTapReading * ptr = obj->reading ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QTAPREADING" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool returnDoubleTapEvents() const
*/
HB_FUNC_STATIC( QTAPSENSOR_RETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->returnDoubleTapEvents () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setReturnDoubleTapEvents(bool returnDoubleTapEvents)
*/
HB_FUNC_STATIC( QTAPSENSOR_SETRETURNDOUBLETAPEVENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensor * obj = (QTapSensor *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setReturnDoubleTapEvents ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QTapSensorSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTAPSENSOR_ONRETURNDOUBLETAPEVENTSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTapSensorSlots_connect_signal( "returnDoubleTapEventsChanged(bool)", "returnDoubleTapEventsChanged(bool)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
