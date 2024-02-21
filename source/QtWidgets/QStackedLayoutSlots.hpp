/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTACKEDLAYOUTSLOTS_H
#define QSTACKEDLAYOUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtWidgets/QWidget>

#include <QtWidgets/QStackedLayout>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QStackedLayoutSlots : public QObject
{
  Q_OBJECT
public:
  QStackedLayoutSlots(QObject *parent = 0);
  ~QStackedLayoutSlots();
public slots:
  void setCurrentIndex(int index);
  void setCurrentWidget(QWidget *widget);
};

#endif /* QSTACKEDLAYOUTSLOTS_H */
