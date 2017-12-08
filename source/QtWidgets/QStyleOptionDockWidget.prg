/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QStyleOptionDockWidget INHERIT QStyleOption

   METHOD new

   METHOD title
   METHOD closable
   METHOD movable
   METHOD floatable
   METHOD verticalTitleBar

   METHOD setTitle
   METHOD setClosable
   METHOD setMovable
   METHOD setFloatable
   METHOD setVerticalTitleBar

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionDockWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStyleOptionDockWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStyleOptionDockWidget>
#endif

/*
QStyleOptionDockWidget()
*/
void QStyleOptionDockWidget_new1 ()
{
  QStyleOptionDockWidget * o = new QStyleOptionDockWidget ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionDockWidget(const QStyleOptionDockWidget &other)
*/
void QStyleOptionDockWidget_new2 ()
{
  QStyleOptionDockWidget * o = new QStyleOptionDockWidget ( *PQSTYLEOPTIONDOCKWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStyleOptionDockWidget(int version) (protected)
*/

//[1]QStyleOptionDockWidget()
//[2]QStyleOptionDockWidget(const QStyleOptionDockWidget &other)
//[3]QStyleOptionDockWidget(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionDockWidget_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONDOCKWIDGET(1) )
  {
    QStyleOptionDockWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString title
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_TITLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->title );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETTITLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->title = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool closable
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_CLOSABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->closable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETCLOSABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->closable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool movable
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_MOVABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->movable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETMOVABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->movable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool floatable
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_FLOATABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->floatable );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETFLOATABLE )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->floatable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool verticalTitleBar
*/
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_VERTICALTITLEBAR )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->verticalTitleBar );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONDOCKWIDGET_SETVERTICALTITLEBAR )
{
  QStyleOptionDockWidget * obj = (QStyleOptionDockWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->verticalTitleBar = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
