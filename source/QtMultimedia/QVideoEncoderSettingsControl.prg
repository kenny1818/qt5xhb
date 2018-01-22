/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
#endif

CLASS QVideoEncoderSettingsControl INHERIT QMediaControl

   METHOD delete

   METHOD setVideoSettings
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoEncoderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoEncoderSettingsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoEncoderSettingsControl>
#endif

/*
explicit QVideoEncoderSettingsControl(QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QVideoEncoderSettingsControl()
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_DELETE )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual void setVideoSettings(const QVideoEncoderSettings & settings) = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SETVIDEOSETTINGS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQVIDEOENCODERSETTINGS(1) )
    {
      obj->setVideoSettings ( *PQVIDEOENCODERSETTINGS(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings, bool * continuous = Q_NULLPTR) const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDFRAMERATES )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQVIDEOENCODERSETTINGS(1) && ISOPTLOG(2) )
    {
      bool par2;
      QList<qreal> list = obj->supportedFrameRates ( *PQVIDEOENCODERSETTINGS(1), &par2 );
      _qt5xhb_convert_qlist_qreal_to_array ( list );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings, bool * continuous = Q_NULLPTR) const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDRESOLUTIONS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQVIDEOENCODERSETTINGS(1) && ISOPTLOG(2) )
    {
      bool par2;
      QList<QSize> list = obj->supportedResolutions ( *PQVIDEOENCODERSETTINGS(1), &par2 );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList supportedVideoCodecs() const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_SUPPORTEDVIDEOCODECS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->supportedVideoCodecs () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString videoCodecDescription(const QString & codecName) const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_VIDEOCODECDESCRIPTION )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->videoCodecDescription ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QVideoEncoderSettings videoSettings() const = 0
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGSCONTROL_VIDEOSETTINGS )
{
  QVideoEncoderSettingsControl * obj = (QVideoEncoderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QVideoEncoderSettings * ptr = new QVideoEncoderSettings( obj->videoSettings () );
      _qt5xhb_createReturnClass ( ptr, "QVIDEOENCODERSETTINGS", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
