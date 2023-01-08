/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoCodeReplySlots.h"

QGeoCodeReplySlots::QGeoCodeReplySlots( QObject *parent ) : QObject( parent )
{
}

QGeoCodeReplySlots::~QGeoCodeReplySlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoCodeReplySlots::finished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGEOCODEREPLY");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoCodeReplySlots::error( QGeoCodeReply::Error error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QGeoCodeReply::Error,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGEOCODEREPLY");
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );

    hb_vmEvalBlockV( cb, 3, psender, perror, perrorString );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

void QGeoCodeReplySlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoCodeReply * obj = (QGeoCodeReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGeoCodeReplySlots * s = QCoreApplication::instance()->findChild<QGeoCodeReplySlots*>();

    if( s == NULL )
    {
      s = new QGeoCodeReplySlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
