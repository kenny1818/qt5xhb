/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSvgRendererSlots.h"


static SlotsQSvgRenderer * s = NULL;

SlotsQSvgRenderer::SlotsQSvgRenderer(QObject *parent) : QObject(parent)
{
}

SlotsQSvgRenderer::~SlotsQSvgRenderer()
{
}

void SlotsQSvgRenderer::repaintNeeded ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "repaintNeeded()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSVGRENDERER_ONREPAINTNEEDED )
{
  if( s == NULL )
  {
    s = new SlotsQSvgRenderer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "repaintNeeded()", "repaintNeeded()" ) );
}
