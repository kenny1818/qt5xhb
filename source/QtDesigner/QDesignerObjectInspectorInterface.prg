/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerObjectInspectorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDesigner/QDesignerObjectInspectorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDesigner/QDesignerObjectInspectorInterface>
#endif

#include <QtDesigner/QDesignerFormEditorInterface>

HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_DELETE )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_CORE )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormEditorInterface * ptr = obj->core();
      Qt5xHb::createReturnQObjectClass( ptr, "QDESIGNERFORMEDITORINTERFACE" );
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
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_SETFORMWINDOW )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
#endif
      obj->setFormWindow( PQDESIGNERFORMWINDOWINTERFACE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
