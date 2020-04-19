/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBARDATAPROXY
REQUEST QPOINT
#endif

CLASS QBar3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete
   METHOD dataProxy
   METHOD setDataProxy
   METHOD selectedBar
   METHOD setSelectedBar
   METHOD meshAngle
   METHOD setMeshAngle
   METHOD invalidSelectionPosition

   METHOD onDataProxyChanged
   METHOD onMeshAngleChanged
   METHOD onSelectedBarChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBar3DSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QBar3DSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QBar3DSeries>
#endif

using namespace QtDataVisualization;

/*
explicit QBar3DSeries(QObject *parent = Q_NULLPTR)
*/
void QBar3DSeries_new1()
{
  QBar3DSeries * o = new QBar3DSeries( OPQOBJECT(1,Q_NULLPTR) );
  Qt5xHb::returnNewObject( o, false );
}

/*
explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
*/
void QBar3DSeries_new2()
{
  QBar3DSeries * o = new QBar3DSeries( PQBARDATAPROXY(1), OPQOBJECT(2,Q_NULLPTR) );
  Qt5xHb::returnNewObject( o, false );
}

/*
[1]explicit QBar3DSeries(QObject *parent = Q_NULLPTR)
[2]explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
*/

HB_FUNC_STATIC( QBAR3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBar3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBARDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBar3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QBar3DSeries()
*/
HB_FUNC_STATIC( QBAR3DSERIES_DELETE )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBarDataProxy *dataProxy() const
*/
HB_FUNC_STATIC( QBAR3DSERIES_DATAPROXY )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBarDataProxy * ptr = obj->dataProxy();
      Qt5xHb::createReturnQObjectClass( ptr, "QBARDATAPROXY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDataProxy(QBarDataProxy *proxy)
*/
HB_FUNC_STATIC( QBAR3DSERIES_SETDATAPROXY )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBARDATAPROXY(1) )
    {
#endif
      obj->setDataProxy( PQBARDATAPROXY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint selectedBar() const;
*/
HB_FUNC_STATIC( QBAR3DSERIES_SELECTEDBAR )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->selectedBar() );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSelectedBar(const QPoint &position)
*/
HB_FUNC_STATIC( QBAR3DSERIES_SETSELECTEDBAR )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setSelectedBar( *PQPOINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float meshAngle() const
*/
HB_FUNC_STATIC( QBAR3DSERIES_MESHANGLE )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->meshAngle() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMeshAngle(float angle)
*/
HB_FUNC_STATIC( QBAR3DSERIES_SETMESHANGLE )
{
  QBar3DSeries * obj = (QBar3DSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMeshAngle( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QPoint invalidSelectionPosition()
*/
HB_FUNC_STATIC( QBAR3DSERIES_INVALIDSELECTIONPOSITION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QPoint * ptr = new QPoint( QBar3DSeries::invalidSelectionPosition() );
    Qt5xHb::createReturnClass( ptr, "QPOINT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QBar3DSeriesSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBAR3DSERIES_ONDATAPROXYCHANGED )
{
  QBar3DSeriesSlots_connect_signal( "dataProxyChanged(QBarDataProxy*)", "dataProxyChanged(QBarDataProxy*)" );
}

HB_FUNC_STATIC( QBAR3DSERIES_ONMESHANGLECHANGED )
{
  QBar3DSeriesSlots_connect_signal( "meshAngleChanged(float)", "meshAngleChanged(float)" );
}

HB_FUNC_STATIC( QBAR3DSERIES_ONSELECTEDBARCHANGED )
{
  QBar3DSeriesSlots_connect_signal( "selectedBarChanged(QPoint)", "selectedBarChanged(QPoint)" );
}

#pragma ENDDUMP
