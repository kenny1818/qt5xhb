/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWebEngineViewSlots.h"

QWebEngineViewSlots::QWebEngineViewSlots( QObject *parent ) : QObject( parent )
{
}

QWebEngineViewSlots::~QWebEngineViewSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::loadStarted()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadStarted()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::loadProgress( int progress )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadProgress(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");
    PHB_ITEM pprogress = hb_itemPutNI( NULL, progress );

    hb_vmEvalBlockV( cb, 2, psender, pprogress );

    hb_itemRelease( psender );
    hb_itemRelease( pprogress );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::loadFinished( bool b )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "loadFinished(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");
    PHB_ITEM pb = hb_itemPutL( NULL, b );

    hb_vmEvalBlockV( cb, 2, psender, pb );

    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::titleChanged( const QString & title )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "titleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );

    hb_vmEvalBlockV( cb, 2, psender, ptitle );

    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::urlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "urlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");
    PHB_ITEM purl = Qt5xHb::Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QWebEngineViewSlots::iconUrlChanged( const QUrl & url )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "iconUrlChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBENGINEVIEW");
    PHB_ITEM purl = Qt5xHb::Signals_return_object( (void *) &url, "QURL" );

    hb_vmEvalBlockV( cb, 2, psender, purl );

    hb_itemRelease( psender );
    hb_itemRelease( purl );
  }
}
#endif

void QWebEngineViewSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QWebEngineView * obj = (QWebEngineView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QWebEngineViewSlots * s = QCoreApplication::instance()->findChild<QWebEngineViewSlots*>();

    if( s == NULL )
    {
      s = new QWebEngineViewSlots();
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
