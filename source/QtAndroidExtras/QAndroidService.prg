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
REQUEST QANDROIDBINDER
#endif

CLASS QAndroidService INHERIT QCoreApplication

   METHOD new
   METHOD delete
   METHOD onBind

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAndroidService
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidService>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtAndroidExtras/QAndroidService>
#endif
#endif

/*
QAndroidService( int & argc, char ** argv )
*/

HB_FUNC_STATIC( QANDROIDSERVICE_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QAndroidService * o = NULL;
  o = new QAndroidService( argc, argv );
  Qt5xHb::returnNewObject( o, false );
}

/*
virtual ~QAndroidService()
*/
HB_FUNC_STATIC( QANDROIDSERVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAndroidService * obj = (QAndroidService *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
virtual QAndroidBinder * onBind( const QAndroidIntent & intent )
*/
HB_FUNC_STATIC( QANDROIDSERVICE_ONBIND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QAndroidService * obj = (QAndroidService *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQANDROIDINTENT(1) )
    {
#endif
      QAndroidBinder * ptr = obj->onBind( *PQANDROIDINTENT(1) );
      Qt5xHb::createReturnClass(ptr, "QANDROIDBINDER", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

#pragma ENDDUMP
