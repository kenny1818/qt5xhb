/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QOBJECT
#endif

CLASS QDesignerPropertyEditorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD currentPropertyName
   METHOD isReadOnly
   METHOD object
   METHOD setObject
   METHOD setPropertyValue
   METHOD setReadOnly

   METHOD onPropertyChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerPropertyEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDesigner/QDesignerPropertyEditorInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDesigner/QDesignerPropertyEditorInterface>
#endif

#include <QtDesigner/QDesignerFormEditorInterface>

HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_DELETE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QDesignerFormEditorInterface * core() const
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CORE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual QString currentPropertyName() const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_CURRENTPROPERTYNAME )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->currentPropertyName() );
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
virtual bool isReadOnly() const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_ISREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
virtual QObject * object() const = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_OBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->object();
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
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
virtual void setObject( QObject * object ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETOBJECT )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOBJECT(1) )
    {
#endif
      obj->setObject( PQOBJECT(1) );
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

/*
virtual void setPropertyValue( const QString & name, const QVariant & value, bool changed = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETPROPERTYVALUE )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISQVARIANT(2) && (ISLOG(3)||ISNIL(3)) )
    {
#endif
      obj->setPropertyValue( PQSTRING(1), *PQVARIANT(2), OPBOOL(3,true) );
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

/*
virtual void setReadOnly( bool readOnly ) = 0
*/
HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_SETREADONLY )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setReadOnly( PBOOL(1) );
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

void QDesignerPropertyEditorInterfaceSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDESIGNERPROPERTYEDITORINTERFACE_ONPROPERTYCHANGED )
{
  QDesignerPropertyEditorInterfaceSlots_connect_signal( "propertyChanged(QString,QVariant)", "propertyChanged(QString,QVariant)" );
}

#pragma ENDDUMP
