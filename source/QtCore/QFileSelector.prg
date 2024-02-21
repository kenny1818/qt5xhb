/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileSelector INHERIT QObject

   METHOD new
   METHOD delete
   METHOD select
   METHOD extraSelectors
   METHOD setExtraSelectors
   METHOD allSelectors

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileSelector
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QFileSelector>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QFileSelector>
#endif

#include <QtCore/QUrl>

/*
QFileSelector( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QFILESELECTOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QFileSelector * obj = new QFileSelector( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILESELECTOR_DELETE )
{
  QFileSelector * obj = (QFileSelector *) Qt5xHb::itemGetPtrStackSelfItem();

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

HB_FUNC_STATIC( QFILESELECTOR_SELECT )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QString select( const QString & filePath ) const
    */
    QFileSelector * obj = (QFileSelector *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RQSTRING( obj->select( PQSTRING(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    /*
    QUrl select( const QUrl & filePath ) const
    */
    QFileSelector * obj = (QFileSelector *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QUrl * ptr = new QUrl( obj->select( *PQURL(1) ) );
      Qt5xHb::createReturnClass(ptr, "QURL", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList extraSelectors() const
*/
HB_FUNC_STATIC( QFILESELECTOR_EXTRASELECTORS )
{
  QFileSelector * obj = (QFileSelector *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->extraSelectors() );
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
void setExtraSelectors( const QStringList & list )
*/
HB_FUNC_STATIC( QFILESELECTOR_SETEXTRASELECTORS )
{
  QFileSelector * obj = (QFileSelector *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setExtraSelectors( PQSTRINGLIST(1) );
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
QStringList allSelectors() const
*/
HB_FUNC_STATIC( QFILESELECTOR_ALLSELECTORS )
{
  QFileSelector * obj = (QFileSelector *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->allSelectors() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
