/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCameraCaptureDestinationControlSlots.hpp"

QCameraCaptureDestinationControlSlots::QCameraCaptureDestinationControlSlots( QObject *parent ) : QObject( parent )
{
}

QCameraCaptureDestinationControlSlots::~QCameraCaptureDestinationControlSlots()
{
}

void QCameraCaptureDestinationControlSlots::captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "captureDestinationChanged(QCameraImageCapture::CaptureDestinations)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCAMERACAPTUREDESTINATIONCONTROL");
    PHB_ITEM pdestination = hb_itemPutNI( NULL, static_cast<int>(destination) );

    hb_vmEvalBlockV(cb, 2, psender, pdestination);

    hb_itemRelease(psender);
    hb_itemRelease( pdestination );
  }
}

void QCameraCaptureDestinationControlSlots_connect_signal(const QString & signal, const QString & slot)
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QCameraCaptureDestinationControlSlots * s = QCoreApplication::instance()->findChild<QCameraCaptureDestinationControlSlots*>();

    if( s == NULL )
    {
      s = new QCameraCaptureDestinationControlSlots();
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
