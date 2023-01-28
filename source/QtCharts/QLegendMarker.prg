/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTSERIES
REQUEST QBRUSH
REQUEST QFONT
REQUEST QPEN
#endif

CLASS QLegendMarker INHERIT QObject

   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD labelBrush
   METHOD setLabelBrush
   METHOD font
   METHOD setFont
   METHOD pen
   METHOD setPen
   METHOD brush
   METHOD setBrush
   METHOD isVisible
   METHOD setVisible
   METHOD shape
   METHOD setShape
   METHOD type
   METHOD series

   METHOD onBrushChanged
   METHOD onClicked
   METHOD onFontChanged
   METHOD onHovered
   METHOD onLabelBrushChanged
   METHOD onLabelChanged
   METHOD onPenChanged
   METHOD onShapeChanged
   METHOD onVisibleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QLegendMarker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QLegendMarker>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QLegendMarker>
#endif
#endif

#include <QtCharts/QAbstractSeries>

using namespace QtCharts;

/*
virtual ~QLegendMarker()
*/
HB_FUNC_STATIC( QLEGENDMARKER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString label() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->label() );
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
void setLabel( const QString & label )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setLabel( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBrush labelBrush() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_LABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->labelBrush() );
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
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
void setLabelBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETLABELBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setLabelBrush( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QFont font() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_FONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->font() );
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
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
void setFont( const QFont & font )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setFont( *PQFONT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass(ptr, "QPEN", true);
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
void setPen( const QPen & pen )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass(ptr, "QBRUSH", true);
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
void setBrush( const QBrush & brush )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isVisible() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible() );
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
void setVisible( bool visible )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QLegend::MarkerShape shape() const
*/
HB_FUNC_STATIC( QLEGENDMARKER_SHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->shape() );
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
void setShape( QLegend::MarkerShape shape )
*/
HB_FUNC_STATIC( QLEGENDMARKER_SETSHAPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setShape( (QLegend::MarkerShape) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual QLegendMarker::LegendMarkerType type() = 0
*/
HB_FUNC_STATIC( QLEGENDMARKER_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QAbstractSeries * series() = 0
*/
HB_FUNC_STATIC( QLEGENDMARKER_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarker * obj = (QLegendMarker *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTSERIES");
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

void QLegendMarkerSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QLEGENDMARKER_ONBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("brushChanged()", "brushChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("clicked()", "clicked()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("fontChanged()", "fontChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("hovered(bool)", "hovered(bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONLABELBRUSHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("labelBrushChanged()", "labelBrushChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONLABELCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("labelChanged()", "labelChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("penChanged()", "penChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONSHAPECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QLegendMarkerSlots_connect_signal("shapeChanged()", "shapeChanged()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QLEGENDMARKER_ONVISIBLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QLegendMarkerSlots_connect_signal("visibleChanged()", "visibleChanged()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
