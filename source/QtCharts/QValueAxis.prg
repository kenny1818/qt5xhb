/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QValueAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete
   METHOD tickCount
   METHOD setTickCount
   METHOD min
   METHOD setMin
   METHOD max
   METHOD setMax
   METHOD labelFormat
   METHOD setLabelFormat
   METHOD minorTickCount
   METHOD setMinorTickCount
   METHOD type
   METHOD setRange
   METHOD applyNiceNumbers

   METHOD onLabelFormatChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onMinorTickCountChanged
   METHOD onRangeChanged
   METHOD onTickCountChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QValueAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QValueAxis>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QValueAxis>
#endif
#endif

using namespace QtCharts;

/*
explicit QValueAxis(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QVALUEAXIS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QValueAxis * obj = new QValueAxis( OPQOBJECT(1,Q_NULLPTR) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
~QValueAxis()
*/
HB_FUNC_STATIC( QVALUEAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

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
int tickCount() const
*/
HB_FUNC_STATIC( QVALUEAXIS_TICKCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->tickCount() );
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
void setTickCount(int count)
*/
HB_FUNC_STATIC( QVALUEAXIS_SETTICKCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTickCount( PINT(1) );
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
qreal min() const
*/
HB_FUNC_STATIC( QVALUEAXIS_MIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->min() );
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
void setMin(qreal min)
*/
HB_FUNC_STATIC( QVALUEAXIS_SETMIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMin( PQREAL(1) );
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
qreal max() const
*/
HB_FUNC_STATIC( QVALUEAXIS_MAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->max() );
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
void setMax(qreal max)
*/
HB_FUNC_STATIC( QVALUEAXIS_SETMAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMax( PQREAL(1) );
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
QString labelFormat() const
*/
HB_FUNC_STATIC( QVALUEAXIS_LABELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->labelFormat() );
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
void setLabelFormat(const QString &format)
*/
HB_FUNC_STATIC( QVALUEAXIS_SETLABELFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setLabelFormat( PQSTRING(1) );
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
int minorTickCount() const
*/
HB_FUNC_STATIC( QVALUEAXIS_MINORTICKCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minorTickCount() );
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
void setMinorTickCount(int count)
*/
HB_FUNC_STATIC( QVALUEAXIS_SETMINORTICKCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setMinorTickCount( PINT(1) );
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
AxisType type() const
*/
HB_FUNC_STATIC( QVALUEAXIS_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

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
void setRange(qreal min, qreal max)
*/
HB_FUNC_STATIC( QVALUEAXIS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setRange( PQREAL(1), PQREAL(2) );
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
void applyNiceNumbers()
*/
HB_FUNC_STATIC( QVALUEAXIS_APPLYNICENUMBERS )
{
  QValueAxis * obj = (QValueAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->applyNiceNumbers();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QValueAxisSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVALUEAXIS_ONLABELFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxisSlots_connect_signal( "labelFormatChanged(QString)", "labelFormatChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVALUEAXIS_ONMAXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxisSlots_connect_signal( "maxChanged(qreal)", "maxChanged(qreal)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVALUEAXIS_ONMINCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxisSlots_connect_signal( "minChanged(qreal)", "minChanged(qreal)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVALUEAXIS_ONMINORTICKCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxisSlots_connect_signal( "minorTickCountChanged(int)", "minorTickCountChanged(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVALUEAXIS_ONRANGECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxisSlots_connect_signal( "rangeChanged(qreal,qreal)", "rangeChanged(qreal,qreal)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVALUEAXIS_ONTICKCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QValueAxisSlots_connect_signal( "tickCountChanged(int)", "tickCountChanged(int)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
