/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDnsLookupSlots.hpp"

QDnsLookupSlots::QDnsLookupSlots(QObject *parent) : QObject(parent)
{
}

QDnsLookupSlots::~QDnsLookupSlots()
{
}

void QDnsLookupSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDNSLOOKUP");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QDnsLookupSlots::nameChanged(const QString &name)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "nameChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDNSLOOKUP");
    PHB_ITEM pname = hb_itemPutC(NULL, QSTRINGTOSTRING(name));

    hb_vmEvalBlockV(cb, 2, psender, pname);

    hb_itemRelease(psender);
    hb_itemRelease(pname);
  }
}

void QDnsLookupSlots::nameserverChanged(const QHostAddress &nameserver)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "nameserverChanged(QHostAddress)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDNSLOOKUP");
    PHB_ITEM pnameserver = Qt5xHb::Signals_return_object((void *)&nameserver, "QHOSTADDRESS");

    hb_vmEvalBlockV(cb, 2, psender, pnameserver);

    hb_itemRelease(psender);
    hb_itemRelease(pnameserver);
  }
}

void QDnsLookupSlots::typeChanged(QDnsLookup::Type type)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "typeChanged(QDnsLookup::Type)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDNSLOOKUP");
    PHB_ITEM ptype = hb_itemPutNI(NULL, static_cast<int>(type));

    hb_vmEvalBlockV(cb, 2, psender, ptype);

    hb_itemRelease(psender);
    hb_itemRelease(ptype);
  }
}

void QDnsLookupSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDnsLookup *obj = (QDnsLookup *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QDnsLookupSlots *s = QCoreApplication::instance()->findChild<QDnsLookupSlots *>();

    if (s == NULL)
    {
      s = new QDnsLookupSlots();
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
