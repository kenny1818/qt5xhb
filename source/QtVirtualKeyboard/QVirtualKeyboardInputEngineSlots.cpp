/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVirtualKeyboardInputEngineSlots.h"

QVirtualKeyboardInputEngineSlots::QVirtualKeyboardInputEngineSlots(QObject *parent) : QObject(parent)
{
}

QVirtualKeyboardInputEngineSlots::~QVirtualKeyboardInputEngineSlots()
{
}
void QVirtualKeyboardInputEngineSlots::virtualKeyClicked( Qt::Key key, const QString & text, Qt::KeyboardModifiers modifiers, bool isAutoRepeat )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "virtualKeyClicked(Qt::Key,QString,Qt::KeyboardModifiers,bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    PHB_ITEM pmodifiers = hb_itemPutNI( NULL, (int) modifiers );
    PHB_ITEM pisAutoRepeat = hb_itemPutL( NULL, isAutoRepeat );
    hb_vmEvalBlockV( cb, 5, psender, pkey, ptext, pmodifiers, pisAutoRepeat );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
    hb_itemRelease( ptext );
    hb_itemRelease( pmodifiers );
    hb_itemRelease( pisAutoRepeat );
  }
}
void QVirtualKeyboardInputEngineSlots::activeKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeKeyChanged(Qt::Key)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );
    hb_vmEvalBlockV( cb, 2, psender, pkey );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
void QVirtualKeyboardInputEngineSlots::previousKeyChanged( Qt::Key key )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "previousKeyChanged(Qt::Key)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    PHB_ITEM pkey = hb_itemPutNI( NULL, (int) key );
    hb_vmEvalBlockV( cb, 2, psender, pkey );
    hb_itemRelease( psender );
    hb_itemRelease( pkey );
  }
}
void QVirtualKeyboardInputEngineSlots::inputMethodChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputMethodChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::inputMethodReset()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputMethodReset()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::inputMethodUpdate()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputMethodUpdate()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::inputModesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputModesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::inputModeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputModeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::patternRecognitionModesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "patternRecognitionModesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::wordCandidateListModelChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "wordCandidateListModelChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QVirtualKeyboardInputEngineSlots::wordCandidateListVisibleHintChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "wordCandidateListVisibleHintChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QVIRTUALKEYBOARDINPUTENGINE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QVirtualKeyboardInputEngineSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QVirtualKeyboardInputEngine * obj = (QVirtualKeyboardInputEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVirtualKeyboardInputEngineSlots * s = QCoreApplication::instance()->findChild<QVirtualKeyboardInputEngineSlots *>();

    if( s == NULL )
    {
      s = new QVirtualKeyboardInputEngineSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
