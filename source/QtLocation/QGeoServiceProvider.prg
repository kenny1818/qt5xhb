/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCODINGMANAGER
REQUEST QGEOROUTINGMANAGER
REQUEST QPLACEMANAGER
#endif

CLASS QGeoServiceProvider INHERIT QObject

   METHOD delete
   METHOD availableServiceProviders
   METHOD routingFeatures
   METHOD geocodingFeatures
   METHOD mappingFeatures
   METHOD placesFeatures
   METHOD geocodingManager
   METHOD routingManager
   METHOD placeManager
   METHOD error
   METHOD errorString
   METHOD setLocale
   METHOD setAllowExperimental

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoServiceProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoServiceProvider>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoServiceProvider>
#endif
#endif

#include <QGeoCodingManager>
#include <QGeoRoutingManager>
#include <QPlaceManager>

HB_FUNC_STATIC( QGEOSERVICEPROVIDER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

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
static QStringList availableServiceProviders()
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_AVAILABLESERVICEPROVIDERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
    if( ISNUMPAR(0) )
  {
      RQSTRINGLIST( QGeoServiceProvider::availableServiceProviders () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
RoutingFeatures routingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->routingFeatures () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
GeocodingFeatures geocodingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->geocodingFeatures () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
MappingFeatures mappingFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_MAPPINGFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->mappingFeatures () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
PlacesFeatures placesFeatures() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACESFEATURES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->placesFeatures () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoCodingManager *geocodingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_GEOCODINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoCodingManager * ptr = obj->geocodingManager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOCODINGMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGeoMappingManager *mappingManager() const
*/

/*
QGeoRoutingManager *routingManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ROUTINGMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QGeoRoutingManager * ptr = obj->routingManager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QGEOROUTINGMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QPlaceManager *placeManager() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_PLACEMANAGER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPlaceManager * ptr = obj->placeManager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEMANAGER" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
Error error() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
      obj->setLocale ( *PQLOCALE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setAllowExperimental(bool allow)
*/
HB_FUNC_STATIC( QGEOSERVICEPROVIDER_SETALLOWEXPERIMENTAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoServiceProvider * obj = (QGeoServiceProvider *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAllowExperimental ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
