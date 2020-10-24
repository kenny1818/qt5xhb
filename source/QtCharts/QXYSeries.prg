/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
REQUEST QFONT
REQUEST QPEN
REQUEST QPOINTF
#endif

CLASS QXYSeries INHERIT QAbstractSeries

   METHOD delete
   METHOD pointsVisible
   METHOD setPointsVisible
   METHOD color
   METHOD setColor
   METHOD pointLabelsFormat
   METHOD setPointLabelsFormat
   METHOD pointLabelsVisible
   METHOD setPointLabelsVisible
   METHOD pointLabelsFont
   METHOD setPointLabelsFont
   METHOD pointLabelsColor
   METHOD setPointLabelsColor
   METHOD pointLabelsClipping
   METHOD setPointLabelsClipping
   METHOD append
   METHOD replace
   METHOD remove
   METHOD removePoints
   METHOD insert
   METHOD clear
   METHOD count
   METHOD points
   METHOD pointsVector
   METHOD at
   METHOD setPen
   METHOD pen
   METHOD setBrush
   METHOD brush

   METHOD onClicked
   METHOD onColorChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPenChanged
   METHOD onPointAdded
   METHOD onPointLabelsClippingChanged
   METHOD onPointLabelsColorChanged
   METHOD onPointLabelsFontChanged
   METHOD onPointLabelsFormatChanged
   METHOD onPointLabelsVisibilityChanged
   METHOD onPointRemoved
   METHOD onPointReplaced
   METHOD onPointsRemoved
   METHOD onPointsReplaced
   METHOD onPressed
   METHOD onReleased

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXYSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QXYSeries>
#endif
#endif

using namespace QtCharts;

/*
~QXYSeries()
*/
HB_FUNC_STATIC( QXYSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool pointsVisible() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->pointsVisible() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setPointsVisible( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual QColor color() const
*/
HB_FUNC_STATIC( QXYSERIES_COLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual void setColor(const QColor &color)
*/
HB_FUNC_STATIC( QXYSERIES_SETCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString pointLabelsFormat() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->pointLabelsFormat() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsFormat(const QString &format)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSFORMAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPointLabelsFormat( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool pointLabelsVisible() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->pointLabelsVisible() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setPointLabelsVisible( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QFont pointLabelsFont() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->pointLabelsFont() );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsFont(const QFont &font)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSFONT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setPointLabelsFont( *PQFONT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QColor pointLabelsColor() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QColor * ptr = new QColor( obj->pointLabelsColor() );
      Qt5xHb::createReturnClass( ptr, "QCOLOR", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsColor(const QColor &color)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSCOLOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->setPointLabelsColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool pointLabelsClipping() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->pointLabelsClipping() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setPointLabelsClipping(bool enabled = true)
*/
HB_FUNC_STATIC( QXYSERIES_SETPOINTLABELSCLIPPING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setPointLabelsClipping( OPBOOL(1,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void append(qreal x, qreal y)
*/
void QXYSeries_append1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->append( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void append(const QPointF &point)
*/
void QXYSeries_append2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->append( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void append(const QList<QPointF> &points)
*/
void QXYSeries_append3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QPointF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->append( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void append(qreal x, qreal y)
[2]void append(const QPointF &point)
[3]void append(const QList<QPointF> &points)
*/

HB_FUNC_STATIC( QXYSERIES_APPEND )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_append1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_append2();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
*/
void QXYSeries_replace1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->replace( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void replace(const QPointF &oldPoint, const QPointF &newPoint)
*/
void QXYSeries_replace2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->replace( *PQPOINTF(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void replace(int index, qreal newX, qreal newY)
*/
void QXYSeries_replace3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->replace( PINT(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void replace(int index, const QPointF &newPoint)
*/
void QXYSeries_replace4()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->replace( PINT(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void replace(QList<QPointF> points)
*/
void QXYSeries_replace5()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QPointF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->replace( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void replace(QVector<QPointF> points)
*/
void QXYSeries_replace6()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<QPointF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->replace( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void replace(qreal oldX, qreal oldY, qreal newX, qreal newY)
[2]void replace(const QPointF &oldPoint, const QPointF &newPoint)
[3]void replace(int index, qreal newX, qreal newY)
[4]void replace(int index, const QPointF &newPoint)
[5]void replace(QList<QPointF> points)
[6]void replace(QVector<QPointF> points)
*/

HB_FUNC_STATIC( QXYSERIES_REPLACE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QXYSeries_replace1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QXYSeries_replace3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
  {
    QXYSeries_replace4();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace5();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QXYSeries_replace6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove(qreal x, qreal y)
*/
void QXYSeries_remove1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->remove( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void remove(const QPointF &point)
*/
void QXYSeries_remove2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->remove( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void remove(int index)
*/
void QXYSeries_remove3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->remove( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void remove(qreal x, qreal y)
[2]void remove(const QPointF &point)
[3]void remove(int index)
*/

HB_FUNC_STATIC( QXYSERIES_REMOVE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QXYSeries_remove1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QXYSeries_remove2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QXYSeries_remove3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removePoints(int index, int count)
*/
HB_FUNC_STATIC( QXYSERIES_REMOVEPOINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removePoints( PINT(1), PINT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void insert(int index, const QPointF &point)
*/
HB_FUNC_STATIC( QXYSERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQPOINTF(2) )
    {
#endif
      obj->insert( PINT(1), *PQPOINTF(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC( QXYSERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int count() const
*/
HB_FUNC_STATIC( QXYSERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QList<QPointF> points() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QPointF> list = obj->points();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QPointF *) new QPointF( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPOINTF", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QVector<QPointF> pointsVector() const
*/
HB_FUNC_STATIC( QXYSERIES_POINTSVECTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QPointF> list = obj->pointsVector();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QPointF *) new QPointF( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPOINTF", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
const QPointF &at(int index) const
*/
HB_FUNC_STATIC( QXYSERIES_AT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      const QPointF * ptr = &obj->at( PINT(1) );
      Qt5xHb::createReturnClass( ptr, "QPOINTF", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual void setPen(const QPen &pen)
*/
HB_FUNC_STATIC( QXYSERIES_SETPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPEN(1) )
    {
#endif
      obj->setPen( *PQPEN(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPen pen() const
*/
HB_FUNC_STATIC( QXYSERIES_PEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPen * ptr = new QPen( obj->pen() );
      Qt5xHb::createReturnClass( ptr, "QPEN", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual void setBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QXYSERIES_SETBRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
#endif
      obj->setBrush( *PQBRUSH(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBrush brush() const
*/
HB_FUNC_STATIC( QXYSERIES_BRUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeries * obj = (QXYSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBrush * ptr = new QBrush( obj->brush() );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

void QXYSeriesSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QXYSERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "clicked(QPointF)", "clicked(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "doubleClicked(QPointF)", "doubleClicked(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "hovered(QPointF,bool)", "hovered(QPointF,bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPENCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "penChanged(QPen)", "penChanged(QPen)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointAdded(int)", "pointAdded(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTLABELSCLIPPINGCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointLabelsClippingChanged(bool)", "pointLabelsClippingChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTLABELSCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointLabelsColorChanged(QColor)", "pointLabelsColorChanged(QColor)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTLABELSFONTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointLabelsFontChanged(QFont)", "pointLabelsFontChanged(QFont)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTLABELSFORMATCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointLabelsFormatChanged(QString)", "pointLabelsFormatChanged(QString)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTLABELSVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointLabelsVisibilityChanged(bool)", "pointLabelsVisibilityChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointRemoved(int)", "pointRemoved(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointReplaced(int)", "pointReplaced(int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointsRemoved(int,int)", "pointsRemoved(int,int)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPOINTSREPLACED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pointsReplaced()", "pointsReplaced()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "pressed(QPointF)", "pressed(QPointF)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QXYSERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QXYSeriesSlots_connect_signal( "released(QPointF)", "released(QPointF)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
