/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAPPLICATIONSLOTS_H
#define QAPPLICATIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtGui/QSessionManager>
#include <QtWidgets/QWidget>

#include <QtWidgets/QApplication>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QApplicationSlots : public QObject
{
  Q_OBJECT
public:
  QApplicationSlots(QObject *parent = 0);
  ~QApplicationSlots();
public slots:
  void aboutToReleaseGpuResources();
  void aboutToUseGpuResources();
  void commitDataRequest(QSessionManager &manager);
  void focusChanged(QWidget *old, QWidget *now);
  void fontDatabaseChanged();
  void lastWindowClosed();
  void saveStateRequest(QSessionManager &manager);
};

#endif /* QAPPLICATIONSLOTS_H */
