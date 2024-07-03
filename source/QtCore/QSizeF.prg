//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isEmpty
   METHOD isValid
   METHOD width
   METHOD height
   METHOD setWidth
   METHOD setHeight
   METHOD transpose
   METHOD transposed
   METHOD scale
   METHOD scaled
   METHOD expandedTo
   METHOD boundedTo
   METHOD toSize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSizeF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QSizeF>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QSizeF>
#endif

HB_FUNC_STATIC(QSIZEF_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QSizeF()
    */
    QSizeF *obj = new QSizeF();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSIZE(1))
  {
    /*
    QSizeF( const QSize & sz )
    */
    QSizeF *obj = new QSizeF(*PQSIZE(1));
    Qt5xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    QSizeF( qreal w, qreal h )
    */
    QSizeF *obj = new QSizeF(PQREAL(1), PQREAL(2));
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSIZEF_DELETE)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QSIZEF_ISNULL)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
bool isEmpty() const
*/
HB_FUNC_STATIC(QSIZEF_ISEMPTY)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEmpty());
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
bool isValid() const
*/
HB_FUNC_STATIC(QSIZEF_ISVALID)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
qreal width() const
*/
HB_FUNC_STATIC(QSIZEF_WIDTH)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->width());
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
qreal height() const
*/
HB_FUNC_STATIC(QSIZEF_HEIGHT)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->height());
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
void setWidth( qreal w )
*/
HB_FUNC_STATIC(QSIZEF_SETWIDTH)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setWidth(PQREAL(1));
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
void setHeight( qreal h )
*/
HB_FUNC_STATIC(QSIZEF_SETHEIGHT)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHeight(PQREAL(1));
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
void transpose()
*/
HB_FUNC_STATIC(QSIZEF_TRANSPOSE)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->transpose();
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
QSizeF transposed() const
*/
HB_FUNC_STATIC(QSIZEF_TRANSPOSED)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSizeF *ptr = new QSizeF(obj->transposed());
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSIZEF_SCALE)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    void scale( qreal w, qreal h, Qt::AspectRatioMode mode )
    */
    QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->scale(PQREAL(1), PQREAL(2), (Qt::AspectRatioMode)hb_parni(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQSIZEF(1) && HB_ISNUM(2))
  {
    /*
    void scale( const QSizeF & s, Qt::AspectRatioMode mode )
    */
    QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->scale(*PQSIZEF(1), (Qt::AspectRatioMode)hb_parni(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSIZEF_SCALED)
{
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    QSizeF scaled( qreal w, qreal h, Qt::AspectRatioMode mode ) const
    */
    QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QSizeF *ptr = new QSizeF(obj->scaled(PQREAL(1), PQREAL(2), (Qt::AspectRatioMode)hb_parni(3)));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
    }
  }
  else if (ISNUMPAR(2) && ISQSIZEF(1) && HB_ISNUM(2))
  {
    /*
    QSizeF scaled( const QSizeF & s, Qt::AspectRatioMode mode ) const
    */
    QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QSizeF *ptr = new QSizeF(obj->scaled(*PQSIZEF(1), (Qt::AspectRatioMode)hb_parni(2)));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QSizeF expandedTo( const QSizeF & ) const
*/
HB_FUNC_STATIC(QSIZEF_EXPANDEDTO)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSIZEF(1))
    {
#endif
      QSizeF *ptr = new QSizeF(obj->expandedTo(*PQSIZEF(1)));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
QSizeF boundedTo( const QSizeF & ) const
*/
HB_FUNC_STATIC(QSIZEF_BOUNDEDTO)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSIZEF(1))
    {
#endif
      QSizeF *ptr = new QSizeF(obj->boundedTo(*PQSIZEF(1)));
      Qt5xHb::createReturnClass(ptr, "QSIZEF", true);
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
QSize toSize() const
*/
HB_FUNC_STATIC(QSIZEF_TOSIZE)
{
  QSizeF *obj = (QSizeF *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->toSize());
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSIZEF_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QSIZEF_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QSIZEF_NEWFROM);
}

HB_FUNC_STATIC(QSIZEF_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QSIZEF_NEWFROM);
}

HB_FUNC_STATIC(QSIZEF_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QSIZEF_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
