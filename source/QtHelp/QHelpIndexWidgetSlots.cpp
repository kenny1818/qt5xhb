/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpIndexWidgetSlots.hpp"

QHelpIndexWidgetSlots::QHelpIndexWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QHelpIndexWidgetSlots::~QHelpIndexWidgetSlots()
{
}

void QHelpIndexWidgetSlots::linkActivated( const QUrl & link, const QString & keyword )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "linkActivated(QUrl,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QHELPINDEXWIDGET");
    PHB_ITEM plink = Qt5xHb::Signals_return_object( (void *) &link, "QURL");
    PHB_ITEM pkeyword = hb_itemPutC( NULL, QSTRINGTOSTRING(keyword) );

    hb_vmEvalBlockV(cb, 3, psender, plink, pkeyword);

    hb_itemRelease(psender);
    hb_itemRelease( plink );
    hb_itemRelease( pkeyword );
  }
}

void QHelpIndexWidgetSlots_connect_signal(const QString & signal, const QString & slot)
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QHelpIndexWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpIndexWidgetSlots*>();

    if( s == NULL )
    {
      s = new QHelpIndexWidgetSlots();
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
