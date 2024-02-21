/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDESIGNERPROPERTYEDITORINTERFACESLOTS_H
#define QDESIGNERPROPERTYEDITORINTERFACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDesigner/QDesignerPropertyEditorInterface>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QDesignerPropertyEditorInterfaceSlots : public QObject
{
  Q_OBJECT
public:
  QDesignerPropertyEditorInterfaceSlots(QObject *parent = 0);
  ~QDesignerPropertyEditorInterfaceSlots();
public slots:
  void propertyChanged(const QString &name, const QVariant &value);
};

#endif /* QDESIGNERPROPERTYEDITORINTERFACESLOTS_H */
