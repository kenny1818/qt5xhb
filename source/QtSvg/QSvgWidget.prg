/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QSVGRENDERER
#endif

CLASS QSvgWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD renderer
   METHOD sizeHint
   METHOD load

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSvgWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSvg/QSvgWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtSvg/QSvgWidget>
#endif

#include <QtSvg/QSvgRenderer>

/*
QSvgWidget ( QWidget * parent = 0 )
*/
void QSvgWidget_new1()
{
  QSvgWidget * obj = new QSvgWidget( OPQWIDGET(1,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QSvgWidget ( const QString & file, QWidget * parent = 0 )
*/
void QSvgWidget_new2()
{
  QSvgWidget * obj = new QSvgWidget( PQSTRING(1), OPQWIDGET(2,0) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QSvgWidget ( QWidget * parent = 0 )
[2]QSvgWidget ( const QString & file, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QSVGWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSvgWidget_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QSvgWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSVGWIDGET_DELETE )
{
  QSvgWidget * obj = (QSvgWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QSvgRenderer * renderer () const
*/
HB_FUNC_STATIC( QSVGWIDGET_RENDERER )
{
  QSvgWidget * obj = (QSvgWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSvgRenderer * ptr = obj->renderer();
      Qt5xHb::createReturnQObjectClass( ptr, "QSVGRENDERER" );
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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSVGWIDGET_SIZEHINT )
{
  QSvgWidget * obj = (QSvgWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
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
void load ( const QString & file )
*/
void QSvgWidget_load1()
{
  QSvgWidget * obj = (QSvgWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->load( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QByteArray & contents )
*/
void QSvgWidget_load2()
{
  QSvgWidget * obj = (QSvgWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->load( *PQBYTEARRAY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void load ( const QString & file )
[2]void load ( const QByteArray & contents )
*/

HB_FUNC_STATIC( QSVGWIDGET_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgWidget_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgWidget_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
