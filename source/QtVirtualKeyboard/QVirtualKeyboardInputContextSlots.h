/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QVIRTUALKEYBOARDINPUTCONTEXTSLOTS_H
#define QVIRTUALKEYBOARDINPUTCONTEXTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtVirtualKeyboard/QVirtualKeyboardInputContext>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QVirtualKeyboardInputContextSlots: public QObject
{
  Q_OBJECT
  public:
  QVirtualKeyboardInputContextSlots( QObject *parent = 0 );
  ~QVirtualKeyboardInputContextSlots();
  public slots:
  void preeditTextChanged();
  void inputMethodHintsChanged();
  void surroundingTextChanged();
  void selectedTextChanged();
  void anchorPositionChanged();
  void cursorPositionChanged();
  void anchorRectangleChanged();
  void cursorRectangleChanged();
  void shiftActiveChanged();
  void capsLockActiveChanged();
  void uppercaseChanged();
  void animatingChanged();
  void localeChanged();
  void selectionControlVisibleChanged();
  void anchorRectIntersectsClipRectChanged();
  void cursorRectIntersectsClipRectChanged();
};

#endif /* QVIRTUALKEYBOARDINPUTCONTEXTSLOTS_H */
