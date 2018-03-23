/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBarSetSlots.h"

QBarSetSlots::QBarSetSlots(QObject *parent) : QObject(parent)
{
}

QBarSetSlots::~QBarSetSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::borderColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "borderColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "brushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::clicked( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::colorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::doubleClicked( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::hovered( bool status, int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(bool,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstatus, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::labelBrushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelBrushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::labelChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::labelColorChanged( QColor color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelColorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pcolor = Signals_return_object( (void *) &color, "QCOLOR" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::labelFontChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelFontChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "penChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::pressed( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::released( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::valueChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::valuesAdded( int index, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valuesAdded(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pcount );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBarSetSlots::valuesRemoved( int index, int count )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valuesRemoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QBARSET" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    PHB_ITEM pcount = hb_itemPutNI( NULL, count );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pindex, pcount );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
    hb_itemRelease( pcount );
  }
}
#endif

void QBarSetSlots_connect_signal ( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBarSet * obj = (QBarSet *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QBarSetSlots * s = QCoreApplication::instance()->findChild<QBarSetSlots *>();

    if( s == NULL )
    {
      s = new QBarSetSlots();
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
