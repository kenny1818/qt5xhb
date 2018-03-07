/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWinThumbnailToolButtonSlots.h"

static QWinThumbnailToolButtonSlots * s = NULL;

QWinThumbnailToolButtonSlots::QWinThumbnailToolButtonSlots(QObject *parent) : QObject(parent)
{
}

QWinThumbnailToolButtonSlots::~QWinThumbnailToolButtonSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QWinThumbnailToolButtonSlots::clicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWINTHUMBNAILTOOLBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QWinThumbnailToolButtonSlots::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QWINTHUMBNAILTOOLBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif

void QWinThumbnailToolButtonSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QWinThumbnailToolButtonSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
