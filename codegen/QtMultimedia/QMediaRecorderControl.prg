$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

$prototype=virtual void applySettings() = 0
$method=|void|applySettings|

$prototype=virtual qint64 duration() const = 0
$method=|qint64|duration|

$prototype=virtual bool isMuted() const = 0
$method=|bool|isMuted|

$prototype=virtual QUrl outputLocation() const = 0
$method=|QUrl|outputLocation|

$prototype=virtual bool setOutputLocation(const QUrl & location) = 0
$method=|bool|setOutputLocation|const QUrl &

$prototype=virtual QMediaRecorder::State state() const = 0
$method=|QMediaRecorder::State|state|

$prototype=virtual QMediaRecorder::Status status() const = 0
$method=|QMediaRecorder::Status|status|

$prototype=virtual qreal volume() const = 0
$method=|qreal|volume|

$prototype=virtual void setMuted(bool muted) = 0
$method=|void|setMuted|bool

$prototype=virtual void setState(QMediaRecorder::State state) = 0
$method=|void|setState|QMediaRecorder::State

$prototype=virtual void setVolume(qreal gain) = 0
$method=|void|setVolume|qreal

#pragma ENDDUMP
