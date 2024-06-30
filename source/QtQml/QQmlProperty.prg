/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QMETAPROPERTY
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QQmlProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD read
   METHOD reset
   METHOD type
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QQmlProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQml/QQmlProperty>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtQml/QQmlProperty>
#endif

HB_FUNC_STATIC( QQMLPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QQmlProperty()
    */
    QQmlProperty * obj = new QQmlProperty();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    /*
    QQmlProperty( QObject * obj )
    */
    QQmlProperty * obj = new QQmlProperty( PQOBJECT(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLCONTEXT(2) )
  {
    /*
    QQmlProperty( QObject * obj, QQmlContext * ctxt )
    */
    QQmlProperty * obj = new QQmlProperty( PQOBJECT(1), PQQMLCONTEXT(2) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQQMLENGINE(2) )
  {
    /*
    QQmlProperty( QObject * obj, QQmlEngine * engine )
    */
    QQmlProperty * obj = new QQmlProperty( PQOBJECT(1), PQQMLENGINE(2) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    QQmlProperty( QObject * obj, const QString & name )
    */
    QQmlProperty * obj = new QQmlProperty( PQOBJECT(1), PQSTRING(2) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    /*
    QQmlProperty( QObject * obj, const QString & name, QQmlContext * ctxt )
    */
    QQmlProperty * obj = new QQmlProperty( PQOBJECT(1), PQSTRING(2), PQQMLCONTEXT(3) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQQMLENGINE(3) )
  {
    /*
    QQmlProperty( QObject * obj, const QString & name, QQmlEngine * engine )
    */
    QQmlProperty * obj = new QQmlProperty( PQOBJECT(1), PQSTRING(2), PQQMLENGINE(3) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQQMLPROPERTY(1) )
  {
    /*
    QQmlProperty( const QQmlProperty & other )
    */
    QQmlProperty * obj = new QQmlProperty( *PQQMLPROPERTY(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QQMLPROPERTY_DELETE )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QQMLPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    bool connectNotifySignal( QObject * dest, const char * slot ) const
    */
    QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->connectNotifySignal( PQOBJECT(1), PCONSTCHAR(2) ) );
    }
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2) )
  {
    /*
    bool connectNotifySignal( QObject * dest, int method ) const
    */
    QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->connectNotifySignal( PQOBJECT(1), PINT(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool hasNotifySignal() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_HASNOTIFYSIGNAL )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasNotifySignal() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int index() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_INDEX )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->index() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isDesignable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISDESIGNABLE )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDesignable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isProperty() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISPROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isProperty() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isResettable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISRESETTABLE )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isResettable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isSignalProperty() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISSIGNALPROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSignalProperty() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISVALID )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isWritable() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_ISWRITABLE )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMetaMethod method() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_METHOD )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaMethod * ptr = new QMetaMethod( obj->method() );
      Qt5xHb::createReturnClass(ptr, "QMETAMETHOD", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString name() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_NAME )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool needsNotifySignal() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->needsNotifySignal() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_OBJECT )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->object();
      Qt5xHb::createReturnQObjectClass(ptr, "QOBJECT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QMetaProperty property() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTY )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaProperty * ptr = new QMetaProperty( obj->property() );
      Qt5xHb::createReturnClass(ptr, "QMETAPROPERTY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int propertyType() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPE )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->propertyType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQmlProperty::PropertyTypeCategory propertyTypeCategory() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPECATEGORY )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->propertyTypeCategory() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
const char * propertyTypeName() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_PROPERTYTYPENAME )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( (const char *) obj->propertyTypeName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QQMLPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    /*
    QVariant read() const
    */
    QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QVariant * ptr = new QVariant( obj->read() );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
  {
    /*
    static QVariant read( QObject * object, const QString & name )
    */
    QVariant * ptr = new QVariant( QQmlProperty::read( PQOBJECT(1), PQSTRING(2) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQQMLCONTEXT(3) )
  {
    /*
    static QVariant read( QObject * object, const QString & name, QQmlContext * ctxt )
    */
    QVariant * ptr = new QVariant( QQmlProperty::read( PQOBJECT(1), PQSTRING(2), PQQMLCONTEXT(3) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQQMLENGINE(3) )
  {
    /*
    static QVariant read( QObject * object, const QString & name, QQmlEngine * engine )
    */
    QVariant * ptr = new QVariant( QQmlProperty::read( PQOBJECT(1), PQSTRING(2), PQQMLENGINE(3) ) );
    Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool reset() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_RESET )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->reset() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QQmlProperty::Type type() const
*/
HB_FUNC_STATIC( QQMLPROPERTY_TYPE )
{
  QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QQMLPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    /*
    bool write( const QVariant & value ) const
    */
    QQmlProperty * obj = (QQmlProperty *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RBOOL( obj->write( *PQVARIANT(1) ) );
    }
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value )
    */
    RBOOL( QQmlProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3) ) );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) && ISQQMLCONTEXT(4) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value, QQmlContext * ctxt )
    */
    RBOOL( QQmlProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQQMLCONTEXT(4) ) );
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) && ISQQMLENGINE(4) )
  {
    /*
    static bool write( QObject * object, const QString & name, const QVariant & value, QQmlEngine * engine )
    */
    RBOOL( QQmlProperty::write( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQQMLENGINE(4) ) );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQMLPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QQMLPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQMLPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QQMLPROPERTY_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QQMLPROPERTY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
