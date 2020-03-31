/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCanBusDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD name
   METHOD hasFlexibleDataRate
   METHOD isVirtual
   METHOD channel
   METHOD description
   METHOD serialNumber

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCanBusDeviceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtSerialBus/QCanBusDeviceInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtSerialBus/QCanBusDeviceInfo>
#endif
#endif

/*
QCanBusDeviceInfo() = delete
*/
void QCanBusDeviceInfo_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * o = new QCanBusDeviceInfo();
  Qt5xHb::returnNewObject( o, true );
#endif
}

/*
QCanBusDeviceInfo(const QCanBusDeviceInfo &other)
*/
void QCanBusDeviceInfo_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * o = new QCanBusDeviceInfo( *PQCANBUSDEVICEINFO(1) );
  Qt5xHb::returnNewObject( o, true );
#endif
}

/*
explicit QCanBusDeviceInfo(QCanBusDeviceInfoPrivate &dd) [private]
*/

//[1]QCanBusDeviceInfo() = delete
//[2]QCanBusDeviceInfo(const QCanBusDeviceInfo &other)

HB_FUNC_STATIC( QCANBUSDEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCanBusDeviceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQCANBUSDEVICEINFO(1) )
  {
    QCanBusDeviceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCanBusDeviceInfo()
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void swap(QCanBusDeviceInfo &other) Q_DECL_NOTHROW
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANBUSDEVICEINFO(1) )
    {
#endif
      obj->swap( *PQCANBUSDEVICEINFO(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString name() const
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool hasFlexibleDataRate() const
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_HASFLEXIBLEDATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasFlexibleDataRate() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool isVirtual() const
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_ISVIRTUAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVirtual() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int QCanBusDeviceInfo::channel() const
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_CHANNEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,11,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->channel() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString QCanBusDeviceInfo::description() const
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,11,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->description() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString QCanBusDeviceInfo::serialNumber() const
*/
HB_FUNC_STATIC( QCANBUSDEVICEINFO_SERIALNUMBER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,11,0))
  QCanBusDeviceInfo * obj = (QCanBusDeviceInfo *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->serialNumber() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

#pragma ENDDUMP
