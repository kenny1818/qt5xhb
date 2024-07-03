//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QAudioOutputSlots.hpp"

QAudioOutputSlots::QAudioOutputSlots(QObject *parent) : QObject(parent)
{
}

QAudioOutputSlots::~QAudioOutputSlots()
{
}

void QAudioOutputSlots::notify()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "notify()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIOOUTPUT");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}

void QAudioOutputSlots::stateChanged(QAudio::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QAudio::State)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAUDIOOUTPUT");
    PHB_ITEM pstate = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(pstate);
  }
}

void QAudioOutputSlots_connect_signal(const QString &signal, const QString &slot)
{
  QAudioOutput *obj = (QAudioOutput *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QAudioOutputSlots *s = QCoreApplication::instance()->findChild<QAudioOutputSlots *>();

    if (s == NULL)
    {
      s = new QAudioOutputSlots();
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
