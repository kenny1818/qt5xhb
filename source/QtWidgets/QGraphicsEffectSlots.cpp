/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsEffectSlots.h"

QGraphicsEffectSlots::QGraphicsEffectSlots( QObject *parent ) : QObject( parent )
{
}

QGraphicsEffectSlots::~QGraphicsEffectSlots()
{
}

void QGraphicsEffectSlots::enabledChanged( bool enabled )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "enabledChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGRAPHICSEFFECT");
    PHB_ITEM penabled = hb_itemPutL( NULL, enabled );

    hb_vmEvalBlockV( cb, 2, psender, penabled );

    hb_itemRelease( psender );
    hb_itemRelease( penabled );
  }
}

void QGraphicsEffectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsEffect * obj = (QGraphicsEffect *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsEffectSlots * s = QCoreApplication::instance()->findChild<QGraphicsEffectSlots*>();

    if( s == NULL )
    {
      s = new QGraphicsEffectSlots();
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
