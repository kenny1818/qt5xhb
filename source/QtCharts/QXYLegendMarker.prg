/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QXYSERIES
#endif

CLASS QXYLegendMarker INHERIT QLegendMarker

   METHOD new
   METHOD delete
   METHOD type
   METHOD series

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXYLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYLegendMarker>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYLegendMarker>
#endif
#endif

using namespace QtCharts;

/*
explicit QXYLegendMarker(QXYSeries *series, QLegend *legend, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QXYLEGENDMARKER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(2,3) && ISQXYSERIES(1) && ISQLEGEND(2) && (ISQOBJECT(3)||HB_ISNIL(3)) )
  {
    QXYLegendMarker * obj = new QXYLegendMarker( PQXYSERIES(1), PQLEGEND(2), OPQOBJECT(3,Q_NULLPTR) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QXYLegendMarker()
*/
HB_FUNC_STATIC( QXYLEGENDMARKER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYLegendMarker * obj = (QXYLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
virtual LegendMarkerType type()
*/
HB_FUNC_STATIC( QXYLEGENDMARKER_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYLegendMarker * obj = (QXYLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
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
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QXYSeries* series()
*/
HB_FUNC_STATIC( QXYLEGENDMARKER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYLegendMarker * obj = (QXYLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXYSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QXYSERIES" );
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

#pragma ENDDUMP
