/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QBarDataItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD rotation
   METHOD setRotation
   METHOD setValue
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBarDataItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBarDataItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBarDataItem>
#endif

/*
QBarDataItem()
*/
void QBarDataItem_new1 ()
{
  QBarDataItem * o = new QBarDataItem ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QBarDataItem(float value)
*/
void QBarDataItem_new2 ()
{
  QBarDataItem * o = new QBarDataItem ( PFLOAT(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBarDataItem(float value, float angle)
*/
void QBarDataItem_new3 ()
{
  QBarDataItem * o = new QBarDataItem ( PFLOAT(1), PFLOAT(2) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QBarDataItem(const QBarDataItem &other)
*/
void QBarDataItem_new4 ()
{
  QBarDataItem * o = new QBarDataItem ( *PQBARDATAITEM(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QBarDataItem()
//[2]QBarDataItem(float value)
//[3]QBarDataItem(float value, float angle)
//[4]QBarDataItem(const QBarDataItem &other)

HB_FUNC_STATIC( QBARDATAITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBarDataItem_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBarDataItem_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBarDataItem_new3();
  }
  else if( ISNUMPAR(1) && ISQBARDATAITEM(1) )
  {
    QBarDataItem_new4();
  }
}

/*
~QBarDataItem()
*/
HB_FUNC_STATIC( QBARDATAITEM_DELETE )
{
  QBarDataItem * obj = (QBarDataItem *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setValue(float val)
*/
HB_FUNC_STATIC( QBARDATAITEM_SETVALUE )
{
  QBarDataItem * obj = (QBarDataItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setValue ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float value() const
*/
HB_FUNC_STATIC( QBARDATAITEM_VALUE )
{
  QBarDataItem * obj = (QBarDataItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->value () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRotation(float angle)
*/
HB_FUNC_STATIC( QBARDATAITEM_SETROTATION )
{
  QBarDataItem * obj = (QBarDataItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setRotation ( PFLOAT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float rotation() const
*/
HB_FUNC_STATIC( QBARDATAITEM_ROTATION )
{
  QBarDataItem * obj = (QBarDataItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RFLOAT( obj->rotation () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void createExtraData() (protected)
*/

HB_FUNC_STATIC( QBARDATAITEM_NEWFROM )
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

HB_FUNC_STATIC( QBARDATAITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBARDATAITEM_NEWFROM );
}

HB_FUNC_STATIC( QBARDATAITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBARDATAITEM_NEWFROM );
}

HB_FUNC_STATIC( QBARDATAITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBARDATAITEM_SETSELFDESTRUCTION )
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
