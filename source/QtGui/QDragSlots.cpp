/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDragSlots.h"

QDragSlots::QDragSlots( QObject *parent ) : QObject( parent )
{
}

QDragSlots::~QDragSlots()
{
}

void QDragSlots::actionChanged( Qt::DropAction action )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "actionChanged(Qt::DropAction)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDRAG" );
    PHB_ITEM paction = hb_itemPutNI( NULL, (int) action );

    hb_vmEvalBlockV( cb, 2, psender, paction );

    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QDragSlots::targetChanged( QObject * newTarget )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "targetChanged(QObject*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QDRAG" );
    PHB_ITEM pnewTarget = Signals_return_qobject( (QObject *) newTarget, "QOBJECT" );

    hb_vmEvalBlockV( cb, 2, psender, pnewTarget );

    hb_itemRelease( psender );
    hb_itemRelease( pnewTarget );
  }
}

void QDragSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDrag * obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDragSlots * s = QCoreApplication::instance()->findChild<QDragSlots *>();

    if( s == NULL )
    {
      s = new QDragSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
