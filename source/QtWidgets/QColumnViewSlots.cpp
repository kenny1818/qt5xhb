/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QColumnViewSlots.h"

QColumnViewSlots::QColumnViewSlots( QObject *parent ) : QObject( parent )
{
}

QColumnViewSlots::~QColumnViewSlots()
{
}

void QColumnViewSlots::updatePreviewWidget( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "updatePreviewWidget(QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCOLUMNVIEW");
    PHB_ITEM pindex = Qt5xHb::Signals_return_object( (void *) &index, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QColumnViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QColumnView * obj = (QColumnView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QColumnViewSlots * s = QCoreApplication::instance()->findChild<QColumnViewSlots*>();

    if( s == NULL )
    {
      s = new QColumnViewSlots();
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
