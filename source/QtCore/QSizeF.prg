/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isEmpty
   METHOD isValid
   METHOD width
   METHOD height
   METHOD setWidth
   METHOD setHeight
   METHOD transpose
   METHOD transposed
   METHOD scale
   METHOD scaled
   METHOD expandedTo
   METHOD boundedTo
   METHOD toSize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSizeF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSizeF>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSizeF>
#endif

/*
QSizeF()
*/
void QSizeF_new1 ()
{
  QSizeF * o = new QSizeF ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSizeF(const QSize &sz)
*/
void QSizeF_new2 ()
{
  QSizeF * o = new QSizeF ( *PQSIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSizeF(qreal w, qreal h)
*/
void QSizeF_new3 ()
{
  QSizeF * o = new QSizeF ( PQREAL(1), PQREAL(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QSizeF()
//[2]QSizeF(const QSize &sz)
//[3]QSizeF(qreal w, qreal h)

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSizeF_new1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QSizeF_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSizeF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIZEF_DELETE )
{
  QSizeF * obj = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool isNull() const
*/
HB_FUNC_STATIC( QSIZEF_ISNULL )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QSIZEF_ISEMPTY )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QSIZEF_ISVALID )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
qreal width() const
*/
HB_FUNC_STATIC( QSIZEF_WIDTH )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->width () );
  }
}

/*
qreal height() const
*/
HB_FUNC_STATIC( QSIZEF_HEIGHT )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->height () );
  }
}

/*
void setWidth(qreal w)
*/
HB_FUNC_STATIC( QSIZEF_SETWIDTH )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWidth ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeight(qreal h)
*/
HB_FUNC_STATIC( QSIZEF_SETHEIGHT )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHeight ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void transpose()
*/
HB_FUNC_STATIC( QSIZEF_TRANSPOSE )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->transpose ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSizeF transposed() const
*/
HB_FUNC_STATIC( QSIZEF_TRANSPOSED )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->transposed () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
void scale(qreal w, qreal h, Qt::AspectRatioMode mode)
*/
void QSizeF_scale1 ()
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale ( PQREAL(1), PQREAL(2), (Qt::AspectRatioMode) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale(const QSizeF &s, Qt::AspectRatioMode mode)
*/
void QSizeF_scale2 ()
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale ( *PQSIZEF(1), (Qt::AspectRatioMode) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void scale(qreal w, qreal h, Qt::AspectRatioMode mode)
//[2]void scale(const QSizeF &s, Qt::AspectRatioMode mode)

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSizeF_scale1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QSizeF_scale2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF scaled(qreal w, qreal h, Qt::AspectRatioMode mode) const
*/
void QSizeF_scaled1 ()
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->scaled ( PQREAL(1), PQREAL(2), (Qt::AspectRatioMode) hb_parni(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
QSizeF scaled(const QSizeF &s, Qt::AspectRatioMode mode) const
*/
void QSizeF_scaled2 ()
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->scaled ( *PQSIZEF(1), (Qt::AspectRatioMode) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

//[1]QSizeF scaled(qreal w, qreal h, Qt::AspectRatioMode mode) const
//[2]QSizeF scaled(const QSizeF &s, Qt::AspectRatioMode mode) const

HB_FUNC_STATIC( QSIZEF_SCALED )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSizeF_scaled1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QSizeF_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizeF expandedTo(const QSizeF &) const
*/
HB_FUNC_STATIC( QSIZEF_EXPANDEDTO )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZEF(1) )
    {
      QSizeF * ptr = new QSizeF( obj->expandedTo ( *PQSIZEF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSizeF boundedTo(const QSizeF &) const
*/
HB_FUNC_STATIC( QSIZEF_BOUNDEDTO )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZEF(1) )
    {
      QSizeF * ptr = new QSizeF( obj->boundedTo ( *PQSIZEF(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize toSize() const
*/
HB_FUNC_STATIC( QSIZEF_TOSIZE )
{
  QSizeF * obj = (QSizeF *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

HB_FUNC_STATIC( QSIZEF_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSIZEF_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
