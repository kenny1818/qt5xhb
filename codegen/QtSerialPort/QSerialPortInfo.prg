%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QSerialPortInfo

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QString>

$prototype=QSerialPortInfo()
$internalConstructor=5,1,0|new1|

$prototype=QSerialPortInfo(const QSerialPort &port)
$internalConstructor=5,1,0|new2|const QSerialPort &

$prototype=QSerialPortInfo(const QString &name)
$internalConstructor=5,1,0|new3|const QString &

$prototype=QSerialPortInfo(const QSerialPortInfo &other)
$internalConstructor=5,1,0|new4|const QSerialPortInfo &

//[1]QSerialPortInfo()
//[2]QSerialPortInfo(const QSerialPort &port)
//[3]QSerialPortInfo(const QString &name)
//[4]QSerialPortInfo(const QSerialPortInfo &other)

HB_FUNC_STATIC( QSERIALPORTINFO_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(0) )
  {
    QSerialPortInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORT(1) )
  {
    QSerialPortInfo_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSerialPortInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
  {
    QSerialPortInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

$prototype=void swap(QSerialPortInfo &other)
$method=5,1,0|void|swap|QSerialPortInfo &

$prototype=QString portName() const
$method=5,1,0|QString|portName|

$prototype=QString systemLocation() const
$method=5,1,0|QString|systemLocation|

$prototype=QString description() const
$method=5,1,0|QString|description|

$prototype=QString manufacturer() const
$method=5,1,0|QString|manufacturer|

$prototype=quint16 vendorIdentifier() const
$method=5,1,0|quint16|vendorIdentifier|

$prototype=quint16 productIdentifier() const
$method=5,1,0|quint16|productIdentifier|

$prototype=bool hasVendorIdentifier() const
$method=5,1,0|bool|hasVendorIdentifier|

$prototype=bool hasProductIdentifier() const
$method=5,1,0|bool|hasProductIdentifier|

$prototype=bool isNull() const
$method=5,1,0|bool|isNull|

$prototype=bool isBusy() const
$method=5,1,0|bool|isBusy|

$prototype=bool isValid() const
$method=5,1,0|bool|isValid|

$prototype=static QList<qint32> standardBaudRates()
HB_FUNC_STATIC( QSERIALPORTINFO_STANDARDBAUDRATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<qint32> list = QSerialPortInfo::standardBaudRates ();
  _qt5xhb_convert_qlist_qint32_to_array ( list );
#endif
}

$prototype=static QList<QSerialPortInfo> availablePorts()
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

$extraMethods

#pragma ENDDUMP
