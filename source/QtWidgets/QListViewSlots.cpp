/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QListViewSlots.h"

QListViewSlots::QListViewSlots( QObject *parent ) : QObject( parent )
{
}

QListViewSlots::~QListViewSlots()
{
}

void QListViewSlots::indexesMoved( const QModelIndexList & indexes )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "indexesMoved(QModelIndexList)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLISTVIEW");
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    PHB_ITEM pindexes = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < indexes.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QModelIndex *) new QModelIndex( indexes [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pindexes, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, pindexes );

    hb_itemRelease( psender );
    hb_itemRelease( pindexes );
  }
}

void QListViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QListView * obj = (QListView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QListViewSlots * s = QCoreApplication::instance()->findChild<QListViewSlots*>();

    if( s == NULL )
    {
      s = new QListViewSlots();
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
