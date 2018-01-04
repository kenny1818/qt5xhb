/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPrintPreviewDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD open
   METHOD printer
   METHOD done
   METHOD setVisible

   METHOD onPaintRequested

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintPreviewDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPrintPreviewDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPrintPreviewDialog>
#endif

/*
explicit QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QPrintPreviewDialog_new1 ()
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QPrintPreviewDialog * o = new QPrintPreviewDialog ( PQPRINTER(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QPrintPreviewDialog_new2 ()
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QPrintPreviewDialog * o = new QPrintPreviewDialog ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt5xhb_returnNewObject( o, false );
}

//[1]explicit QPrintPreviewDialog ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]explicit QPrintPreviewDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QPrintPreviewDialog_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QPrintPreviewDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_DELETE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_OPEN )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) && ISCHAR(2) )
    {
      obj->open ( PQOBJECT(1), PCONSTCHAR(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPrinter * printer ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_PRINTER )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPrinter * ptr = obj->printer ();
    _qt5xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}

/*
virtual void done ( int result )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_DONE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->done ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTPREVIEWDIALOG_SETVISIBLE )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
