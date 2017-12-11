$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD byteCount
   METHOD data
   METHOD duration
   METHOD format
   METHOD frameCount
   METHOD isValid
   METHOD sampleCount
   METHOD startTime

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioBuffer()
$constructor=|new1|

$prototype=QAudioBuffer(const QAudioBuffer & other)
$constructor=|new2|const QAudioBuffer &

$prototype=QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
$constructor=|new3|const QByteArray &,const QAudioFormat &,qint64=-1

$prototype=QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)
$constructor=|new4|int,const QAudioFormat &,qint64=-1

//[1]QAudioBuffer()
//[2]QAudioBuffer(const QAudioBuffer & other)
//[3]QAudioBuffer(const QByteArray & data, const QAudioFormat & format, qint64 startTime = -1)
//[4]QAudioBuffer(int numFrames, const QAudioFormat & format, qint64 startTime = -1)

HB_FUNC_STATIC( QAUDIOBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOBUFFER(1) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQBYTEARRAY(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW3 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISQAUDIOFORMAT(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QAUDIOBUFFER_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int byteCount() const
$method=|int|byteCount|

$prototype=void * data()
$method=|void *|data|

$prototype=qint64 duration() const
$method=|qint64|duration|

$prototype=QAudioFormat format() const
$method=|QAudioFormat|format|

$prototype=int frameCount() const
$method=|int|frameCount|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int sampleCount() const
$method=|int|sampleCount|

$prototype=qint64 startTime() const
$method=|qint64|startTime|

$extraMethods

#pragma ENDDUMP
