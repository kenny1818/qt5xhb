/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION
#endif

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration

   METHOD onCurrentAnimationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSequentialAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSequentialAnimationGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSequentialAnimationGroup>
#endif

/*
QSequentialAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSequentialAnimationGroup * o = new QSequentialAnimationGroup ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DELETE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPauseAnimation * addPause ( int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_ADDPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QPauseAnimation * ptr = obj->addPause ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractAnimation * currentAnimation () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_CURRENTANIMATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractAnimation * ptr = obj->currentAnimation ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTANIMATION" );
  }
}

/*
QPauseAnimation * insertPause ( int index, int msecs )
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_INSERTPAUSE )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QPauseAnimation * ptr = obj->insertPause ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QPAUSEANIMATION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QSEQUENTIALANIMATIONGROUP_DURATION )
{
  QSequentialAnimationGroup * obj = (QSequentialAnimationGroup *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->duration () );
  }
}

#pragma ENDDUMP
