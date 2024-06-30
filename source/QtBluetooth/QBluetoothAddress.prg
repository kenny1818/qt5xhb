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
#endif

CLASS QBluetoothAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD clear
   METHOD toUInt64
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothAddress
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothAddress>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothAddress>
#endif
#endif

HB_FUNC_STATIC(QBLUETOOTHADDRESS_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QBluetoothAddress()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QBluetoothAddress *obj = new QBluetoothAddress();
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QBluetoothAddress( quint64 address )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QBluetoothAddress *obj = new QBluetoothAddress(PQUINT64(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QBluetoothAddress( const QString & address )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QBluetoothAddress *obj = new QBluetoothAddress(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else if (ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1))
  {
    /*
    QBluetoothAddress( const QBluetoothAddress & other )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QBluetoothAddress *obj = new QBluetoothAddress(*PQBLUETOOTHADDRESS(1));
    Qt5xHb::returnNewObject(obj, true);
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBLUETOOTHADDRESS_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothAddress *obj = (QBluetoothAddress *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QBLUETOOTHADDRESS_ISNULL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothAddress *obj = (QBluetoothAddress *)Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void clear()
*/
HB_FUNC_STATIC(QBLUETOOTHADDRESS_CLEAR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothAddress *obj = (QBluetoothAddress *)Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
quint64 toUInt64() const
*/
HB_FUNC_STATIC(QBLUETOOTHADDRESS_TOUINT64)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothAddress *obj = (QBluetoothAddress *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT64(obj->toUInt64());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString toString() const
*/
HB_FUNC_STATIC(QBLUETOOTHADDRESS_TOSTRING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothAddress *obj = (QBluetoothAddress *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->toString());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC(QBLUETOOTHADDRESS_NEWFROM)
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

HB_FUNC_STATIC(QBLUETOOTHADDRESS_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QBLUETOOTHADDRESS_NEWFROM);
}

HB_FUNC_STATIC(QBLUETOOTHADDRESS_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QBLUETOOTHADDRESS_NEWFROM);
}

HB_FUNC_STATIC(QBLUETOOTHADDRESS_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QBLUETOOTHADDRESS_SETSELFDESTRUCTION)
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
