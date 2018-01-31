/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QScatterSeries INHERIT QXYSeries

   METHOD new
   METHOD delete

   METHOD borderColor
   METHOD brush
   METHOD color
   METHOD markerShape
   METHOD markerSize
   METHOD setBorderColor
   METHOD setBrush
   METHOD setColor
   METHOD setMarkerShape
   METHOD setMarkerSize
   METHOD setPen
   METHOD type

   METHOD onBorderColorChanged
   METHOD onColorChanged
   METHOD onMarkerShapeChanged
   METHOD onMarkerSizeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScatterSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScatterSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QScatterSeries>
#endif

using namespace QtCharts;

/*
explicit QScatterSeries(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QSCATTERSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QScatterSeries * o = new QScatterSeries ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QScatterSeries()
*/
HB_FUNC_STATIC( QSCATTERSERIES_DELETE )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
QColor color() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_COLOR )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->color () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColor(const QColor &color)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETCOLOR )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor borderColor() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_BORDERCOLOR )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QColor * ptr = new QColor( obj->borderColor () );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBorderColor(const QColor &color)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETBORDERCOLOR )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
      obj->setBorderColor ( ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1)) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
MarkerShape markerShape() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_MARKERSHAPE )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->markerShape () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMarkerShape(MarkerShape shape)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETMARKERSHAPE )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMarkerShape ( (QScatterSeries::MarkerShape) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal markerSize() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_MARKERSIZE )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->markerSize () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMarkerSize(qreal size)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETMARKERSIZE )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setMarkerSize ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_BRUSH )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->brush () );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETBRUSH )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->setBrush ( *PQBRUSH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QSCATTERSERIES_TYPE )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QSCATTERSERIES_SETPEN )
{
  QScatterSeries * obj = (QScatterSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
      obj->setPen ( *PQPEN(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
