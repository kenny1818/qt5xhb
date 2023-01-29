/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
#endif

CLASS QMediaGaplessPlaybackControl INHERIT QMediaControl

   METHOD delete
   METHOD crossfadeTime
   METHOD isCrossfadeSupported
   METHOD nextMedia
   METHOD setCrossfadeTime
   METHOD setNextMedia

   METHOD onAdvancedToNextMedia
   METHOD onCrossfadeTimeChanged
   METHOD onNextMediaChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMediaGaplessPlaybackControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QMediaGaplessPlaybackControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QMediaGaplessPlaybackControl>
#endif

/*
virtual ~QMediaGaplessPlaybackControl()
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_DELETE )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

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
virtual qreal crossfadeTime() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_CROSSFADETIME )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->crossfadeTime() );
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
virtual bool isCrossfadeSupported() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_ISCROSSFADESUPPORTED )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCrossfadeSupported() );
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
virtual QMediaContent nextMedia() const = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_NEXTMEDIA )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaContent * ptr = new QMediaContent( obj->nextMedia() );
      Qt5xHb::createReturnClass(ptr, "QMEDIACONTENT", true);
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
virtual void setCrossfadeTime( qreal crossfadeTime ) = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_SETCROSSFADETIME )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCrossfadeTime( PQREAL(1) );
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
virtual void setNextMedia( const QMediaContent & media ) = 0
*/
HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_SETNEXTMEDIA )
{
  QMediaGaplessPlaybackControl * obj = (QMediaGaplessPlaybackControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
    {
#endif
      obj->setNextMedia( *PQMEDIACONTENT(1) );
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

void QMediaGaplessPlaybackControlSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_ONADVANCEDTONEXTMEDIA )
{
  QMediaGaplessPlaybackControlSlots_connect_signal("advancedToNextMedia()", "advancedToNextMedia()");
}

HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_ONCROSSFADETIMECHANGED )
{
  QMediaGaplessPlaybackControlSlots_connect_signal("crossfadeTimeChanged(qreal)", "crossfadeTimeChanged(qreal)");
}

HB_FUNC_STATIC( QMEDIAGAPLESSPLAYBACKCONTROL_ONNEXTMEDIACHANGED )
{
  QMediaGaplessPlaybackControlSlots_connect_signal("nextMediaChanged(QMediaContent)", "nextMediaChanged(QMediaContent)");
}

#pragma ENDDUMP
