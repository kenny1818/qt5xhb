/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoRectangle INHERIT QGeoShape

   METHOD new
   METHOD delete
   METHOD setTopLeft
   METHOD topLeft
   METHOD setTopRight
   METHOD topRight
   METHOD setBottomLeft
   METHOD bottomLeft
   METHOD setBottomRight
   METHOD bottomRight
   METHOD setCenter
   METHOD center
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height
   METHOD contains
   METHOD intersects
   METHOD translate
   METHOD translated
   METHOD united

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGeoRectangle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoRectangle>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtPositioning/QGeoRectangle>
#endif
#endif

HB_FUNC_STATIC( QGEORECTANGLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QGeoRectangle()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = new QGeoRectangle();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(3) && ISQGEOCOORDINATE(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    QGeoRectangle( const QGeoCoordinate & center, double degreesWidth, double degreesHeight )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = new QGeoRectangle( *PQGEOCOORDINATE(1), PDOUBLE(2), PDOUBLE(3) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(2) && ISQGEOCOORDINATE(1) && ISQGEOCOORDINATE(2) )
  {
    /*
    QGeoRectangle( const QGeoCoordinate & topLeft, const QGeoCoordinate & bottomRight )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = new QGeoRectangle( *PQGEOCOORDINATE(1), *PQGEOCOORDINATE(2) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    /*
    QGeoRectangle( const QGeoRectangle & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = new QGeoRectangle( *PQGEORECTANGLE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    /*
    QGeoRectangle( const QGeoShape & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = new QGeoRectangle( *PQGEOSHAPE(1) );
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGEORECTANGLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setTopLeft( const QGeoCoordinate & topLeft )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETTOPLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setTopLeft( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate topLeft() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TOPLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->topLeft() );
      Qt5xHb::createReturnClass(ptr, "QGEOCOORDINATE", true);
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
void setTopRight( const QGeoCoordinate & topRight )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETTOPRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setTopRight( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate topRight() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TOPRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->topRight() );
      Qt5xHb::createReturnClass(ptr, "QGEOCOORDINATE", true);
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
void setBottomLeft( const QGeoCoordinate & bottomLeft )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETBOTTOMLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setBottomLeft( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate bottomLeft() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_BOTTOMLEFT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->bottomLeft() );
      Qt5xHb::createReturnClass(ptr, "QGEOCOORDINATE", true);
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
void setBottomRight( const QGeoCoordinate & bottomRight )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETBOTTOMRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setBottomRight( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate bottomRight() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_BOTTOMRIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->bottomRight() );
      Qt5xHb::createReturnClass(ptr, "QGEOCOORDINATE", true);
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
void setCenter( const QGeoCoordinate & center )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETCENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
    {
#endif
      obj->setCenter( *PQGEOCOORDINATE(1) );
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
QGeoCoordinate center() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_CENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QGeoCoordinate * ptr = new QGeoCoordinate( obj->center() );
      Qt5xHb::createReturnClass(ptr, "QGEOCOORDINATE", true);
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
void setWidth( double degreesWidth )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETWIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWidth( PDOUBLE(1) );
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
double width() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_WIDTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->width() );
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
void setHeight( double degreesHeight )
*/
HB_FUNC_STATIC( QGEORECTANGLE_SETHEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setHeight( PDOUBLE(1) );
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
double height() const
*/
HB_FUNC_STATIC( QGEORECTANGLE_HEIGHT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->height() );
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

HB_FUNC_STATIC( QGEORECTANGLE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    /*
    bool contains( const QGeoCoordinate & coordinate ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->contains( *PQGEOCOORDINATE(1) ) );
    }
#endif
  }
  else if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
  {
    /*
    bool contains( const QGeoRectangle & rectangle ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->contains( *PQGEORECTANGLE(1) ) );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool intersects( const QGeoRectangle & rectangle ) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_INTERSECTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
#endif
      RBOOL( obj->intersects( *PQGEORECTANGLE(1) ) );
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
void translate( double degreesLatitude, double degreesLongitude )
*/
HB_FUNC_STATIC( QGEORECTANGLE_TRANSLATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->translate( PDOUBLE(1), PDOUBLE(2) );
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
QGeoRectangle translated( double degreesLatitude, double degreesLongitude ) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_TRANSLATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QGeoRectangle * ptr = new QGeoRectangle( obj->translated( PDOUBLE(1), PDOUBLE(2) ) );
      Qt5xHb::createReturnClass(ptr, "QGEORECTANGLE", true);
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
QGeoRectangle united( const QGeoRectangle & rectangle ) const
*/
HB_FUNC_STATIC( QGEORECTANGLE_UNITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoRectangle * obj = (QGeoRectangle *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGEORECTANGLE(1) )
    {
#endif
      QGeoRectangle * ptr = new QGeoRectangle( obj->united( *PQGEORECTANGLE(1) ) );
      Qt5xHb::createReturnClass(ptr, "QGEORECTANGLE", true);
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

#pragma ENDDUMP
