/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QBluetoothTransferManagerSlots.h"


static SlotsQBluetoothTransferManager * s = NULL;

SlotsQBluetoothTransferManager::SlotsQBluetoothTransferManager(QObject *parent) : QObject(parent)
{
}

SlotsQBluetoothTransferManager::~SlotsQBluetoothTransferManager()
{
}

void SlotsQBluetoothTransferManager::finished(QBluetoothTransferReply *reply)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QBluetoothTransferReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QBluetoothTransferReply *) reply );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
#endif
}

HB_FUNC( QBLUETOOTHTRANSFERMANAGER_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQBluetoothTransferManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(QBluetoothTransferReply*)", "finished(QBluetoothTransferReply*)" ) );
#else
  hb_retl(false);
#endif
}
