/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOSURFACEFORMAT
#endif

CLASS QAbstractVideoSurface INHERIT QObject

   METHOD delete
   METHOD nativeResolution
   METHOD error
   METHOD isActive
   METHOD isFormatSupported
   METHOD nearestFormat
   METHOD present
   METHOD start
   METHOD stop
   METHOD surfaceFormat
   METHOD supportedPixelFormats

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractVideoSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QAbstractVideoSurface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QAbstractVideoSurface>
#endif

#include <QtMultimedia/QVideoSurfaceFormat>

/*
~QAbstractVideoSurface()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_DELETE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QSize nativeResolution() const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NATIVERESOLUTION )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->nativeResolution() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAbstractVideoSurface::Error error() const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ERROR )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
bool isActive() const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISACTIVE )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool isFormatSupported( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_ISFORMATSUPPORTED )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
    {
#endif
      RBOOL( obj->isFormatSupported( *PQVIDEOSURFACEFORMAT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QVideoSurfaceFormat nearestFormat( const QVideoSurfaceFormat & format ) const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_NEARESTFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
    {
#endif
      QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->nearestFormat( *PQVIDEOSURFACEFORMAT(1) ) );
      Qt5xHb::createReturnClass(ptr, "QVIDEOSURFACEFORMAT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool present( const QVideoFrame & frame ) = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_PRESENT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
    {
#endif
      RBOOL( obj->present( *PQVIDEOFRAME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool start( const QVideoSurfaceFormat & format )
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_START )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVIDEOSURFACEFORMAT(1) )
    {
#endif
      RBOOL( obj->start( *PQVIDEOSURFACEFORMAT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void stop()
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_STOP )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVideoSurfaceFormat surfaceFormat() const
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SURFACEFORMAT )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVideoSurfaceFormat * ptr = new QVideoSurfaceFormat( obj->surfaceFormat() );
      Qt5xHb::createReturnClass(ptr, "QVIDEOSURFACEFORMAT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QList<QVideoFrame::PixelFormat> supportedPixelFormats( QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTVIDEOSURFACE_SUPPORTEDPIXELFORMATS )
{
  QAbstractVideoSurface * obj = (QAbstractVideoSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      QList<QVideoFrame::PixelFormat> list = obj->supportedPixelFormats( HB_ISNIL(1)? (QAbstractVideoBuffer::HandleType) QAbstractVideoBuffer::NoHandle : (QAbstractVideoBuffer::HandleType) hb_parni(1) );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, static_cast<int>(list[i]) );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP

