/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QAccessibleTextInsertEvent INHERIT QAccessibleTextCursorEvent

   DATA class_id INIT Class_Id_QAccessibleTextInsertEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD textInserted
   METHOD changePosition

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTextInsertEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTextInsertEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTextInsertEvent>
#endif

/*
QAccessibleTextInsertEvent(QObject *obj, int position, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QString par3 = QLatin1String( hb_parc(3) );
  QAccessibleTextInsertEvent * o = new QAccessibleTextInsertEvent ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_DELETE )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString textInserted() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_TEXTINSERTED )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->textInserted (  ).toLatin1().data() );
  }
}


/*
int changePosition() const
*/
HB_FUNC_STATIC( QACCESSIBLETEXTINSERTEVENT_CHANGEPOSITION )
{
  QAccessibleTextInsertEvent * obj = (QAccessibleTextInsertEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->changePosition (  ) );
  }
}



#pragma ENDDUMP
