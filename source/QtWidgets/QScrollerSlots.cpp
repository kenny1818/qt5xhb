/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QScrollerSlots.h"

QScrollerSlots::QScrollerSlots( QObject *parent ) : QObject( parent )
{
}

QScrollerSlots::~QScrollerSlots()
{
}

void QScrollerSlots::scrollerPropertiesChanged( const QScrollerProperties & newProperties )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "scrollerPropertiesChanged(QScrollerProperties)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSCROLLER");
    PHB_ITEM pnewProperties = Qt5xHb::Signals_return_object( (void *) &newProperties, "QSCROLLERPROPERTIES" );

    hb_vmEvalBlockV( cb, 2, psender, pnewProperties );

    hb_itemRelease( psender );
    hb_itemRelease( pnewProperties );
  }
}

void QScrollerSlots::stateChanged( QScroller::State newState )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(QScroller::State)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QSCROLLER");
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );

    hb_vmEvalBlockV( cb, 2, psender, pnewState );

    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

void QScrollerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QScroller * obj = (QScroller *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QScrollerSlots * s = QCoreApplication::instance()->findChild<QScrollerSlots*>();

    if( s == NULL )
    {
      s = new QScrollerSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
