/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVirtualKeyboardInputEngine INHERIT QObject

   METHOD delete

   METHOD onVirtualKeyClicked
   METHOD onActiveKeyChanged
   METHOD onPreviousKeyChanged
   METHOD onInputMethodChanged
   METHOD onInputMethodReset
   METHOD onInputMethodUpdate
   METHOD onInputModesChanged
   METHOD onInputModeChanged
   METHOD onPatternRecognitionModesChanged
   METHOD onWordCandidateListModelChanged
   METHOD onWordCandidateListVisibleHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardInputEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardInputEngine>
#endif

/*
explicit QVirtualKeyboardInputEngine(QVirtualKeyboardInputContext *parent = nullptr)
*/

/*
~QVirtualKeyboardInputEngine()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_DELETE )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Key activeKey() const
*/

/*
Qt::Key previousKey() const
*/

/*
QVirtualKeyboardAbstractInputMethod *inputMethod() const
*/
/*
void setInputMethod(QVirtualKeyboardAbstractInputMethod *inputMethod)
*/

/*
QList<int> inputModes() const
*/

/*
InputMode inputMode() const
*/
/*
void setInputMode(InputMode inputMode)
*/

/*
QList<int> patternRecognitionModes() const
*/

/*
QVirtualKeyboardSelectionListModel *wordCandidateListModel() const
*/

/*
bool wordCandidateListVisibleHint() const
*/

/*
void init()
*/
/*
Q_INVOKABLE bool virtualKeyPress(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers, bool repeat)
*/
/*
Q_INVOKABLE void virtualKeyCancel()
*/
/*
Q_INVOKABLE bool virtualKeyRelease(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
*/
/*
Q_INVOKABLE bool virtualKeyClick(Qt::Key key, const QString &text, Qt::KeyboardModifiers modifiers)
*/
/*
QVirtualKeyboardInputContext *inputContext() const
*/
/*
Q_INVOKABLE QVirtualKeyboardTrace *traceBegin(int traceId, PatternRecognitionMode patternRecognitionMode, const QVariantMap &traceCaptureDeviceInfo, const QVariantMap &traceScreenInfo)
*/
/*
Q_INVOKABLE bool traceEnd(QVirtualKeyboardTrace *trace)
*/
/*
Q_INVOKABLE bool reselect(int cursorPosition, const ReselectFlags &reselectFlags)
*/
/*
bool clickPreeditText(int cursorPosition)
*/
/*
void reset() [private] [slot]
*/
/*
void update() [private] [slot]
*/
/*
void shiftChanged() [private] [slot]
*/
/*
void updateSelectionListModels() [private] [slot]
*/
/*
void updateInputModes() [private] [slot]
*/
/*
void timerEvent(QTimerEvent *timerEvent) [protected]
*/

void QVirtualKeyboardInputEngineSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONVIRTUALKEYCLICKED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)", "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONACTIVEKEYCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "activeKeyChanged(Qt::Key)", "activeKeyChanged(Qt::Key)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPREVIOUSKEYCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "previousKeyChanged(Qt::Key)", "previousKeyChanged(Qt::Key)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "inputMethodChanged()", "inputMethodChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODRESET )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "inputMethodReset()", "inputMethodReset()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMETHODUPDATE )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "inputMethodUpdate()", "inputMethodUpdate()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODESCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "inputModesChanged()", "inputModesChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONINPUTMODECHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "inputModeChanged()", "inputModeChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONPATTERNRECOGNITIONMODESCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "patternRecognitionModesChanged()", "patternRecognitionModesChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTMODELCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "wordCandidateListModelChanged()", "wordCandidateListModelChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDINPUTENGINE_ONWORDCANDIDATELISTVISIBLEHINTCHANGED )
{
  QVirtualKeyboardInputEngineSlots_connect_signal( "wordCandidateListVisibleHintChanged()", "wordCandidateListVisibleHintChanged()" );
}

#pragma ENDDUMP
