/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSCRIPTENGINESLOTS_H
#define QSCRIPTENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtScript/QScriptEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QScriptEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QScriptEngineSlots( QObject *parent = 0 );
  ~QScriptEngineSlots();
  public slots:
  void signalHandlerException( const QScriptValue & exception );
};

#endif /* QSCRIPTENGINESLOTS_H */