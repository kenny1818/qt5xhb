/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QQuickViewSlots.h"

QQuickViewSlots::QQuickViewSlots( QObject *parent ) : QObject( parent )
{
}

QQuickViewSlots::~QQuickViewSlots()
{
}

void QQuickViewSlots::statusChanged( QQuickView::Status status )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "statusChanged(QQuickView::Status)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QQUICKVIEW");
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );

    hb_vmEvalBlockV( cb, 2, psender, pstatus );

    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void QQuickViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QQuickView * obj = (QQuickView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QQuickViewSlots * s = QCoreApplication::instance()->findChild<QQuickViewSlots*>();

    if( s == NULL )
    {
      s = new QQuickViewSlots();
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
