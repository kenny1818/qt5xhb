//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMetaDataReaderControlSlots.hpp"

QMetaDataReaderControlSlots::QMetaDataReaderControlSlots(QObject *parent) : QObject(parent)
{
}

QMetaDataReaderControlSlots::~QMetaDataReaderControlSlots()
{
}

void QMetaDataReaderControlSlots::metaDataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "metaDataChanged()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMETADATAREADERCONTROL");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QMetaDataReaderControlSlots::metaDataChanged(const QString &key, const QVariant &value)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "metaDataChanged(QString,QVariant)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMETADATAREADERCONTROL");
    PHB_ITEM pkey = hb_itemPutC(NULL, QSTRINGTOSTRING(key));
    PHB_ITEM pvalue = Qt5xHb::Signals_return_object((void *)&value, "QVARIANT");

    hb_vmEvalBlockV(cb, 3, psender, pkey, pvalue);

    hb_itemRelease(psender);
    hb_itemRelease(pkey);
    hb_itemRelease(pvalue);
  }
}

void QMetaDataReaderControlSlots::metaDataAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "metaDataAvailableChanged(bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QMETADATAREADERCONTROL");
    PHB_ITEM pavailable = hb_itemPutL(NULL, available);

    hb_vmEvalBlockV(cb, 2, psender, pavailable);

    hb_itemRelease(psender);
    hb_itemRelease(pavailable);
  }
}

void QMetaDataReaderControlSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMetaDataReaderControl *obj = (QMetaDataReaderControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QMetaDataReaderControlSlots *s = QCoreApplication::instance()->findChild<QMetaDataReaderControlSlots *>();

    if (s == NULL)
    {
      s = new QMetaDataReaderControlSlots();
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
