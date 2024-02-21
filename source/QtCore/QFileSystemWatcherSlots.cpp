/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFileSystemWatcherSlots.hpp"

QFileSystemWatcherSlots::QFileSystemWatcherSlots( QObject *parent ) : QObject( parent )
{
}

QFileSystemWatcherSlots::~QFileSystemWatcherSlots()
{
}

void QFileSystemWatcherSlots::directoryChanged( const QString & path )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "directoryChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QFILESYSTEMWATCHER");
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );

    hb_vmEvalBlockV(cb, 2, psender, ppath);

    hb_itemRelease(psender);
    hb_itemRelease( ppath );
  }
}

void QFileSystemWatcherSlots::fileChanged( const QString & path )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "fileChanged(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QFILESYSTEMWATCHER");
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );

    hb_vmEvalBlockV(cb, 2, psender, ppath);

    hb_itemRelease(psender);
    hb_itemRelease( ppath );
  }
}

void QFileSystemWatcherSlots_connect_signal(const QString & signal, const QString & slot)
{
  QFileSystemWatcher * obj = (QFileSystemWatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QFileSystemWatcherSlots * s = QCoreApplication::instance()->findChild<QFileSystemWatcherSlots*>();

    if( s == NULL )
    {
      s = new QFileSystemWatcherSlots();
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
