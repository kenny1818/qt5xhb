/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QABSTRACTAUDIOINPUT
REQUEST QABSTRACTAUDIOOUTPUT
REQUEST QABSTRACTAUDIODEVICEINFO
#endif

CLASS QAudioSystemPlugin INHERIT QObject,QAudioSystemFactoryInterface

   METHOD delete
   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioSystemPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioSystemPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioSystemPlugin>
#endif


HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_DELETE )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QList<QByteArray> availableDevices(QAudio::Mode) const = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_AVAILABLEDEVICES )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QByteArray> list = obj->availableDevices ( (QAudio::Mode) hb_parni(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QAbstractAudioInput* createInput(const QByteArray& device) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEINPUT )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAudioInput * ptr = obj->createInput ( *PQBYTEARRAY(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIOINPUT" );
  }
}


/*
virtual QAbstractAudioOutput* createOutput(const QByteArray& device) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEOUTPUT )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAudioOutput * ptr = obj->createOutput ( *PQBYTEARRAY(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIOOUTPUT" );
  }
}


/*
virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) = 0
*/
HB_FUNC_STATIC( QAUDIOSYSTEMPLUGIN_CREATEDEVICEINFO )
{
  QAudioSystemPlugin * obj = (QAudioSystemPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractAudioDeviceInfo * ptr = obj->createDeviceInfo ( *PQBYTEARRAY(1), (QAudio::Mode) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTAUDIODEVICEINFO" );
  }
}



#pragma ENDDUMP
