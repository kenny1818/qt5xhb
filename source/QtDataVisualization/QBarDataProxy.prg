/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QBarDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete

   METHOD addRow
   METHOD addRows
   METHOD columnLabels
   METHOD insertRow
   METHOD insertRows
   METHOD itemAt
   METHOD removeRows
   METHOD resetArray
   METHOD rowCount
   METHOD rowLabels
   METHOD series
   METHOD setColumnLabels
   METHOD setItem
   METHOD setRow
   METHOD setRowLabels
   METHOD setRows

   METHOD onArrayReset
   METHOD onColumnLabelsChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowLabelsChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBarDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBarDataProxy>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBarDataProxy>
#endif

#include <QBar3DSeries>

using namespace QtDataVisualization;

/*
explicit QBarDataProxy(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QBARDATAPROXY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBarDataProxy * o = new QBarDataProxy ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
explicit QBarDataProxy(QBarDataProxyPrivate *d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
virtual ~QBarDataProxy()
*/
HB_FUNC_STATIC( QBARDATAPROXY_DELETE )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
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
int rowCount() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_ROWCOUNT )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->rowCount () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList rowLabels() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_ROWLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->rowLabels () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setRowLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QBARDATAPROXY_SETROWLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setRowLabels ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList columnLabels() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_COLUMNLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->columnLabels () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setColumnLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QBARDATAPROXY_SETCOLUMNLABELS )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
      obj->setColumnLabels ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBar3DSeries *series() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_SERIES )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBar3DSeries * ptr = obj->series ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBAR3DSERIES" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QBarDataArray *array() const
*/

/*
const QBarDataRow *rowAt(int rowIndex) const
*/

/*
const QBarDataItem *itemAt(int rowIndex, int columnIndex) const
*/
void QBarDataProxy_itemAt1 ()
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      const QBarDataItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QBARDATAITEM", false );
  }
}

/*
const QBarDataItem *itemAt(const QPoint &position) const
*/
void QBarDataProxy_itemAt2 ()
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      const QBarDataItem * ptr = obj->itemAt ( *PQPOINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QBARDATAITEM", false );
  }
}

//[1]const QBarDataItem *itemAt(int rowIndex, int columnIndex) const
//[2]const QBarDataItem *itemAt(const QPoint &position) const

HB_FUNC_STATIC( QBARDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBarDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QBarDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resetArray()
*/

/*
void resetArray(QBarDataArray *newArray)
*/

/*
void resetArray(QBarDataArray *newArray, const QStringList &rowLabels, const QStringList &columnLabels)
*/

//[1]void resetArray()
//[2]void resetArray(QBarDataArray *newArray)
//[3]void resetArray(QBarDataArray *newArray, const QStringList &rowLabels, const QStringList &columnLabels)

HB_FUNC_STATIC( QBARDATAPROXY_RESETARRAY )
{
}

/*
void setRow(int rowIndex, QBarDataRow *row)
*/

/*
void setRow(int rowIndex, QBarDataRow *row, const QString &label)
*/

//[1]void setRow(int rowIndex, QBarDataRow *row)
//[2]void setRow(int rowIndex, QBarDataRow *row, const QString &label)

HB_FUNC_STATIC( QBARDATAPROXY_SETROW )
{
}

/*
void setRows(int rowIndex, const QBarDataArray &rows)
*/

/*
void setRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
*/

//[1]void setRows(int rowIndex, const QBarDataArray &rows)
//[2]void setRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)

HB_FUNC_STATIC( QBARDATAPROXY_SETROWS )
{
}

/*
void setItem(int rowIndex, int columnIndex, const QBarDataItem &item)
*/
void QBarDataProxy_setItem1 ()
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setItem ( PINT(1), PINT(2), *PQBARDATAITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem(const QPoint &position, const QBarDataItem &item)
*/
void QBarDataProxy_setItem2 ()
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->setItem ( *PQPOINT(1), *PQBARDATAITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setItem(int rowIndex, int columnIndex, const QBarDataItem &item)
//[2]void setItem(const QPoint &position, const QBarDataItem &item)

HB_FUNC_STATIC( QBARDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBARDATAITEM(3) )
  {
    QBarDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQBARDATAITEM(2) )
  {
    QBarDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int addRow(QBarDataRow *row)
*/

/*
int addRow(QBarDataRow *row, const QString &label)
*/

//[1]int addRow(QBarDataRow *row)
//[2]int addRow(QBarDataRow *row, const QString &label)

HB_FUNC_STATIC( QBARDATAPROXY_ADDROW )
{
}

/*
int addRows(const QBarDataArray &rows)
*/

/*
int addRows(const QBarDataArray &rows, const QStringList &labels)
*/

//[1]int addRows(const QBarDataArray &rows)
//[2]int addRows(const QBarDataArray &rows, const QStringList &labels)

HB_FUNC_STATIC( QBARDATAPROXY_ADDROWS )
{
}

/*
void insertRow(int rowIndex, QBarDataRow *row)
*/

/*
void insertRow(int rowIndex, QBarDataRow *row, const QString &label)
*/

//[1]void insertRow(int rowIndex, QBarDataRow *row)
//[2]void insertRow(int rowIndex, QBarDataRow *row, const QString &label)

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROW )
{
}

/*
void insertRows(int rowIndex, const QBarDataArray &rows)
*/

/*
void insertRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
*/

//[1]void insertRows(int rowIndex, const QBarDataArray &rows)
//[2]void insertRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROWS )
{
}

/*
void removeRows(int rowIndex, int removeCount, bool removeLabels = true)
*/
HB_FUNC_STATIC( QBARDATAPROXY_REMOVEROWS )
{
  QBarDataProxy * obj = (QBarDataProxy *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTLOG(3) )
    {
      obj->removeRows ( PINT(1), PINT(2), OPBOOL(3,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QBarDataProxySlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QBARDATAPROXY_ONARRAYRESET )
{
  QBarDataProxySlots_connect_signal( "arrayReset()", "arrayReset()" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONCOLUMNLABELSCHANGED )
{
  QBarDataProxySlots_connect_signal( "columnLabelsChanged()", "columnLabelsChanged()" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONITEMCHANGED )
{
  QBarDataProxySlots_connect_signal( "itemChanged(int,int)", "itemChanged(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWCOUNTCHANGED )
{
  QBarDataProxySlots_connect_signal( "rowCountChanged(int)", "rowCountChanged(int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWLABELSCHANGED )
{
  QBarDataProxySlots_connect_signal( "rowLabelsChanged()", "rowLabelsChanged()" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSADDED )
{
  QBarDataProxySlots_connect_signal( "rowsAdded(int,int)", "rowsAdded(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSCHANGED )
{
  QBarDataProxySlots_connect_signal( "rowsChanged(int,int)", "rowsChanged(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSINSERTED )
{
  QBarDataProxySlots_connect_signal( "rowsInserted(int,int)", "rowsInserted(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONROWSREMOVED )
{
  QBarDataProxySlots_connect_signal( "rowsRemoved(int,int)", "rowsRemoved(int,int)" );
}

HB_FUNC_STATIC( QBARDATAPROXY_ONSERIESCHANGED )
{
  QBarDataProxySlots_connect_signal( "seriesChanged(QBar3DSeries*)", "seriesChanged(QBar3DSeries*)" );
}


#pragma ENDDUMP
