/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHBoxPlotModelMapperSlots.hpp"

QHBoxPlotModelMapperSlots::QHBoxPlotModelMapperSlots( QObject *parent ) : QObject( parent )
{
}

QHBoxPlotModelMapperSlots::~QHBoxPlotModelMapperSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHBoxPlotModelMapperSlots::columnCountChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "columnCountChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHBOXPLOTMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHBoxPlotModelMapperSlots::firstBoxSetRowChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "firstBoxSetRowChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHBOXPLOTMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHBoxPlotModelMapperSlots::firstColumnChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "firstColumnChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHBOXPLOTMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHBoxPlotModelMapperSlots::lastBoxSetRowChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "lastBoxSetRowChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHBOXPLOTMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHBoxPlotModelMapperSlots::modelReplaced()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "modelReplaced()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHBOXPLOTMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
void QHBoxPlotModelMapperSlots::seriesReplaced()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "seriesReplaced()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHBOXPLOTMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

void QHBoxPlotModelMapperSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHBoxPlotModelMapper * obj = (QHBoxPlotModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QHBoxPlotModelMapperSlots * s = QCoreApplication::instance()->findChild<QHBoxPlotModelMapperSlots*>();

    if( s == NULL )
    {
      s = new QHBoxPlotModelMapperSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
