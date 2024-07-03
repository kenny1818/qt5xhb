//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMediaPlayerControlSlots.hpp"

QMediaPlayerControlSlots::QMediaPlayerControlSlots(QObject *parent) : QObject(parent)
{
}

QMediaPlayerControlSlots::~QMediaPlayerControlSlots()
{
}

void QMediaPlayerControlSlots::audioAvailableChanged(bool audio)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "audioAvailableChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM paudio = hb_itemPutL(NULL, audio);

    hb_vmEvalBlockV(cb, 2, psender, paudio);

    hb_itemRelease(psender);
    hb_itemRelease(paudio);
  }
}

void QMediaPlayerControlSlots::availablePlaybackRangesChanged(const QMediaTimeRange &ranges)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "availablePlaybackRangesChanged(QMediaTimeRange)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pranges = Qt5xHb::Signals_return_object((void *)&ranges, "QMEDIATIMERANGE");

    hb_vmEvalBlockV(cb, 2, psender, pranges);

    hb_itemRelease(psender);
    hb_itemRelease(pranges);
  }
}

void QMediaPlayerControlSlots::bufferStatusChanged(int progress)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bufferStatusChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pprogress = hb_itemPutNI(NULL, progress);

    hb_vmEvalBlockV(cb, 2, psender, pprogress);

    hb_itemRelease(psender);
    hb_itemRelease(pprogress);
  }
}

void QMediaPlayerControlSlots::durationChanged(qint64 duration)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "durationChanged(qint64)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pduration = hb_itemPutNLL(NULL, duration);

    hb_vmEvalBlockV(cb, 2, psender, pduration);

    hb_itemRelease(psender);
    hb_itemRelease(pduration);
  }
}

void QMediaPlayerControlSlots::error(int error, const QString &errorString)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(int,QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM perror = hb_itemPutNI(NULL, error);
    PHB_ITEM perrorString = hb_itemPutC(NULL, QSTRINGTOSTRING(errorString));

    hb_vmEvalBlockV(cb, 3, psender, perror, perrorString);

    hb_itemRelease(psender);
    hb_itemRelease(perror);
    hb_itemRelease(perrorString);
  }
}

void QMediaPlayerControlSlots::mediaChanged(const QMediaContent &content)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "mediaChanged(QMediaContent)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pcontent = Qt5xHb::Signals_return_object((void *)&content, "QMEDIACONTENT");

    hb_vmEvalBlockV(cb, 2, psender, pcontent);

    hb_itemRelease(psender);
    hb_itemRelease(pcontent);
  }
}

void QMediaPlayerControlSlots::mediaStatusChanged(QMediaPlayer::MediaStatus status)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "mediaStatusChanged(QMediaPlayer::MediaStatus)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pstatus = hb_itemPutNI(NULL, static_cast<int>(status));

    hb_vmEvalBlockV(cb, 2, psender, pstatus);

    hb_itemRelease(psender);
    hb_itemRelease(pstatus);
  }
}

void QMediaPlayerControlSlots::mutedChanged(bool mute)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "mutedChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pmute = hb_itemPutL(NULL, mute);

    hb_vmEvalBlockV(cb, 2, psender, pmute);

    hb_itemRelease(psender);
    hb_itemRelease(pmute);
  }
}

void QMediaPlayerControlSlots::playbackRateChanged(qreal rate)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "playbackRateChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM prate = hb_itemPutND(NULL, rate);

    hb_vmEvalBlockV(cb, 2, psender, prate);

    hb_itemRelease(psender);
    hb_itemRelease(prate);
  }
}

void QMediaPlayerControlSlots::positionChanged(qint64 position)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "positionChanged(qint64)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pposition = hb_itemPutNLL(NULL, position);

    hb_vmEvalBlockV(cb, 2, psender, pposition);

    hb_itemRelease(psender);
    hb_itemRelease(pposition);
  }
}

void QMediaPlayerControlSlots::seekableChanged(bool seekable)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "seekableChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pseekable = hb_itemPutL(NULL, seekable);

    hb_vmEvalBlockV(cb, 2, psender, pseekable);

    hb_itemRelease(psender);
    hb_itemRelease(pseekable);
  }
}

void QMediaPlayerControlSlots::stateChanged(QMediaPlayer::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QMediaPlayer::State)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pstate = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(pstate);
  }
}

void QMediaPlayerControlSlots::videoAvailableChanged(bool video)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "videoAvailableChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pvideo = hb_itemPutL(NULL, video);

    hb_vmEvalBlockV(cb, 2, psender, pvideo);

    hb_itemRelease(psender);
    hb_itemRelease(pvideo);
  }
}

void QMediaPlayerControlSlots::volumeChanged(int volume)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "volumeChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMEDIAPLAYERCONTROL");
    PHB_ITEM pvolume = hb_itemPutNI(NULL, volume);

    hb_vmEvalBlockV(cb, 2, psender, pvolume);

    hb_itemRelease(psender);
    hb_itemRelease(pvolume);
  }
}

void QMediaPlayerControlSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMediaPlayerControl *obj = (QMediaPlayerControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QMediaPlayerControlSlots *s = QCoreApplication::instance()->findChild<QMediaPlayerControlSlots *>();

    if (s == NULL)
    {
      s = new QMediaPlayerControlSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
