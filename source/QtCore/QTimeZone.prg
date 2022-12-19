/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QTimeZone

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD id
   METHOD country
   METHOD comment
   METHOD displayName
   METHOD abbreviation
   METHOD offsetFromUtc
   METHOD standardTimeOffset
   METHOD daylightTimeOffset
   METHOD hasDaylightTime
   METHOD isDaylightTime
   METHOD hasTransitions
   METHOD systemTimeZoneId
   METHOD isTimeZoneIdAvailable
   METHOD availableTimeZoneIds1
   METHOD availableTimeZoneIds2
   METHOD availableTimeZoneIds3
   METHOD availableTimeZoneIds
   METHOD ianaIdToWindowsId
   METHOD windowsIdToDefaultIanaId
   METHOD windowsIdToIanaIds

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTimeZone
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtCore/QTimeZone>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtCore/QTimeZone>
#endif
#endif

HB_FUNC_STATIC( QTIMEZONE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTimeZone()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = new QTimeZone();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    QTimeZone( const QByteArray & ianaId )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = new QTimeZone( *PQBYTEARRAY(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QTimeZone( int offsetSeconds )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = new QTimeZone( PINT(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISBETWEEN(4,6) && ISQBYTEARRAY(1) && HB_ISNUM(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && ( HB_ISNUM(5)||HB_ISNIL(5)) && ( HB_ISCHAR(6)||HB_ISNIL(6)) )
  {
    /*
    QTimeZone( const QByteArray & zoneId, int offsetSeconds, const QString & name, const QString & abbreviation, QLocale::Country country = QLocale::AnyCountry, const QString & comment = QString() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = new QTimeZone( *PQBYTEARRAY(1), PINT(2), PQSTRING(3), PQSTRING(4), HB_ISNIL(5)? (QLocale::Country) QLocale::AnyCountry : (QLocale::Country) hb_parni(5), OPQSTRING(6,QString()) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQTIMEZONE(1) )
  {
    /*
    QTimeZone( const QTimeZone & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = new QTimeZone( *PQTIMEZONE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTIMEZONE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void swap( QTimeZone & other )
*/
HB_FUNC_STATIC( QTIMEZONE_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTIMEZONE(1) )
    {
#endif
      obj->swap( *PQTIMEZONE(1) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTIMEZONE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
QByteArray id() const
*/
HB_FUNC_STATIC( QTIMEZONE_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->id() );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QLocale::Country country() const
*/
HB_FUNC_STATIC( QTIMEZONE_COUNTRY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->country() );
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
QString comment() const
*/
HB_FUNC_STATIC( QTIMEZONE_COMMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->comment() );
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

HB_FUNC_STATIC( QTIMEZONE_DISPLAYNAME )
{
  if( ISBETWEEN(1,3) && ISQDATETIME(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) && (ISQLOCALE(3)||HB_ISNIL(3)) )
  {
    /*
    QString displayName( const QDateTime & atDateTime, QTimeZone::NameType nameType = QTimeZone::DefaultName, const QLocale & locale = QLocale() ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RQSTRING( obj->displayName( *PQDATETIME(1), HB_ISNIL(2)? (QTimeZone::NameType) QTimeZone::DefaultName : (QTimeZone::NameType) hb_parni(2), HB_ISNIL(3)? QLocale() : *(QLocale *) Qt5xHb::itemGetPtr(3) ) );
    }
#endif
  }
  else if( ISBETWEEN(1,3) && HB_ISNUM(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) && (ISQLOCALE(3)||HB_ISNIL(3)) )
  {
    /*
    QString displayName( QTimeZone::TimeType timeType, QTimeZone::NameType nameType = QTimeZone::DefaultName, const QLocale & locale = QLocale() ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RQSTRING( obj->displayName( (QTimeZone::TimeType) hb_parni(1), HB_ISNIL(2)? (QTimeZone::NameType) QTimeZone::DefaultName : (QTimeZone::NameType) hb_parni(2), HB_ISNIL(3)? QLocale() : *(QLocale *) Qt5xHb::itemGetPtr(3) ) );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString abbreviation( const QDateTime & atDateTime ) const
*/
HB_FUNC_STATIC( QTIMEZONE_ABBREVIATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RQSTRING( obj->abbreviation( *PQDATETIME(1) ) );
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
int offsetFromUtc( const QDateTime & atDateTime ) const
*/
HB_FUNC_STATIC( QTIMEZONE_OFFSETFROMUTC )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RINT( obj->offsetFromUtc( *PQDATETIME(1) ) );
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
int standardTimeOffset( const QDateTime & atDateTime ) const
*/
HB_FUNC_STATIC( QTIMEZONE_STANDARDTIMEOFFSET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RINT( obj->standardTimeOffset( *PQDATETIME(1) ) );
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
int daylightTimeOffset( const QDateTime & atDateTime ) const
*/
HB_FUNC_STATIC( QTIMEZONE_DAYLIGHTTIMEOFFSET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RINT( obj->daylightTimeOffset( *PQDATETIME(1) ) );
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
bool hasDaylightTime() const
*/
HB_FUNC_STATIC( QTIMEZONE_HASDAYLIGHTTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasDaylightTime() );
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
bool isDaylightTime( const QDateTime & atDateTime ) const
*/
HB_FUNC_STATIC( QTIMEZONE_ISDAYLIGHTTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDATETIME(1) )
    {
#endif
      RBOOL( obj->isDaylightTime( *PQDATETIME(1) ) );
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
bool hasTransitions() const
*/
HB_FUNC_STATIC( QTIMEZONE_HASTRANSITIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QTimeZone * obj = (QTimeZone *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasTransitions() );
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
static QByteArray systemTimeZoneId()
*/
HB_FUNC_STATIC( QTIMEZONE_SYSTEMTIMEZONEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QByteArray * ptr = new QByteArray( QTimeZone::systemTimeZoneId() );
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
static bool isTimeZoneIdAvailable( const QByteArray & ianaId )
*/
HB_FUNC_STATIC( QTIMEZONE_ISTIMEZONEIDAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    RBOOL( QTimeZone::isTimeZoneIdAvailable( *PQBYTEARRAY(1) ) );
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
static QList<QByteArray> availableTimeZoneIds()
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<QByteArray> list = QTimeZone::availableTimeZoneIds();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
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
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
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
static QList<QByteArray> availableTimeZoneIds( QLocale::Country country )
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QList<QByteArray> list = QTimeZone::availableTimeZoneIds( (QLocale::Country) hb_parni(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
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
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
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
static QList<QByteArray> availableTimeZoneIds( int offsetSeconds )
*/
HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
#endif
    QList<QByteArray> list = QTimeZone::availableTimeZoneIds( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
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
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS1 );
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS2 );
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS3 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QByteArray ianaIdToWindowsId( const QByteArray & ianaId )
*/
HB_FUNC_STATIC( QTIMEZONE_IANAIDTOWINDOWSID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    QByteArray * ptr = new QByteArray( QTimeZone::ianaIdToWindowsId( *PQBYTEARRAY(1) ) );
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    static QByteArray windowsIdToDefaultIanaId( const QByteArray & windowsId )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QByteArray * ptr = new QByteArray( QTimeZone::windowsIdToDefaultIanaId( *PQBYTEARRAY(1) ) );
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#endif
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && HB_ISNUM(2) )
  {
    /*
    static QByteArray windowsIdToDefaultIanaId( const QByteArray & windowsId, QLocale::Country country )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QByteArray * ptr = new QByteArray( QTimeZone::windowsIdToDefaultIanaId( *PQBYTEARRAY(1), (QLocale::Country) hb_parni(2) ) );
    Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTOIANAIDS )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    static QList<QByteArray> windowsIdToIanaIds( const QByteArray & windowsId )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QList<QByteArray> list = QTimeZone::windowsIdToIanaIds( *PQBYTEARRAY(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
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
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#endif
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && HB_ISNUM(2) )
  {
    /*
    static QList<QByteArray> windowsIdToIanaIds( const QByteArray & windowsId, QLocale::Country country )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QList<QByteArray> list = QTimeZone::windowsIdToIanaIds( *PQBYTEARRAY(1), (QLocale::Country) hb_parni(2) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
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
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_itemReturnRelease(pArray);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTIMEZONE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QTIMEZONE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTIMEZONE_NEWFROM );
}

HB_FUNC_STATIC( QTIMEZONE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTIMEZONE_NEWFROM );
}

HB_FUNC_STATIC( QTIMEZONE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTIMEZONE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
