/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPieSliceSlots.h"

static SlotsQPieSlice * s = NULL;

SlotsQPieSlice::SlotsQPieSlice(QObject *parent) : QObject(parent)
{
}

SlotsQPieSlice::~SlotsQPieSlice()
{
}
void SlotsQPieSlice::angleSpanChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "angleSpanChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::borderColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderColorChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::borderWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderWidthChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "brushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::clicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::colorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::doubleClicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::hovered( bool state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutL( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}
void SlotsQPieSlice::labelBrushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelBrushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::labelChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::labelColorChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelColorChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::labelFontChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelFontChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::labelVisibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelVisibleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "penChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::percentageChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "percentageChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::pressed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::released()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::startAngleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "startAngleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQPieSlice::valueChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QPIESLICE_ONANGLESPANCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "angleSpanChanged()", "angleSpanChanged()" ) );
}

HB_FUNC( QPIESLICE_ONBORDERCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "borderColorChanged()", "borderColorChanged()" ) );
}

HB_FUNC( QPIESLICE_ONBORDERWIDTHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "borderWidthChanged()", "borderWidthChanged()" ) );
}

HB_FUNC( QPIESLICE_ONBRUSHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "brushChanged()", "brushChanged()" ) );
}

HB_FUNC( QPIESLICE_ONCLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "clicked()", "clicked()" ) );
}

HB_FUNC( QPIESLICE_ONCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "colorChanged()", "colorChanged()" ) );
}

HB_FUNC( QPIESLICE_ONDOUBLECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "doubleClicked()", "doubleClicked()" ) );
}

HB_FUNC( QPIESLICE_ONHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "hovered(bool)", "hovered(bool)" ) );
}

HB_FUNC( QPIESLICE_ONLABELBRUSHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelBrushChanged()", "labelBrushChanged()" ) );
}

HB_FUNC( QPIESLICE_ONLABELCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelChanged()", "labelChanged()" ) );
}

HB_FUNC( QPIESLICE_ONLABELCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelColorChanged()", "labelColorChanged()" ) );
}

HB_FUNC( QPIESLICE_ONLABELFONTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelFontChanged()", "labelFontChanged()" ) );
}

HB_FUNC( QPIESLICE_ONLABELVISIBLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "labelVisibleChanged()", "labelVisibleChanged()" ) );
}

HB_FUNC( QPIESLICE_ONPENCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "penChanged()", "penChanged()" ) );
}

HB_FUNC( QPIESLICE_ONPERCENTAGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "percentageChanged()", "percentageChanged()" ) );
}

HB_FUNC( QPIESLICE_ONPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "pressed()", "pressed()" ) );
}

HB_FUNC( QPIESLICE_ONRELEASED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "released()", "released()" ) );
}

HB_FUNC( QPIESLICE_ONSTARTANGLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "startAngleChanged()", "startAngleChanged()" ) );
}

HB_FUNC( QPIESLICE_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQPieSlice( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueChanged()", "valueChanged()" ) );
}
