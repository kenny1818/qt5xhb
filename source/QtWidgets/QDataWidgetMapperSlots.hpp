/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDATAWIDGETMAPPERSLOTS_H
#define QDATAWIDGETMAPPERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QDataWidgetMapper>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QDataWidgetMapperSlots : public QObject
{
  Q_OBJECT
public:
  QDataWidgetMapperSlots(QObject *parent = 0);
  ~QDataWidgetMapperSlots();
public slots:
  void currentIndexChanged(int index);
};

#endif /* QDATAWIDGETMAPPERSLOTS_H */
