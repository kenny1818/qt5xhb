/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAnimationDriverSlots.h"


static SlotsQAnimationDriver * s = NULL;

SlotsQAnimationDriver::SlotsQAnimationDriver(QObject *parent) : QObject(parent)
{
}

SlotsQAnimationDriver::~SlotsQAnimationDriver()
{
}

void SlotsQAnimationDriver::started()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "started()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAnimationDriver::stopped()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stopped()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QANIMATIONDRIVER_ONSTARTED )
{
  if( s == NULL )
  {
    s = new SlotsQAnimationDriver(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "started()", "started()" ) );
}

HB_FUNC( QANIMATIONDRIVER_ONSTOPPED )
{
  if( s == NULL )
  {
    s = new SlotsQAnimationDriver(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stopped()", "stopped()" ) );
}
