/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QDateEdit INHERIT QDateTimeEdit

   DATA class_id INIT Class_Id_QDateEdit
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDateEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDateEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDateEdit>
#endif

/*
QDateEdit ( QWidget * parent = 0 )
*/
void QDateEdit_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QDateEdit * o = new QDateEdit ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDateEdit ( const QDate & date, QWidget * parent = 0 )
*/
void QDateEdit_new2 ()
{
  QDate * par1 = (QDate *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QDateEdit * o = new QDateEdit ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDateEdit ( QWidget * parent = 0 )
//[2]QDateEdit ( const QDate & date, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDateEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDateEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATEEDIT_DELETE )
{
  QDateEdit * obj = (QDateEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

#pragma ENDDUMP
