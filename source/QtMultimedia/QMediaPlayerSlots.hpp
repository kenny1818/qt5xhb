//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QMEDIAPLAYERSLOTS_H
#define QMEDIAPLAYERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMediaPlayer>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QMediaPlayerSlots : public QObject
{
  Q_OBJECT
public:
  QMediaPlayerSlots(QObject *parent = 0);
  ~QMediaPlayerSlots();
public slots:
  void audioAvailableChanged(bool available);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 6, 0))
  void audioRoleChanged(QAudio::Role role);
#endif
  void bufferStatusChanged(int percentFilled);
  void currentMediaChanged(const QMediaContent &media);
  void durationChanged(qint64 duration);
  void error(QMediaPlayer::Error error);
  void mediaChanged(const QMediaContent &media);
  void mediaStatusChanged(QMediaPlayer::MediaStatus status);
  void mutedChanged(bool muted);
  void networkConfigurationChanged(const QNetworkConfiguration &configuration);
  void playbackRateChanged(qreal rate);
  void positionChanged(qint64 position);
  void seekableChanged(bool seekable);
  void stateChanged(QMediaPlayer::State state);
  void videoAvailableChanged(bool videoAvailable);
  void volumeChanged(int volume);
};

#endif // QMEDIAPLAYERSLOTS_H
