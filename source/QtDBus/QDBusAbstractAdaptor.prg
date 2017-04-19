/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QDBusAbstractAdaptor INHERIT QObject

   DATA class_id INIT Class_Id_QDBusAbstractAdaptor
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDBusAbstractAdaptor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDBusAbstractAdaptor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDBusAbstractAdaptor>
#endif

/*
QDBusAbstractAdaptor(QObject *parent)
*/
HB_FUNC_STATIC( QDBUSABSTRACTADAPTOR_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QDBusAbstractAdaptor * o = new QDBusAbstractAdaptor ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDBUSABSTRACTADAPTOR_DELETE )
{
  QDBusAbstractAdaptor * obj = (QDBusAbstractAdaptor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
