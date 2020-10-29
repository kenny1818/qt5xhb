/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QIMAGE
REQUEST QMATRIX
REQUEST QPAINTENGINE
REQUEST QRECT
REQUEST QSIZE
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD devType
   METHOD width
   METHOD height
   METHOD size
   METHOD rect
   METHOD depth
   METHOD fill
   METHOD mask
   METHOD setMask
   METHOD devicePixelRatio
   METHOD setDevicePixelRatio
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD createHeuristicMask
   METHOD createMaskFromColor
   METHOD scaled
   METHOD scaledToWidth
   METHOD scaledToHeight
   METHOD transformed
   METHOD toImage
   METHOD load
   METHOD loadFromData
   METHOD save
   METHOD convertFromImage
   METHOD copy
   METHOD scroll
   METHOD cacheKey
   METHOD isDetached
   METHOD detach
   METHOD isQBitmap
   METHOD paintEngine
   METHOD defaultDepth
   METHOD grabWindow
   METHOD grabWidget
   METHOD trueMatrix
   METHOD fromImage
   METHOD fromImageReader
   METHOD toVariant
   METHOD fromVariant

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPixmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPixmap>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QPixmap>
#endif

#include <QtGui/QBitmap>
#include <QtCore/QVariant>

/*
QPixmap()
*/
void QPixmap_new1()
{
  QPixmap * obj = new QPixmap();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QPixmap( int width, int height )
*/
void QPixmap_new3()
{
  QPixmap * obj = new QPixmap( PINT(1), PINT(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QPixmap( const QSize & size )
*/
void QPixmap_new4()
{
  QPixmap * obj = new QPixmap( *PQSIZE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QPixmap( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPixmap_new5()
{
  QPixmap * obj = new QPixmap( PQSTRING(1), OPCONSTCHAR(2,0), ISNIL(3)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QPixmap( const QPixmap & pixmap )
*/
void QPixmap_new7()
{
  QPixmap * obj = new QPixmap( *PQPIXMAP(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPixmap_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPixmap_new3();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QPixmap_new4();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_new5();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QPixmap_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPIXMAP_DELETE )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

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
void swap( QPixmap & other )
*/
HB_FUNC_STATIC( QPIXMAP_SWAP )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->swap( *PQPIXMAP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QPIXMAP_ISNULL )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int devType() const
*/
HB_FUNC_STATIC( QPIXMAP_DEVTYPE )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->devType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int width() const
*/
HB_FUNC_STATIC( QPIXMAP_WIDTH )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->width() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int height() const
*/
HB_FUNC_STATIC( QPIXMAP_HEIGHT )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->height() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QSize size() const
*/
HB_FUNC_STATIC( QPIXMAP_SIZE )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->size() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QRect rect() const
*/
HB_FUNC_STATIC( QPIXMAP_RECT )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->rect() );
      Qt5xHb::createReturnClass( ptr, "QRECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int depth() const
*/
HB_FUNC_STATIC( QPIXMAP_DEPTH )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->depth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void fill( const QColor & fillColor = Qt::white )
*/
void QPixmap_fill1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill( ISNIL(1)? Qt::white : *(QColor *) Qt5xHb::itemGetPtr(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill( const QPaintDevice * device, const QPoint & ofs )
*/
void QPixmap_fill2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill( PQPAINTDEVICE(1), *PQPOINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill( const QPaintDevice * device, int xofs, int yofs )
*/
void QPixmap_fill3()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fill( PQPAINTDEVICE(1), PINT(2), PINT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISCHAR(1)||ISNIL(1)) )
  {
    QPixmap_fill1();
  }
  else if( ISNUMPAR(2) && ISOBJECT(1) && ISQPOINT(2) )
  {
    QPixmap_fill2();
  }
  else if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_fill3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QBitmap mask() const
*/
HB_FUNC_STATIC( QPIXMAP_MASK )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBitmap * ptr = new QBitmap( obj->mask() );
      Qt5xHb::createReturnClass( ptr, "QBITMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMask( const QBitmap & )
*/
HB_FUNC_STATIC( QPIXMAP_SETMASK )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBITMAP(1) )
    {
#endif
      obj->setMask( *PQBITMAP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal devicePixelRatio() const
*/
HB_FUNC_STATIC( QPIXMAP_DEVICEPIXELRATIO )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->devicePixelRatio() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDevicePixelRatio( qreal scaleFactor )
*/
HB_FUNC_STATIC( QPIXMAP_SETDEVICEPIXELRATIO )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDevicePixelRatio( PQREAL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAlpha() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHA )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasAlpha() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasAlphaChannel() const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHACHANNEL )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasAlphaChannel() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QBitmap createHeuristicMask( bool clipTight = true ) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEHEURISTICMASK )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      QBitmap * ptr = new QBitmap( obj->createHeuristicMask( OPBOOL(1,true) ) );
      Qt5xHb::createReturnClass( ptr, "QBITMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QBitmap createMaskFromColor( const QColor & maskColor, Qt::MaskMode mode = Qt::MaskInColor ) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      QBitmap * ptr = new QBitmap( obj->createMaskFromColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)), ISNIL(2)? (Qt::MaskMode) Qt::MaskInColor : (Qt::MaskMode) hb_parni(2) ) );
      Qt5xHb::createReturnClass( ptr, "QBITMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap scaled( int w, int h, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
void QPixmap_scaled1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->scaled( PINT(1), PINT(2), ISNIL(3)? (Qt::AspectRatioMode) Qt::IgnoreAspectRatio : (Qt::AspectRatioMode) hb_parni(3), ISNIL(4)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(4) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap scaled( const QSize & s, Qt::AspectRatioMode aspectMode = Qt::IgnoreAspectRatio, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
void QPixmap_scaled2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->scaled( *PQSIZE(1), ISNIL(2)? (Qt::AspectRatioMode) Qt::IgnoreAspectRatio : (Qt::AspectRatioMode) hb_parni(2), ISNIL(3)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(3) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QPixmap_scaled1();
  }
  else if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap scaledToWidth( int w, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOWIDTH )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->scaledToWidth( PINT(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap scaledToHeight( int h, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOHEIGHT )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->scaledToHeight( PINT(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap transformed( const QMatrix &, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
void QPixmap_transformed1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->transformed( *PQMATRIX(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap transformed( const QTransform &, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
void QPixmap_transformed2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->transformed( *PQTRANSFORM(1), ISNIL(2)? (Qt::TransformationMode) Qt::FastTransformation : (Qt::TransformationMode) hb_parni(2) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QPixmap_transformed1();
  }
  else if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QPixmap_transformed2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QImage toImage() const
*/
HB_FUNC_STATIC( QPIXMAP_TOIMAGE )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QImage * ptr = new QImage( obj->toImage() );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool load( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_LOAD )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
    {
#endif
      RBOOL( obj->load( PQSTRING(1), OPCONSTCHAR(2,0), ISNIL(3)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool loadFromData( const uchar * buf, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPixmap_loadFromData1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->loadFromData( PCONSTUCHAR(1), PUINT(2), OPCONSTCHAR(3,0), ISNIL(4)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(4) ) );
  }
}

/*
bool loadFromData( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
void QPixmap_loadFromData2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->loadFromData( *PQBYTEARRAY(1), OPCONSTCHAR(2,0), ISNIL(3)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(3) ) );
  }
}

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QPixmap_loadFromData1();
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_loadFromData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool save( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
void QPixmap_save1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save( PQSTRING(1), OPCONSTCHAR(2,0), OPINT(3,-1) ) );
  }
}

/*
bool save( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
void QPixmap_save2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save( PQIODEVICE(1), OPCONSTCHAR(2,0), OPINT(3,-1) ) );
  }
}

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_save1();
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPixmap_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool convertFromImage( const QImage & img, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_CONVERTFROMIMAGE )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      RBOOL( obj->convertFromImage( *PQIMAGE(1), ISNIL(2)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap copy( int x, int y, int width, int height ) const
*/
void QPixmap_copy1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap copy( const QRect & rect = QRect() ) const
*/
void QPixmap_copy2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy( ISNIL(1)? QRect() : *(QRect *) Qt5xHb::itemGetPtr(1) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
  }
}

HB_FUNC_STATIC( QPIXMAP_COPY )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPixmap_copy1();
  }
  else if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    QPixmap_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void scroll( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
*/
void QPixmap_scroll1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6), ISNIL(7)? 0 : (QRegion *) Qt5xHb::itemGetPtr(7) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
*/
void QPixmap_scroll2()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll( PINT(1), PINT(2), *PQRECT(3), ISNIL(4)? 0 : (QRegion *) Qt5xHb::itemGetPtr(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    QPixmap_scroll1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    QPixmap_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qint64 cacheKey() const
*/
HB_FUNC_STATIC( QPIXMAP_CACHEKEY )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->cacheKey() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isDetached() const
*/
HB_FUNC_STATIC( QPIXMAP_ISDETACHED )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDetached() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void detach()
*/
HB_FUNC_STATIC( QPIXMAP_DETACH )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->detach();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isQBitmap() const
*/
HB_FUNC_STATIC( QPIXMAP_ISQBITMAP )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQBitmap() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPaintEngine * paintEngine() const
*/
HB_FUNC_STATIC( QPIXMAP_PAINTENGINE )
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPaintEngine * ptr = obj->paintEngine();
      Qt5xHb::createReturnClass( ptr, "QPAINTENGINE", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static int defaultDepth()
*/
HB_FUNC_STATIC( QPIXMAP_DEFAULTDEPTH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QPixmap::defaultDepth() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPixmap grabWindow( WId, int x = 0, int y = 0, int w = -1, int h = -1 )
*/
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,5) && ISPOINTER(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
#endif
    QPixmap * ptr = new QPixmap( QPixmap::grabWindow( (WId) hb_parptr(1), OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPixmap grabWidget( QObject * widget, const QRect & rect )
*/
void QPixmap_grabWidget1()
{

  QPixmap * ptr = new QPixmap( QPixmap::grabWidget( PQOBJECT(1), *PQRECT(2) ) );
  Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
}

/*
static QPixmap grabWidget( QObject * widget, int x = 0, int y = 0, int w = -1, int h = -1 )
*/
void QPixmap_grabWidget2()
{

  QPixmap * ptr = new QPixmap( QPixmap::grabWidget( PQOBJECT(1), OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
}

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQRECT(2) )
  {
    QPixmap_grabWidget1();
  }
  else if( ISBETWEEN(1,5) && ISQOBJECT(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    QPixmap_grabWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QMatrix trueMatrix( const QMatrix & m, int w, int h )
*/
void QPixmap_trueMatrix1()
{

  QMatrix * ptr = new QMatrix( QPixmap::trueMatrix( *PQMATRIX(1), PINT(2), PINT(3) ) );
  Qt5xHb::createReturnClass( ptr, "QMATRIX", true );
}

/*
static QTransform trueMatrix( const QTransform & m, int w, int h )
*/
void QPixmap_trueMatrix2()
{

  QTransform * ptr = new QTransform( QPixmap::trueMatrix( *PQTRANSFORM(1), PINT(2), PINT(3) ) );
  Qt5xHb::createReturnClass( ptr, "QTRANSFORM", true );
}

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix1();
  }
  else if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPixmap_trueMatrix2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap fromImage( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISNUM(2)||ISNIL(2)) )
  {
#endif
    QPixmap * ptr = new QPixmap( QPixmap::fromImage( *PQIMAGE(1), ISNIL(2)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(2) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QPixmap fromImageReader( QImageReader * imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGEREADER )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISQIMAGEREADER(1) && (ISNUM(2)||ISNIL(2)) )
  {
#endif
    QPixmap * ptr = new QPixmap( QPixmap::fromImageReader( PQIMAGEREADER(1), ISNIL(2)? (Qt::ImageConversionFlags) Qt::AutoColor : (Qt::ImageConversionFlags) hb_parni(2) ) );
    Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QVariant toVariant()
*/
void QPixmap_toVariant1()
{
  QPixmap * obj = (QPixmap *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QPixmap>( *obj );
    Qt5xHb::createReturnClass( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant( const QPixmap & )
*/
void QPixmap_toVariant2()
{
  QPixmap * pixmap = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QPixmap>( *pixmap );
  Qt5xHb::createReturnClass( variant, "QVARIANT", true );
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QPixmap & )

HB_FUNC_STATIC( QPIXMAP_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QPixmap_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QPixmap_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QPixmap fromVariant( const QVariant & )
*/
HB_FUNC_STATIC( QPIXMAP_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * pixmap = new QPixmap( variant->value<QPixmap>() );
    Qt5xHb::createReturnClass( pixmap, "QPIXMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
