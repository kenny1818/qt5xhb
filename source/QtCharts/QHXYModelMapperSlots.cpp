/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHXYModelMapperSlots.hpp"

QHXYModelMapperSlots::QHXYModelMapperSlots(QObject *parent) : QObject(parent)
{
}

QHXYModelMapperSlots::~QHXYModelMapperSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QHXYModelMapperSlots::columnCountChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "columnCountChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHXYMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QHXYModelMapperSlots::firstColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "firstColumnChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHXYMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QHXYModelMapperSlots::modelReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "modelReplaced()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHXYMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QHXYModelMapperSlots::seriesReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "seriesReplaced()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHXYMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QHXYModelMapperSlots::xRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "xRowChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHXYMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
void QHXYModelMapperSlots::yRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "yRowChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHXYMODELMAPPER");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

void QHXYModelMapperSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 7, 0))
  QHXYModelMapper *obj = (QHXYModelMapper *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QHXYModelMapperSlots *s = QCoreApplication::instance()->findChild<QHXYModelMapperSlots *>();

    if (s == NULL)
    {
      s = new QHXYModelMapperSlots();
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
