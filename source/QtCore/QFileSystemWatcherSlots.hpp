//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QFILESYSTEMWATCHERSLOTS_H
#define QFILESYSTEMWATCHERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QFileSystemWatcher>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QFileSystemWatcherSlots : public QObject
{
  Q_OBJECT
public:
  QFileSystemWatcherSlots(QObject *parent = 0);
  ~QFileSystemWatcherSlots();
public slots:
  void directoryChanged(const QString &path);
  void fileChanged(const QString &path);
};

#endif // QFILESYSTEMWATCHERSLOTS_H
