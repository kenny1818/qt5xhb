/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDBusServiceWatcherSlots.h"

QDBusServiceWatcherSlots::QDBusServiceWatcherSlots( QObject *parent ) : QObject( parent )
{
}

QDBusServiceWatcherSlots::~QDBusServiceWatcherSlots()
{
}

void QDBusServiceWatcherSlots::serviceRegistered( const QString & service )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "serviceRegistered(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDBUSSERVICEWATCHER");
    PHB_ITEM pservice = hb_itemPutC( NULL, QSTRINGTOSTRING(service) );

    hb_vmEvalBlockV( cb, 2, psender, pservice );

    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}

void QDBusServiceWatcherSlots::serviceUnregistered( const QString & service )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "serviceUnregistered(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDBUSSERVICEWATCHER");
    PHB_ITEM pservice = hb_itemPutC( NULL, QSTRINGTOSTRING(service) );

    hb_vmEvalBlockV( cb, 2, psender, pservice );

    hb_itemRelease( psender );
    hb_itemRelease( pservice );
  }
}

void QDBusServiceWatcherSlots::serviceOwnerChanged( const QString & service, const QString & oldOwner, const QString & newOwner )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "serviceOwnerChanged(QString,QString,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDBUSSERVICEWATCHER");
    PHB_ITEM pservice = hb_itemPutC( NULL, QSTRINGTOSTRING(service) );
    PHB_ITEM poldOwner = hb_itemPutC( NULL, QSTRINGTOSTRING(oldOwner) );
    PHB_ITEM pnewOwner = hb_itemPutC( NULL, QSTRINGTOSTRING(newOwner) );

    hb_vmEvalBlockV( cb, 4, psender, pservice, poldOwner, pnewOwner );

    hb_itemRelease( psender );
    hb_itemRelease( pservice );
    hb_itemRelease( poldOwner );
    hb_itemRelease( pnewOwner );
  }
}

void QDBusServiceWatcherSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDBusServiceWatcher * obj = (QDBusServiceWatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDBusServiceWatcherSlots * s = QCoreApplication::instance()->findChild<QDBusServiceWatcherSlots*>();

    if( s == NULL )
    {
      s = new QDBusServiceWatcherSlots();
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
