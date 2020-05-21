/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVirtualKeyboardTraceSlots.h"

QVirtualKeyboardTraceSlots::QVirtualKeyboardTraceSlots( QObject *parent ) : QObject( parent )
{
}

QVirtualKeyboardTraceSlots::~QVirtualKeyboardTraceSlots()
{
}

void QVirtualKeyboardTraceSlots::traceIdChanged( int traceId )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "traceIdChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIRTUALKEYBOARDTRACE" );
    PHB_ITEM ptraceId = hb_itemPutNI( NULL, traceId );

    hb_vmEvalBlockV( cb, 2, psender, ptraceId );

    hb_itemRelease( psender );
    hb_itemRelease( ptraceId );
  }
}

void QVirtualKeyboardTraceSlots::channelsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "channelsChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIRTUALKEYBOARDTRACE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QVirtualKeyboardTraceSlots::lengthChanged( int length )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "lengthChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIRTUALKEYBOARDTRACE" );
    PHB_ITEM plength = hb_itemPutNI( NULL, length );

    hb_vmEvalBlockV( cb, 2, psender, plength );

    hb_itemRelease( psender );
    hb_itemRelease( plength );
  }
}

void QVirtualKeyboardTraceSlots::finalChanged( bool isFinal )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "finalChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIRTUALKEYBOARDTRACE" );
    PHB_ITEM pisFinal = hb_itemPutL( NULL, isFinal );

    hb_vmEvalBlockV( cb, 2, psender, pisFinal );

    hb_itemRelease( psender );
    hb_itemRelease( pisFinal );
  }
}

void QVirtualKeyboardTraceSlots::canceledChanged( bool isCanceled )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "canceledChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIRTUALKEYBOARDTRACE" );
    PHB_ITEM pisCanceled = hb_itemPutL( NULL, isCanceled );

    hb_vmEvalBlockV( cb, 2, psender, pisCanceled );

    hb_itemRelease( psender );
    hb_itemRelease( pisCanceled );
  }
}

void QVirtualKeyboardTraceSlots::opacityChanged( qreal opacity )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "opacityChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVIRTUALKEYBOARDTRACE" );
    PHB_ITEM popacity = hb_itemPutND( NULL, opacity );

    hb_vmEvalBlockV( cb, 2, psender, popacity );

    hb_itemRelease( psender );
    hb_itemRelease( popacity );
  }
}

void QVirtualKeyboardTraceSlots_connect_signal( const QString & signal, const QString & slot )
{
  QVirtualKeyboardTrace * obj = (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVirtualKeyboardTraceSlots * s = QCoreApplication::instance()->findChild<QVirtualKeyboardTraceSlots *>();

    if( s == NULL )
    {
      s = new QVirtualKeyboardTraceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
