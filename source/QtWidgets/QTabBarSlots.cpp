/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTabBarSlots.hpp"

QTabBarSlots::QTabBarSlots(QObject *parent) : QObject(parent)
{
}

QTabBarSlots::~QTabBarSlots()
{
}

void QTabBarSlots::currentChanged(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "currentChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABBAR");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}

void QTabBarSlots::tabCloseRequested(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "tabCloseRequested(int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABBAR");
    PHB_ITEM pindex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, psender, pindex);

    hb_itemRelease(psender);
    hb_itemRelease(pindex);
  }
}

void QTabBarSlots::tabMoved(int from, int to)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "tabMoved(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QTABBAR");
    PHB_ITEM pfrom = hb_itemPutNI(NULL, from);
    PHB_ITEM pto = hb_itemPutNI(NULL, to);

    hb_vmEvalBlockV(cb, 3, psender, pfrom, pto);

    hb_itemRelease(psender);
    hb_itemRelease(pfrom);
    hb_itemRelease(pto);
  }
}

void QTabBarSlots_connect_signal(const QString &signal, const QString &slot)
{
  QTabBar *obj = (QTabBar *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QTabBarSlots *s = QCoreApplication::instance()->findChild<QTabBarSlots *>();

    if (s == NULL)
    {
      s = new QTabBarSlots();
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
