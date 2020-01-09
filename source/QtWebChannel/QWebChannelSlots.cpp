/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebChannelSlots.h"

QWebChannelSlots::QWebChannelSlots(QObject *parent) : QObject(parent)
{
}

QWebChannelSlots::~QWebChannelSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebChannelSlots::blockUpdatesChanged( bool block )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blockUpdatesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWEBCHANNEL" );
    PHB_ITEM pblock = hb_itemPutL( NULL, block );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblock );
    hb_itemRelease( psender );
    hb_itemRelease( pblock );
  }
}
#endif

void QWebChannelSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebChannel * obj = (QWebChannel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QWebChannelSlots * s = QCoreApplication::instance()->findChild<QWebChannelSlots *>();

    if( s == NULL )
    {
      s = new QWebChannelSlots();
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
