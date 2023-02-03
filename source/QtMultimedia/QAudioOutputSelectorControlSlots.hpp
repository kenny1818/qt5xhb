/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAUDIOOUTPUTSELECTORCONTROLSLOTS_H
#define QAUDIOOUTPUTSELECTORCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioOutputSelectorControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAudioOutputSelectorControlSlots: public QObject
{
  Q_OBJECT
  public:
  QAudioOutputSelectorControlSlots( QObject *parent = 0 );
  ~QAudioOutputSelectorControlSlots();
  public slots:
  void activeOutputChanged( const QString & name );
  void availableOutputsChanged();
};

#endif /* QAUDIOOUTPUTSELECTORCONTROLSLOTS_H */
