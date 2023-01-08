/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCheckBoxSlots.h"

QCheckBoxSlots::QCheckBoxSlots( QObject *parent ) : QObject( parent )
{
}

QCheckBoxSlots::~QCheckBoxSlots()
{
}

void QCheckBoxSlots::stateChanged( int state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "stateChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCHECKBOX");
    PHB_ITEM pstate = hb_itemPutNI( NULL, state );

    hb_vmEvalBlockV( cb, 2, psender, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QCheckBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCheckBox * obj = (QCheckBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QCheckBoxSlots * s = QCoreApplication::instance()->findChild<QCheckBoxSlots*>();

    if( s == NULL )
    {
      s = new QCheckBoxSlots();
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
