/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOAREAMONITORINFO
REQUEST QGEOPOSITIONINFOSOURCE
#endif

CLASS QGeoAreaMonitorSource INHERIT QObject

   METHOD delete
   METHOD setPositionInfoSource
   METHOD positionInfoSource
   METHOD sourceName
   METHOD error
   METHOD supportedAreaMonitorFeatures
   METHOD startMonitoring
   METHOD stopMonitoring
   METHOD requestUpdate
   METHOD activeMonitors
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onAreaEntered
   METHOD onAreaExited
   METHOD onMonitorExpired
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoAreaMonitorSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoAreaMonitorSource>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoAreaMonitorSource>
#endif
#endif

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual void setPositionInfoSource( QGeoPositionInfoSource * source )
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SETPOSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOPOSITIONINFOSOURCE(1) )
    {
#endif
      obj->setPositionInfoSource( PQGEOPOSITIONINFOSOURCE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
virtual QGeoPositionInfoSource * positionInfoSource() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_POSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoPositionInfoSource * ptr = obj->positionInfoSource();
      Qt5xHb::createReturnClass(ptr, "QGEOPOSITIONINFOSOURCE", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString sourceName() const
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sourceName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual QGeoAreaMonitorSource::Error error() const = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual QGeoAreaMonitorSource::AreaMonitorFeatures supportedAreaMonitorFeatures() const = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_SUPPORTEDAREAMONITORFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedAreaMonitorFeatures() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual bool startMonitoring( const QGeoAreaMonitorInfo & monitor ) = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_STARTMONITORING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
    {
#endif
      RBOOL( obj->startMonitoring( *PQGEOAREAMONITORINFO(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual bool stopMonitoring( const QGeoAreaMonitorInfo & monitor ) = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_STOPMONITORING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOAREAMONITORINFO(1) )
    {
#endif
      RBOOL( obj->stopMonitoring( *PQGEOAREAMONITORINFO(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
virtual bool requestUpdate( const QGeoAreaMonitorInfo & monitor, const char * signal ) = 0
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_REQUESTUPDATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQGEOAREAMONITORINFO(1) && HB_ISCHAR(2) )
    {
#endif
      RBOOL( obj->requestUpdate( *PQGEOAREAMONITORINFO(1), PCONSTCHAR(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS )
{
  if( ISNUMPAR(0) )
  {
    /*
    virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QList<QGeoAreaMonitorInfo> list = obj->activeMonitors();
      PHB_DYNS pDynSym = hb_dynsymFindName("QGEOAREAMONITORINFO");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QGeoAreaMonitorInfo(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QGEOAREAMONITORINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
    }
#endif
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    /*
    virtual QList<QGeoAreaMonitorInfo> activeMonitors( const QGeoShape & lookupArea ) const = 0
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoAreaMonitorSource * obj = (QGeoAreaMonitorSource *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QList<QGeoAreaMonitorInfo> list = obj->activeMonitors( *PQGEOSHAPE(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QGEOAREAMONITORINFO");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QGeoAreaMonitorInfo(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QGEOAREAMONITORINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QGeoAreaMonitorSource * createDefaultSource( QObject * parent )
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_CREATEDEFAULTSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
#endif
    QGeoAreaMonitorSource * ptr = QGeoAreaMonitorSource::createDefaultSource( PQOBJECT(1) );
    Qt5xHb::createReturnQObjectClass(ptr, "QGEOAREAMONITORSOURCE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QGeoAreaMonitorSource * createSource( const QString & sourceName, QObject * parent )
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_CREATESOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2) )
  {
#endif
    QGeoAreaMonitorSource * ptr = QGeoAreaMonitorSource::createSource( PQSTRING(1), PQOBJECT(2) );
    Qt5xHb::createReturnQObjectClass(ptr, "QGEOAREAMONITORSOURCE");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
static QStringList availableSources()
*/
HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_AVAILABLESOURCES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QGeoAreaMonitorSource::availableSources() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

void QGeoAreaMonitorSourceSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONAREAENTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal("areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)", "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONAREAEXITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal("areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)", "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONMONITOREXPIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal("monitorExpired(QGeoAreaMonitorInfo)", "monitorExpired(QGeoAreaMonitorInfo)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoAreaMonitorSourceSlots_connect_signal("error(QGeoAreaMonitorSource::Error)", "error(QGeoAreaMonitorSource::Error)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
