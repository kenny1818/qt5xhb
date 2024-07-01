/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD setQuery
   METHOD record
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD setHeaderData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlQueryModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QSqlQueryModel>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtSql/QSqlQueryModel>
#endif

#include <QtSql/QSqlError>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlRecord>

    /*
    QSqlQueryModel( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QSQLQUERYMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QSqlQueryModel *obj = new QSqlQueryModel(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSQLQUERYMODEL_DELETE)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void clear()
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_CLEAR)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSqlError lastError() const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_LASTERROR)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSqlError *ptr = new QSqlError(obj->lastError());
      Qt5xHb::createReturnClass(ptr, "QSQLERROR", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QSqlQuery query() const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_QUERY)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSqlQuery *ptr = new QSqlQuery(obj->query());
      Qt5xHb::createReturnClass(ptr, "QSQLQUERY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSQLQUERYMODEL_SETQUERY)
{
  if (ISNUMPAR(1) && ISQSQLQUERY(1))
  {
    /*
    void setQuery( const QSqlQuery & query )
    */
    QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setQuery(*PQSQLQUERY(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQSQLDATABASE(2) || HB_ISNIL(2)))
  {
    /*
    void setQuery( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
    */
    QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setQuery(PQSTRING(1), HB_ISNIL(2) ? QSqlDatabase() : *(QSqlDatabase *)Qt5xHb::itemGetPtr(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSQLQUERYMODEL_RECORD)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QSqlRecord record( int row ) const
    */
    QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QSqlRecord *ptr = new QSqlRecord(obj->record(PINT(1)));
      Qt5xHb::createReturnClass(ptr, "QSQLRECORD", true);
    }
  }
  else if (ISNUMPAR(0))
  {
    /*
    QSqlRecord record() const
    */
    QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QSqlRecord *ptr = new QSqlRecord(obj->record());
      Qt5xHb::createReturnClass(ptr, "QSQLRECORD", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool canFetchMore( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_CANFETCHMORE)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->canFetchMore(HB_ISNIL(1) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int columnCount( const QModelIndex & index = QModelIndex() ) const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_COLUMNCOUNT)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->columnCount(HB_ISNIL(1) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVariant data( const QModelIndex & item, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_DATA)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQMODELINDEX(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      QVariant *ptr = new QVariant(obj->data(*PQMODELINDEX(1), OPINT(2, Qt::DisplayRole)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void fetchMore( const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_FETCHMORE)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      obj->fetchMore(HB_ISNIL(1) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_HEADERDATA)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      QVariant *ptr = new QVariant(obj->headerData(PINT(1), (Qt::Orientation)hb_parni(2), OPINT(3, Qt::DisplayRole)));
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool setHeaderData( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_SETHEADERDATA)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ISQVARIANT(3) && (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      RBOOL(obj->setHeaderData(PINT(1), (Qt::Orientation)hb_parni(2), *PQVARIANT(3), OPINT(4, Qt::EditRole)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_INSERTCOLUMNS)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->insertColumns(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(3)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_REMOVECOLUMNS)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->removeColumns(PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(3)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC(QSQLQUERYMODEL_ROWCOUNT)
{
  QSqlQueryModel *obj = (QSqlQueryModel *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->rowCount(HB_ISNIL(1) ? QModelIndex() : *(QModelIndex *)Qt5xHb::itemGetPtr(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
