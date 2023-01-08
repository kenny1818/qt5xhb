/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMenuSlots.h"

QMenuSlots::QMenuSlots( QObject *parent ) : QObject( parent )
{
}

QMenuSlots::~QMenuSlots()
{
}

void QMenuSlots::aboutToHide()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "aboutToHide()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMENU");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMenuSlots::aboutToShow()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "aboutToShow()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMENU");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QMenuSlots::hovered( QAction * action )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "hovered(QAction*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMENU");
    PHB_ITEM paction = Qt5xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV( cb, 2, psender, paction );

    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QMenuSlots::triggered( QAction * action )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "triggered(QAction*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMENU");
    PHB_ITEM paction = Qt5xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV( cb, 2, psender, paction );

    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QMenuSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMenu * obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenuSlots * s = QCoreApplication::instance()->findChild<QMenuSlots*>();

    if( s == NULL )
    {
      s = new QMenuSlots();
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
