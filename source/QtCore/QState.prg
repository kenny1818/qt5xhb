/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
REQUEST QABSTRACTTRANSITION
REQUEST QSIGNALTRANSITION
#endif

CLASS QState INHERIT QAbstractState

   METHOD new
   METHOD delete
   METHOD addTransition
   METHOD assignProperty
   METHOD childMode
   METHOD errorState
   METHOD initialState
   METHOD removeTransition
   METHOD setChildMode
   METHOD setErrorState
   METHOD setInitialState
   METHOD transitions

   METHOD onFinished
   METHOD onPropertiesAssigned

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QState>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QState>
#endif

#include <QtCore/QAbstractTransition>

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||HB_ISNIL(1)) )
  {
    /*
    QState( QState * parent = 0 )
    */
    QState * obj = new QState( OPQSTATE(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && HB_ISNUM(1) && (ISQSTATE(2)||HB_ISNIL(2)) )
  {
    /*
    QState( QState::ChildMode childMode, QState * parent = 0 )
    */
    QState * obj = new QState( (QState::ChildMode) hb_parni(1), OPQSTATE(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSTATE_DELETE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    /*
    void addTransition( QAbstractTransition * transition )
    */
    QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      obj->addTransition( PQABSTRACTTRANSITION(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    /*
    QSignalTransition * addTransition( QObject * sender, const char * signal, QAbstractState * target )
    */
    QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QSignalTransition * ptr = obj->addTransition( PQOBJECT(1), PCONSTCHAR(2), PQABSTRACTSTATE(3) );
      Qt5xHb::createReturnClass(ptr, "QSIGNALTRANSITION", false);
    }
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    /*
    QAbstractTransition * addTransition( QAbstractState * target )
    */
    QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QAbstractTransition * ptr = obj->addTransition( PQABSTRACTSTATE(1) );
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTTRANSITION");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void assignProperty( QObject * object, const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QSTATE_ASSIGNPROPERTY )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQOBJECT(1) && HB_ISCHAR(2) && ISQVARIANT(3) )
    {
#endif
      obj->assignProperty( PQOBJECT(1), PCONSTCHAR(2), *PQVARIANT(3) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QState::ChildMode childMode() const
*/
HB_FUNC_STATIC( QSTATE_CHILDMODE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->childMode() );
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
QAbstractState * errorState() const
*/
HB_FUNC_STATIC( QSTATE_ERRORSTATE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractState * ptr = obj->errorState();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTSTATE");
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
QAbstractState * initialState() const
*/
HB_FUNC_STATIC( QSTATE_INITIALSTATE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractState * ptr = obj->initialState();
      Qt5xHb::createReturnQObjectClass(ptr, "QABSTRACTSTATE");
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
void removeTransition( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_REMOVETRANSITION )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
    {
#endif
      obj->removeTransition( PQABSTRACTTRANSITION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setChildMode( QState::ChildMode mode )
*/
HB_FUNC_STATIC( QSTATE_SETCHILDMODE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setChildMode( (QState::ChildMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setErrorState( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETERRORSTATE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
#endif
      obj->setErrorState( PQABSTRACTSTATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setInitialState( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETINITIALSTATE )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
#endif
      obj->setInitialState( PQABSTRACTSTATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<QAbstractTransition*> transitions() const
*/
HB_FUNC_STATIC( QSTATE_TRANSITIONS )
{
  QState * obj = (QState *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstractTransition*> list = obj->transitions();
      PHB_DYNS pDynSym = hb_dynsymFindName("QABSTRACTTRANSITION");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QABSTRACTTRANSITION", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QStateSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QSTATE_ONFINISHED )
{
  QStateSlots_connect_signal("finished()", "finished()");
}

HB_FUNC_STATIC( QSTATE_ONPROPERTIESASSIGNED )
{
  QStateSlots_connect_signal("propertiesAssigned()", "propertiesAssigned()");
}

#pragma ENDDUMP
