/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOADDRESS
REQUEST QGEOCOORDINATE
REQUEST QGEORECTANGLE
#endif

CLASS QGeoLocation

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD address
   METHOD setAddress
   METHOD coordinate
   METHOD setCoordinate
   METHOD boundingBox
   METHOD setBoundingBox
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoLocation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoLocation>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoLocation>
#endif
#endif

#include <QGeoAddress>
#include <QGeoCoordinate>
#include <QGeoRectangle>

/*
QGeoLocation()
*/
void QGeoLocation_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * o = new QGeoLocation ();
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QGeoLocation(const QGeoLocation &other)
*/
void QGeoLocation_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * o = new QGeoLocation ( *PQGEOLOCATION(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]QGeoLocation()
//[2]QGeoLocation(const QGeoLocation &other)

HB_FUNC_STATIC( QGEOLOCATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGeoLocation_new1();
  }
  else if( ISNUMPAR(1) && ISQGEOLOCATION(1) )
  {
    QGeoLocation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOLOCATION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

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
QGeoAddress address() const
*/
HB_FUNC_STATIC( QGEOLOCATION_ADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoAddress * ptr = new QGeoAddress( obj->address () );
      _qt5xhb_createReturnClass ( ptr, "QGEOADDRESS", true );
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
void setAddress(const QGeoAddress &address)
*/
HB_FUNC_STATIC( QGEOLOCATION_SETADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOADDRESS(1) )
    {
#endif
      obj->setAddress ( *PQGEOADDRESS(1) );
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
QGeoCoordinate coordinate() const
*/
HB_FUNC_STATIC( QGEOLOCATION_COORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->coordinate () );
      _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
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
void setCoordinate(const QGeoCoordinate &position)
*/
HB_FUNC_STATIC( QGEOLOCATION_SETCOORDINATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setCoordinate ( *PQGEOCOORDINATE(1) );
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
QGeoRectangle boundingBox() const
*/
HB_FUNC_STATIC( QGEOLOCATION_BOUNDINGBOX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoRectangle * ptr = new QGeoRectangle( obj->boundingBox () );
      _qt5xhb_createReturnClass ( ptr, "QGEORECTANGLE", true );
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
void setBoundingBox(const QGeoRectangle &box)
*/
HB_FUNC_STATIC( QGEOLOCATION_SETBOUNDINGBOX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
#endif
      obj->setBoundingBox ( *PQGEORECTANGLE(1) );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QGEOLOCATION_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoLocation * obj = (QGeoLocation *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty () );
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

HB_FUNC_STATIC( QGEOLOCATION_NEWFROM )
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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGEOLOCATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOLOCATION_NEWFROM );
}

HB_FUNC_STATIC( QGEOLOCATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOLOCATION_NEWFROM );
}

HB_FUNC_STATIC( QGEOLOCATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOLOCATION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
