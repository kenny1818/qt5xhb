/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QMediaRecorderControl INHERIT QMediaControl

   METHOD delete
   METHOD applySettings
   METHOD duration
   METHOD isMuted
   METHOD outputLocation
   METHOD setOutputLocation
   METHOD state
   METHOD status
   METHOD volume
   METHOD setMuted
   METHOD setState
   METHOD setVolume

   METHOD onActualLocationChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaRecorderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaRecorderControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaRecorderControl>
#endif

#include <QtCore/QUrl>

/*
virtual ~QMediaRecorderControl()
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DELETE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual void applySettings() = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_APPLYSETTINGS )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->applySettings();
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
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_DURATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->duration() );
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
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ISMUTED )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMuted() );
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
virtual QUrl outputLocation() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_OUTPUTLOCATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->outputLocation() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
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
virtual bool setOutputLocation(const QUrl & location) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETOUTPUTLOCATION )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      RBOOL( obj->setOutputLocation( *PQURL(1) ) );
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
virtual QMediaRecorder::State state() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_STATE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
virtual QMediaRecorder::Status status() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_STATUS )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
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
virtual qreal volume() const = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_VOLUME )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->volume() );
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
virtual void setMuted(bool muted) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETMUTED )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMuted( PBOOL(1) );
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
virtual void setState(QMediaRecorder::State state) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETSTATE )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setState( (QMediaRecorder::State) hb_parni(1) );
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
virtual void setVolume(qreal gain) = 0
*/
HB_FUNC_STATIC( QMEDIARECORDERCONTROL_SETVOLUME )
{
  QMediaRecorderControl * obj = (QMediaRecorderControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVolume( PQREAL(1) );
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

void QMediaRecorderControlSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONACTUALLOCATIONCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "actualLocationChanged(QUrl)", "actualLocationChanged(QUrl)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONDURATIONCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "durationChanged(qint64)", "durationChanged(qint64)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONERROR )
{
  QMediaRecorderControlSlots_connect_signal( "error(int,QString)", "error(int,QString)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONMUTEDCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "mutedChanged(bool)", "mutedChanged(bool)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONSTATECHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "stateChanged(QMediaRecorder::State)", "stateChanged(QMediaRecorder::State)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONSTATUSCHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "statusChanged(QMediaRecorder::Status)", "statusChanged(QMediaRecorder::Status)" );
}

HB_FUNC_STATIC( QMEDIARECORDERCONTROL_ONVOLUMECHANGED )
{
  QMediaRecorderControlSlots_connect_signal( "volumeChanged(qreal)", "volumeChanged(qreal)" );
}

#pragma ENDDUMP
