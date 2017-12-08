/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionComboBox INHERIT QStyleOptionComplex

   METHOD new

   METHOD editable
   METHOD popupRect
   METHOD frame
   METHOD currentText
   METHOD currentIcon
   METHOD iconSize

   METHOD setEditable
   METHOD setPopupRect
   METHOD setFrame
   METHOD setCurrentText
   METHOD setCurrentIcon
   METHOD setIconSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionComboBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionComboBox>
#endif

/*
QStyleOptionComboBox()
*/
void QStyleOptionComboBox_new1 ()
{
  QStyleOptionComboBox * o = new QStyleOptionComboBox ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionComboBox(const QStyleOptionComboBox &other)
*/
void QStyleOptionComboBox_new2 ()
{
  QStyleOptionComboBox * o = new QStyleOptionComboBox ( *PQSTYLEOPTIONCOMBOBOX(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionComboBox(int version) (protected)
*/

//[1]QStyleOptionComboBox()
//[2]QStyleOptionComboBox(const QStyleOptionComboBox &other)
//[3]QStyleOptionComboBox(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionComboBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONCOMBOBOX(1) )
  {
    QStyleOptionComboBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool editable
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_EDITABLE )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->editable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETEDITABLE )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->editable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect popupRect
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_POPUPRECT )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->popupRect );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETPOPUPRECT )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
      obj->popupRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool frame
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_FRAME )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->frame );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETFRAME )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->frame = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString currentText
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_CURRENTTEXT )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->currentText );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETCURRENTTEXT )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->currentText = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon currentIcon
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_CURRENTICON )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->currentIcon );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETCURRENTICON )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->currentIcon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_ICONSIZE )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONCOMBOBOX_SETICONSIZE )
{
  QStyleOptionComboBox * obj = (QStyleOptionComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->iconSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
