/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QVOICE
#endif

CLASS QTextToSpeech INHERIT QObject

   METHOD new
   METHOD state
   METHOD locale
   METHOD setLocale
   METHOD voice
   METHOD setVoice
   METHOD rate
   METHOD setRate
   METHOD pitch
   METHOD setPitch
   METHOD volume
   METHOD setVolume
   METHOD availableLocales
   METHOD availableVoices
   METHOD availableEngines
   METHOD say
   METHOD stop
   METHOD pause
   METHOD resume

   METHOD onLocaleChanged
   METHOD onPitchChanged
   METHOD onRateChanged
   METHOD onStateChanged
   METHOD onVoiceChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextToSpeech
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtTextToSpeech/QTextToSpeech>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtTextToSpeech/QTextToSpeech>
#endif

#include <QtCore/QVector>
#include <QtCore/QLocale>
#include <QtTextToSpeech/QVoice>

HB_FUNC_STATIC( QTEXTTOSPEECH_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    /*
    QTextToSpeech( QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    QTextToSpeech * obj = new QTextToSpeech( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else if( ISBETWEEN(1,2) && HB_ISCHAR(1) && (ISQOBJECT(2)||HB_ISNIL(2)) )
  {
    /*
    QTextToSpeech( const QString & engine, QObject * parent = nullptr )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
    QTextToSpeech * obj = new QTextToSpeech( PQSTRING(1), OPQOBJECT(2,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTextToSpeech::State state() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
QLocale locale() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_LOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLocale * ptr = new QLocale( obj->locale() );
      Qt5xHb::createReturnClass(ptr, "QLOCALE", true);
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

/*
void setLocale( const QLocale & locale )
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
#endif
      obj->setLocale( *PQLOCALE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVoice voice() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_VOICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVoice * ptr = new QVoice( obj->voice() );
      Qt5xHb::createReturnClass(ptr, "QVOICE", true);
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

/*
void setVoice( const QVoice & voice )
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_SETVOICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVOICE(1) )
    {
#endif
      obj->setVoice( *PQVOICE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
double rate() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_RATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->rate() );
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

/*
void setRate( double rate )
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_SETRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setRate( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
double pitch() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_PITCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->pitch() );
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

/*
void setPitch( double pitch )
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_SETPITCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPitch( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
double volume() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_VOLUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->volume() );
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

/*
void setVolume( double volume )
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_SETVOLUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVolume( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QVector<QLocale> availableLocales() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_AVAILABLELOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QLocale> list = obj->availableLocales();
      PHB_DYNS pDynSym = hb_dynsymFindName("QLOCALE");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QLocale(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QLOCALE", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

/*
QVector<QVoice> availableVoices() const
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_AVAILABLEVOICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QVoice> list = obj->availableVoices();
      PHB_DYNS pDynSym = hb_dynsymFindName("QVOICE");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QVoice(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QVOICE", HB_ERR_ARGS_BASEPARAMS);
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
#endif
}

/*
static QStringList availableEngines()
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_AVAILABLEENGINES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QTextToSpeech::availableEngines() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
#endif
}

/*
void say( const QString & text )
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_SAY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->say( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void stop()
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void pause()
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_PAUSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->pause();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void resume()
*/
HB_FUNC_STATIC( QTEXTTOSPEECH_RESUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeech * obj = (QTextToSpeech *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->resume();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

void QTextToSpeechSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QTEXTTOSPEECH_ONLOCALECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechSlots_connect_signal("localeChanged(QLocale)", "localeChanged(QLocale)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QTEXTTOSPEECH_ONPITCHCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechSlots_connect_signal("pitchChanged(double)", "pitchChanged(double)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QTEXTTOSPEECH_ONRATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechSlots_connect_signal("rateChanged(double)", "rateChanged(double)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QTEXTTOSPEECH_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechSlots_connect_signal("stateChanged(QTextToSpeech::State)", "stateChanged(QTextToSpeech::State)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QTEXTTOSPEECH_ONVOICECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechSlots_connect_signal("voiceChanged(QVoice)", "voiceChanged(QVoice)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC( QTEXTTOSPEECH_ONVOLUMECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QTextToSpeechSlots_connect_signal("volumeChanged(int)", "volumeChanged(int)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
