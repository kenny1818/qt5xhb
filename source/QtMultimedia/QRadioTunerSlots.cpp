/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QRadioTunerSlots.hpp"

QRadioTunerSlots::QRadioTunerSlots( QObject *parent ) : QObject( parent )
{
}

QRadioTunerSlots::~QRadioTunerSlots()
{
}

void QRadioTunerSlots::stateChanged( QRadioTuner::State state )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QRadioTuner::State)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pstate = hb_itemPutNI( NULL, static_cast<int>(state) );

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease( pstate );
  }
}

void QRadioTunerSlots::bandChanged( QRadioTuner::Band band )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bandChanged(QRadioTuner::Band)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pband = hb_itemPutNI( NULL, static_cast<int>(band) );

    hb_vmEvalBlockV(cb, 2, psender, pband);

    hb_itemRelease(psender);
    hb_itemRelease( pband );
  }
}

void QRadioTunerSlots::frequencyChanged( int frequency )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "frequencyChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pfrequency = hb_itemPutNI( NULL, frequency );

    hb_vmEvalBlockV(cb, 2, psender, pfrequency);

    hb_itemRelease(psender);
    hb_itemRelease( pfrequency );
  }
}

void QRadioTunerSlots::stereoStatusChanged( bool stereo )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stereoStatusChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pstereo = hb_itemPutL( NULL, stereo );

    hb_vmEvalBlockV(cb, 2, psender, pstereo);

    hb_itemRelease(psender);
    hb_itemRelease( pstereo );
  }
}

void QRadioTunerSlots::searchingChanged( bool searching )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "searchingChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM psearching = hb_itemPutL( NULL, searching );

    hb_vmEvalBlockV(cb, 2, psender, psearching);

    hb_itemRelease(psender);
    hb_itemRelease( psearching );
  }
}

void QRadioTunerSlots::signalStrengthChanged( int signalStrength )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "signalStrengthChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM psignalStrength = hb_itemPutNI( NULL, signalStrength );

    hb_vmEvalBlockV(cb, 2, psender, psignalStrength);

    hb_itemRelease(psender);
    hb_itemRelease( psignalStrength );
  }
}

void QRadioTunerSlots::volumeChanged( int volume )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "volumeChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pvolume = hb_itemPutNI( NULL, volume );

    hb_vmEvalBlockV(cb, 2, psender, pvolume);

    hb_itemRelease(psender);
    hb_itemRelease( pvolume );
  }
}

void QRadioTunerSlots::mutedChanged( bool muted )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "mutedChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pmuted = hb_itemPutL( NULL, muted );

    hb_vmEvalBlockV(cb, 2, psender, pmuted);

    hb_itemRelease(psender);
    hb_itemRelease( pmuted );
  }
}

void QRadioTunerSlots::stationFound( int frequency, QString stationId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stationFound(int,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pfrequency = hb_itemPutNI( NULL, frequency );
    PHB_ITEM pstationId = hb_itemPutC( NULL, stationId.toLatin1().data() );

    hb_vmEvalBlockV(cb, 3, psender, pfrequency, pstationId);

    hb_itemRelease(psender);
    hb_itemRelease( pfrequency );
    hb_itemRelease( pstationId );
  }
}

void QRadioTunerSlots::antennaConnectedChanged( bool connectionStatus )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "antennaConnectedChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM pconnectionStatus = hb_itemPutL( NULL, connectionStatus );

    hb_vmEvalBlockV(cb, 2, psender, pconnectionStatus);

    hb_itemRelease(psender);
    hb_itemRelease( pconnectionStatus );
  }
}

void QRadioTunerSlots::error( QRadioTuner::Error error )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QRadioTuner::Error)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QRADIOTUNER");
    PHB_ITEM perror = hb_itemPutNI( NULL, static_cast<int>(error) );

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease( perror );
  }
}

void QRadioTunerSlots_connect_signal(const QString & signal, const QString & slot)
{
  QRadioTuner * obj = (QRadioTuner *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QRadioTunerSlots * s = QCoreApplication::instance()->findChild<QRadioTunerSlots*>();

    if( s == NULL )
    {
      s = new QRadioTunerSlots();
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
