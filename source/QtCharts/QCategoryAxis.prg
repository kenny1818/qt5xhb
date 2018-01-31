/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QCategoryAxis INHERIT QValueAxis

   METHOD new
   METHOD delete

   METHOD append
   METHOD categoriesLabels
   METHOD count
   METHOD endValue
   METHOD labelsPosition
   METHOD remove
   METHOD replaceLabel
   METHOD setLabelsPosition
   METHOD setStartValue
   METHOD startValue
   METHOD type

   METHOD onCategoriesChanged
   METHOD onLabelsPositionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCategoryAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCategoryAxis>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCategoryAxis>
#endif

using namespace QtCharts;

/*
explicit QCategoryAxis(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCategoryAxis * o = new QCategoryAxis ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QCategoryAxis(QCategoryAxisPrivate &d, QObject *parent = Q_NULLPTR) (protected)
*/

/*
~QCategoryAxis()
*/
HB_FUNC_STATIC( QCATEGORYAXIS_DELETE )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

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
qreal startValue(const QString &categoryLabel = QString()) const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_STARTVALUE )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISOPTCHAR(1) )
    {
      RQREAL( obj->startValue ( OPQSTRING(1,QString()) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setStartValue(qreal min)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_SETSTARTVALUE )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setStartValue ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList categoriesLabels()
*/
HB_FUNC_STATIC( QCATEGORYAXIS_CATEGORIESLABELS )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->categoriesLabels () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int count() const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_COUNT )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->count () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QCategoryAxis::AxisLabelsPosition labelsPosition() const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_LABELSPOSITION )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->labelsPosition () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setLabelsPosition(QCategoryAxis::AxisLabelsPosition position)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_SETLABELSPOSITION )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setLabelsPosition ( (QCategoryAxis::AxisLabelsPosition) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
AxisType type() const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_TYPE )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->type () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void append(const QString &label, qreal categoryEndValue)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_APPEND )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      obj->append ( PQSTRING(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void remove(const QString &label)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_REMOVE )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->remove ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replaceLabel(const QString &oldLabel, const QString &newLabel)
*/
HB_FUNC_STATIC( QCATEGORYAXIS_REPLACELABEL )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      obj->replaceLabel ( PQSTRING(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal endValue(const QString &categoryLabel) const
*/
HB_FUNC_STATIC( QCATEGORYAXIS_ENDVALUE )
{
  QCategoryAxis * obj = (QCategoryAxis *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQREAL( obj->endValue ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
