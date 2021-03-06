/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QPolarChart INHERIT QChart

   METHOD new
   METHOD delete
   METHOD addAxis
   METHOD axisPolarOrientation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPolarChart
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPolarChart>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QPolarChart>
#endif
#endif

using namespace QtCharts;

/*
explicit QPolarChart(QGraphicsItem *parent = Q_NULLPTR, Qt::WindowFlags wFlags = Qt::WindowFlags())
*/
HB_FUNC_STATIC( QPOLARCHART_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,2) && (ISQGRAPHICSITEM(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QPolarChart * obj = new QPolarChart( ISNIL(1)? Q_NULLPTR : (QGraphicsItem *) Qt5xHb::itemGetPtr(1), ISNIL(2)? (Qt::WindowFlags) Qt::WindowFlags() : (Qt::WindowFlags) hb_parni(2) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QPolarChart()
*/
HB_FUNC_STATIC( QPOLARCHART_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPolarChart * obj = (QPolarChart *) Qt5xHb::itemGetPtrStackSelfItem();

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
void addAxis(QAbstractAxis *axis, PolarOrientation polarOrientation)
*/
HB_FUNC_STATIC( QPOLARCHART_ADDAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPolarChart * obj = (QPolarChart *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQABSTRACTAXIS(1) && ISNUM(2) )
    {
#endif
      obj->addAxis( PQABSTRACTAXIS(1), (QPolarChart::PolarOrientation) hb_parni(2) );
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

/*
QList<QAbstractAxis*> axes(PolarOrientations polarOrientation = PolarOrientations(PolarOrientationRadial | PolarOrientationAngular), QAbstractSeries *series = Q_NULLPTR) const
*/

/*
static PolarOrientation axisPolarOrientation(QAbstractAxis *axis)
*/
HB_FUNC_STATIC( QPOLARCHART_AXISPOLARORIENTATION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQABSTRACTAXIS(1) )
  {
#endif
    RENUM( QPolarChart::axisPolarOrientation( PQABSTRACTAXIS(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
