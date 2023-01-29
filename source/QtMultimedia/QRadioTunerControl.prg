/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QRadioTunerControl INHERIT QMediaControl

   METHOD delete
   METHOD state
   METHOD band
   METHOD setBand
   METHOD isBandSupported
   METHOD frequency
   METHOD frequencyStep
   METHOD setFrequency
   METHOD isStereo
   METHOD stereoMode
   METHOD setStereoMode
   METHOD signalStrength
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD isSearching
   METHOD isAntennaConnected
   METHOD searchForward
   METHOD searchBackward
   METHOD searchAllStations
   METHOD cancelSearch
   METHOD start
   METHOD stop
   METHOD error
   METHOD errorString

   METHOD onStateChanged
   METHOD onBandChanged
   METHOD onFrequencyChanged
   METHOD onStereoStatusChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onError
   METHOD onStationFound
   METHOD onAntennaConnectedChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRadioTunerControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QRadioTunerControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QRadioTunerControl>
#endif

/*
~QRadioTunerControl()
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_DELETE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QRadioTuner::State state() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STATE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QRadioTuner::Band band() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_BAND )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->band() );
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
virtual void setBand( QRadioTuner::Band b ) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETBAND )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBand( (QRadioTuner::Band) hb_parni(1) );
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
virtual bool isBandSupported( QRadioTuner::Band b ) const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISBANDSUPPORTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isBandSupported( (QRadioTuner::Band) hb_parni(1) ) );
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
virtual int frequency() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_FREQUENCY )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->frequency() );
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
virtual int frequencyStep( QRadioTuner::Band b ) const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_FREQUENCYSTEP )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->frequencyStep( (QRadioTuner::Band) hb_parni(1) ) );
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
virtual void setFrequency( int frequency ) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETFREQUENCY )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFrequency( PINT(1) );
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
virtual bool isStereo() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISSTEREO )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isStereo() );
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
virtual QRadioTuner::StereoMode stereoMode() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STEREOMODE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->stereoMode() );
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
virtual void setStereoMode( QRadioTuner::StereoMode mode ) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETSTEREOMODE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setStereoMode( (QRadioTuner::StereoMode) hb_parni(1) );
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
virtual int signalStrength() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SIGNALSTRENGTH )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->signalStrength() );
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
virtual int volume() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_VOLUME )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->volume() );
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
virtual void setVolume( int volume ) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETVOLUME )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVolume( PINT(1) );
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
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISMUTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setMuted( bool muted ) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETMUTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMuted( PBOOL(1) );
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
virtual bool isSearching() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISSEARCHING )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSearching() );
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
virtual bool isAntennaConnected() const
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISANTENNACONNECTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAntennaConnected() );
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
virtual void searchForward() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHFORWARD )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->searchForward();
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
virtual void searchBackward() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHBACKWARD )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->searchBackward();
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
virtual void searchAllStations( QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast ) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHALLSTATIONS )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      obj->searchAllStations( HB_ISNIL(1)? (QRadioTuner::SearchMode) QRadioTuner::SearchFast : (QRadioTuner::SearchMode) hb_parni(1) );
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
virtual void cancelSearch() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_CANCELSEARCH )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancelSearch();
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
virtual void start() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_START )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start();
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
virtual void stop() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STOP )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
virtual QRadioTuner::Error error() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ERROR )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
virtual QString errorString() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ERRORSTRING )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QRadioTunerControlSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONSTATECHANGED )
{
  QRadioTunerControlSlots_connect_signal("stateChanged(QRadioTuner::State)", "stateChanged(QRadioTuner::State)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONBANDCHANGED )
{
  QRadioTunerControlSlots_connect_signal("bandChanged(QRadioTuner::Band)", "bandChanged(QRadioTuner::Band)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONFREQUENCYCHANGED )
{
  QRadioTunerControlSlots_connect_signal("frequencyChanged(int)", "frequencyChanged(int)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONSTEREOSTATUSCHANGED )
{
  QRadioTunerControlSlots_connect_signal("stereoStatusChanged(bool)", "stereoStatusChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONSEARCHINGCHANGED )
{
  QRadioTunerControlSlots_connect_signal("searchingChanged(bool)", "searchingChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONSIGNALSTRENGTHCHANGED )
{
  QRadioTunerControlSlots_connect_signal("signalStrengthChanged(int)", "signalStrengthChanged(int)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONVOLUMECHANGED )
{
  QRadioTunerControlSlots_connect_signal("volumeChanged(int)", "volumeChanged(int)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONMUTEDCHANGED )
{
  QRadioTunerControlSlots_connect_signal("mutedChanged(bool)", "mutedChanged(bool)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONERROR )
{
  QRadioTunerControlSlots_connect_signal("error(QRadioTuner::Error)", "error(QRadioTuner::Error)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONSTATIONFOUND )
{
  QRadioTunerControlSlots_connect_signal("stationFound(int,QString)", "stationFound(int,QString)");
}

HB_FUNC_STATIC( QRADIOTUNERCONTROL_ONANTENNACONNECTEDCHANGED )
{
  QRadioTunerControlSlots_connect_signal("antennaConnectedChanged(bool)", "antennaConnectedChanged(bool)");
}

#pragma ENDDUMP
