//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QAUDIOINPUTSELECTORCONTROLSLOTS_H
#define QAUDIOINPUTSELECTORCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioInputSelectorControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAudioInputSelectorControlSlots : public QObject
{
  Q_OBJECT
public:
  QAudioInputSelectorControlSlots(QObject *parent = 0);
  ~QAudioInputSelectorControlSlots();
public slots:
  void activeInputChanged(const QString &name);
  void availableInputsChanged();
};

#endif // QAUDIOINPUTSELECTORCONTROLSLOTS_H
