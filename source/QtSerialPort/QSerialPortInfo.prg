/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSerialPortInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD swap
   METHOD portName
   METHOD systemLocation
   METHOD description
   METHOD manufacturer
   METHOD vendorIdentifier
   METHOD productIdentifier
   METHOD hasVendorIdentifier
   METHOD hasProductIdentifier
   METHOD isNull
   METHOD isBusy
   METHOD isValid
   METHOD standardBaudRates
   METHOD availablePorts

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSerialPortInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSerialPortInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSerialPortInfo>
#endif
#endif

#include <QString>

/*
QSerialPortInfo()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QSerialPortInfo(const QSerialPort &port)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ( *PQSERIALPORT(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QSerialPortInfo(const QString &name)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ( PQSTRING(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QSerialPortInfo(const QSerialPortInfo &other)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ( *PQSERIALPORTINFO(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}


//[1]QSerialPortInfo()
//[2]QSerialPortInfo(const QSerialPort &port)
//[3]QSerialPortInfo(const QString &name)
//[4]QSerialPortInfo(const QSerialPortInfo &other)

HB_FUNC_STATIC( QSERIALPORTINFO_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSERIALPORT(1) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSERIALPORTINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QSerialPortInfo &other)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSerialPortInfo * par1 = (QSerialPortInfo *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString portName() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_PORTNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->portName () );
  }
#endif
}


/*
QString systemLocation() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_SYSTEMLOCATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->systemLocation () );
  }
#endif
}


/*
QString description() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->description () );
  }
#endif
}


/*
QString manufacturer() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_MANUFACTURER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->manufacturer () );
  }
#endif
}


/*
quint16 vendorIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_VENDORIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->vendorIdentifier () );
  }
#endif
}


/*
quint16 productIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_PRODUCTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT16( obj->productIdentifier () );
  }
#endif
}


/*
bool hasVendorIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_HASVENDORIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasVendorIdentifier () );
  }
#endif
}


/*
bool hasProductIdentifier() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_HASPRODUCTIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasProductIdentifier () );
  }
#endif
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
#endif
}


/*
bool isBusy() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_ISBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBusy () );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QSERIALPORTINFO_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * obj = (QSerialPortInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
#endif
}


/*
static QList<qint32> standardBaudRates()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_STANDARDBAUDRATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<qint32> list = QSerialPortInfo::standardBaudRates ();
  _qt5xhb_convert_qlist_qint32_to_array ( list );
#endif
}


/*
static QList<QSerialPortInfo> availablePorts()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_AVAILABLEPORTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<QSerialPortInfo> list = QSerialPortInfo::availablePorts ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSERIALPORTINFO" );
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
      hb_itemPutPtr( pItem, (QSerialPortInfo *) new QSerialPortInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}



HB_FUNC_STATIC( QSERIALPORTINFO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSERIALPORTINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSERIALPORTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSERIALPORTINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSERIALPORTINFO_NEWFROM );
}

HB_FUNC_STATIC( QSERIALPORTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSERIALPORTINFO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
