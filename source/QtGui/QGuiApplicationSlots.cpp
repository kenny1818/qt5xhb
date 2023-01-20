/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGuiApplicationSlots.h"

QGuiApplicationSlots::QGuiApplicationSlots( QObject *parent ) : QObject( parent )
{
}

QGuiApplicationSlots::~QGuiApplicationSlots()
{
}

void QGuiApplicationSlots::focusObjectChanged( QObject * focusObject )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "focusObjectChanged(QObject*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGUIAPPLICATION");
    PHB_ITEM pfocusObject = Qt5xHb::Signals_return_qobject(focusObject, "QOBJECT");

    hb_vmEvalBlockV(cb, 2, psender, pfocusObject);

    hb_itemRelease(psender);
    hb_itemRelease( pfocusObject );
  }
}

void QGuiApplicationSlots::focusWindowChanged( QWindow * focusWindow )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "focusWindowChanged(QWindow*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGUIAPPLICATION");
    PHB_ITEM pfocusWindow = Qt5xHb::Signals_return_qobject(focusWindow, "QWINDOW");

    hb_vmEvalBlockV(cb, 2, psender, pfocusWindow);

    hb_itemRelease(psender);
    hb_itemRelease( pfocusWindow );
  }
}

void QGuiApplicationSlots::fontDatabaseChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "fontDatabaseChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGUIAPPLICATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGuiApplicationSlots::lastWindowClosed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "lastWindowClosed()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGUIAPPLICATION");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QGuiApplicationSlots::screenAdded( QScreen * screen )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "screenAdded(QScreen*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGUIAPPLICATION");
    PHB_ITEM pscreen = Qt5xHb::Signals_return_qobject(screen, "QSCREEN");

    hb_vmEvalBlockV(cb, 2, psender, pscreen);

    hb_itemRelease(psender);
    hb_itemRelease( pscreen );
  }
}

void QGuiApplicationSlots_connect_signal(const QString & signal, const QString & slot)
{
  QGuiApplication * obj = (QGuiApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QGuiApplicationSlots * s = QCoreApplication::instance()->findChild<QGuiApplicationSlots*>();

    if( s == NULL )
    {
      s = new QGuiApplicationSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
