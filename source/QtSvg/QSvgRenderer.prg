/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMATRIX
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZE
#endif

CLASS QSvgRenderer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load
   METHOD render

   METHOD onRepaintNeeded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSvg/QSvgRenderer>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtSvg/QSvgRenderer>
#endif

HB_FUNC_STATIC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QSvgRenderer( QObject * parent = 0 )
    */
    QSvgRenderer * obj = new QSvgRenderer( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QSvgRenderer( const QString & filename, QObject * parent = 0 )
    */
    QSvgRenderer * obj = new QSvgRenderer( PQSTRING(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QSvgRenderer( const QByteArray & contents, QObject * parent = 0 )
    */
    QSvgRenderer * obj = new QSvgRenderer( *PQBYTEARRAY(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QSvgRenderer( QXmlStreamReader * contents, QObject * parent = 0 )
    */
    QSvgRenderer * obj = new QSvgRenderer( PQXMLSTREAMREADER(1), OPQOBJECT(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSVGRENDERER_DELETE )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool animated() const
*/
HB_FUNC_STATIC( QSVGRENDERER_ANIMATED )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->animated() );
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
QRectF boundsOnElement( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_BOUNDSONELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundsOnElement( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
QSize defaultSize() const
*/
HB_FUNC_STATIC( QSVGRENDERER_DEFAULTSIZE )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->defaultSize() );
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
bool elementExists( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_ELEMENTEXISTS )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->elementExists( PQSTRING(1) ) );
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
int framesPerSecond() const
*/
HB_FUNC_STATIC( QSVGRENDERER_FRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->framesPerSecond() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSVGRENDERER_ISVALID )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
}

/*
QMatrix matrixForElement( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_MATRIXFORELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QMatrix * ptr = new QMatrix( obj->matrixForElement( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QMATRIX", true);
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
void setFramesPerSecond( int num )
*/
HB_FUNC_STATIC( QSVGRENDERER_SETFRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFramesPerSecond( PINT(1) );
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

HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    /*
    void setViewBox( const QRect & viewbox )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setViewBox( *PQRECT(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    /*
    void setViewBox( const QRectF & viewbox )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->setViewBox( *PQRECTF(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QRect viewBox() const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOX )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRect * ptr = new QRect( obj->viewBox() );
      Qt5xHb::createReturnClass(ptr, "QRECT", true);
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
QRectF viewBoxF() const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOXF )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->viewBoxF() );
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool load( const QString & filename )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->load( PQSTRING(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    bool load( const QByteArray & contents )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->load( *PQBYTEARRAY(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    /*
    bool load( QXmlStreamReader * contents )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->load( PQXMLSTREAMREADER(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    /*
    void render( QPainter * painter )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->render( PQPAINTER(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    /*
    void render( QPainter * painter, const QRectF & bounds )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->render( PQPAINTER(1), *PQRECTF(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && HB_ISCHAR(2) && (ISQRECTF(3)||HB_ISNIL(3)) )
  {
    /*
    void render( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
    */
    QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->render( PQPAINTER(1), PQSTRING(2), HB_ISNIL(3)? QRectF() : *(QRectF *) Qt5xHb::itemGetPtr(3) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QSvgRendererSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QSVGRENDERER_ONREPAINTNEEDED )
{
  QSvgRendererSlots_connect_signal("repaintNeeded()", "repaintNeeded()");
}

#pragma ENDDUMP
