/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAUDIORECORDERSLOTS_H
#define QAUDIORECORDERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioRecorder>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QAudioRecorderSlots: public QObject
{
  Q_OBJECT
  public:
  QAudioRecorderSlots( QObject *parent = 0 );
  ~QAudioRecorderSlots();
  public slots:
  void audioInputChanged( const QString & name );
  void availableAudioInputsChanged();
};

#endif /* QAUDIORECORDERSLOTS_H */
