/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMEDIAPLAYLISTSLOTS_H
#define QMEDIAPLAYLISTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QMediaPlaylist>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QMediaPlaylistSlots: public QObject
{
  Q_OBJECT
  public:
  QMediaPlaylistSlots( QObject *parent = 0 );
  ~QMediaPlaylistSlots();
  public slots:
  void currentIndexChanged( int position );
  void currentMediaChanged( const QMediaContent & content );
  void loadFailed();
  void loaded();
  void mediaAboutToBeInserted( int start, int end );
  void mediaAboutToBeRemoved( int start, int end );
  void mediaChanged( int start, int end );
  void mediaInserted( int start, int end );
  void mediaRemoved( int start, int end );
  void playbackModeChanged( QMediaPlaylist::PlaybackMode mode );
};

#endif /* QMEDIAPLAYLISTSLOTS_H */
