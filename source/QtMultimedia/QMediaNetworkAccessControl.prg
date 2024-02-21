/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QMediaNetworkAccessControl INHERIT QMediaControl

   METHOD delete
   METHOD currentConfiguration
   METHOD setConfigurations

   METHOD onConfigurationChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaNetworkAccessControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaNetworkAccessControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaNetworkAccessControl>
#endif

/*
virtual ~QMediaNetworkAccessControl()
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_DELETE )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) Qt5xHb::itemGetPtrStackSelfItem();

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

/*
virtual QNetworkConfiguration currentConfiguration() const = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_CURRENTCONFIGURATION )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->currentConfiguration() );
      Qt5xHb::createReturnClass(ptr, "QNETWORKCONFIGURATION", true);
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
virtual void setConfigurations( const QList<QNetworkConfiguration> & configurations ) = 0
*/
HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_SETCONFIGURATIONS )
{
  QMediaNetworkAccessControl * obj = (QMediaNetworkAccessControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QNetworkConfiguration> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *(QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setConfigurations( par1 );
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

void QMediaNetworkAccessControlSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMEDIANETWORKACCESSCONTROL_ONCONFIGURATIONCHANGED )
{
  QMediaNetworkAccessControlSlots_connect_signal("configurationChanged(QNetworkConfiguration)", "configurationChanged(QNetworkConfiguration)");
}

#pragma ENDDUMP
