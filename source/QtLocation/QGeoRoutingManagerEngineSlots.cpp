/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoRoutingManagerEngineSlots.h"

QGeoRoutingManagerEngineSlots::QGeoRoutingManagerEngineSlots( QObject *parent ) : QObject( parent )
{
}

QGeoRoutingManagerEngineSlots::~QGeoRoutingManagerEngineSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoRoutingManagerEngineSlots::finished( QGeoRouteReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished(QGeoRouteReply*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGEOROUTINGMANAGERENGINE" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QGEOROUTEREPLY" );

    hb_vmEvalBlockV( cb, 2, psender, preply );

    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoRoutingManagerEngineSlots::error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QGEOROUTINGMANAGERENGINE" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QGEOROUTEREPLY" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );

    hb_vmEvalBlockV( cb, 4, psender, preply, perror, perrorString );

    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

void QGeoRoutingManagerEngineSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManagerEngine * obj = (QGeoRoutingManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGeoRoutingManagerEngineSlots * s = QCoreApplication::instance()->findChild<QGeoRoutingManagerEngineSlots *>();

    if( s == NULL )
    {
      s = new QGeoRoutingManagerEngineSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
