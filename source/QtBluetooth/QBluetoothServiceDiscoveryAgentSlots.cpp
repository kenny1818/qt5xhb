/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBluetoothServiceDiscoveryAgentSlots.h"

QBluetoothServiceDiscoveryAgentSlots::QBluetoothServiceDiscoveryAgentSlots(QObject *parent) : QObject(parent)
{
}

QBluetoothServiceDiscoveryAgentSlots::~QBluetoothServiceDiscoveryAgentSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothServiceDiscoveryAgentSlots::serviceDiscovered( const QBluetoothServiceInfo & info )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serviceDiscovered(QBluetoothServiceInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBLUETOOTHSERVICEDISCOVERYAGENT" );
    PHB_ITEM pinfo = Signals_return_object( (void *) &info, "QBLUETOOTHSERVICEINFO" );
    hb_vmEvalBlockV( cb, 2, psender, pinfo );
    hb_itemRelease( psender );
    hb_itemRelease( pinfo );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothServiceDiscoveryAgentSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBLUETOOTHSERVICEDISCOVERYAGENT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothServiceDiscoveryAgentSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBLUETOOTHSERVICEDISCOVERYAGENT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QBluetoothServiceDiscoveryAgentSlots::error( QBluetoothServiceDiscoveryAgent::Error error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QBluetoothServiceDiscoveryAgent::Error)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBLUETOOTHSERVICEDISCOVERYAGENT" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
#endif

void QBluetoothServiceDiscoveryAgentSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QBluetoothServiceDiscoveryAgent * obj = (QBluetoothServiceDiscoveryAgent *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QBluetoothServiceDiscoveryAgentSlots * s = QCoreApplication::instance()->findChild<QBluetoothServiceDiscoveryAgentSlots *>();

    if( s == NULL )
    {
      s = new QBluetoothServiceDiscoveryAgentSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
