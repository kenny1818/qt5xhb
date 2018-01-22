/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QRadioTunerControl INHERIT QMediaControl

   METHOD delete

   METHOD band
   METHOD cancelSearch
   METHOD error
   METHOD errorString
   METHOD frequency
   METHOD frequencyStep
   METHOD isAntennaConnected
   METHOD isBandSupported
   METHOD isMuted
   METHOD isSearching
   METHOD isStereo
   METHOD searchAllStations
   METHOD searchBackward
   METHOD searchForward
   METHOD setBand
   METHOD setFrequency
   METHOD setMuted
   METHOD setStereoMode
   METHOD setVolume
   METHOD signalStrength
   METHOD start
   METHOD state
   METHOD stereoMode
   METHOD stop
   METHOD volume

   METHOD onAntennaConnectedChanged
   METHOD onBandChanged
   METHOD onError
   METHOD onFrequencyChanged
   METHOD onMutedChanged
   METHOD onSearchingChanged
   METHOD onSignalStrengthChanged
   METHOD onStateChanged
   METHOD onStationFound
   METHOD onStereoStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadioTunerControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRadioTunerControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRadioTunerControl>
#endif

/*
explicit QRadioTunerControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QRadioTunerControl()
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_DELETE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QRadioTuner::State state() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STATE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->state () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QRadioTuner::Band band() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_BAND )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->band () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setBand(QRadioTuner::Band b) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETBAND )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBand ( (QRadioTuner::Band) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isBandSupported(QRadioTuner::Band b) const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISBANDSUPPORTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isBandSupported ( (QRadioTuner::Band) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int frequency() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_FREQUENCY )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->frequency () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int frequencyStep(QRadioTuner::Band b) const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_FREQUENCYSTEP )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RINT( obj->frequencyStep ( (QRadioTuner::Band) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setFrequency(int frequency) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETFREQUENCY )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFrequency ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isStereo() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISSTEREO )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isStereo () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QRadioTuner::StereoMode stereoMode() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STEREOMODE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->stereoMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setStereoMode(QRadioTuner::StereoMode mode) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETSTEREOMODE )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setStereoMode ( (QRadioTuner::StereoMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int signalStrength() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SIGNALSTRENGTH )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->signalStrength () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual int volume() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_VOLUME )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->volume () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setVolume(int volume) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETVOLUME )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setVolume ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isMuted() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISMUTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isMuted () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setMuted(bool muted) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SETMUTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setMuted ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isSearching() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISSEARCHING )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSearching () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isAntennaConnected() const
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ISANTENNACONNECTED )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAntennaConnected () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void searchForward() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHFORWARD )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->searchForward ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void searchBackward() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHBACKWARD )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->searchBackward ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void searchAllStations(QRadioTuner::SearchMode searchMode = QRadioTuner::SearchFast) = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_SEARCHALLSTATIONS )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      obj->searchAllStations ( ISNIL(1)? (QRadioTuner::SearchMode) QRadioTuner::SearchFast : (QRadioTuner::SearchMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void cancelSearch() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_CANCELSEARCH )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->cancelSearch ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void start() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_START )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->start ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_STOP )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRadioTuner::Error error() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ERROR )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString errorString() const = 0
*/
HB_FUNC_STATIC( QRADIOTUNERCONTROL_ERRORSTRING )
{
  QRadioTunerControl * obj = (QRadioTunerControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QPair<int,int> frequencyRange(QRadioTuner::Band b) const = 0
*/

#pragma ENDDUMP

