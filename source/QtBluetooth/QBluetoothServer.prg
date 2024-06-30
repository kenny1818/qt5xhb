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
REQUEST QBLUETOOTHADDRESS
REQUEST QBLUETOOTHSERVICEINFO
REQUEST QBLUETOOTHSOCKET
#endif

CLASS QBluetoothServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD close
   METHOD listen
   METHOD isListening
   METHOD setMaxPendingConnections
   METHOD maxPendingConnections
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD serverAddress
   METHOD serverPort
   METHOD setSecurityFlags
   METHOD securityFlags
   METHOD serverType
   METHOD error

   METHOD onNewConnection
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBluetoothServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothServer>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothServer>
#endif
#endif

    /*
    QBluetoothServer( QBluetoothServiceInfo::Protocol serverType, QObject * parent = 0 )
    */
HB_FUNC_STATIC(QBLUETOOTHSERVER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    QBluetoothServer *obj = new QBluetoothServer((QBluetoothServiceInfo::Protocol)hb_parni(1), OPQOBJECT(2, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QBLUETOOTHSERVER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
#endif
}

/*
void close()
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_CLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->close();
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

HB_FUNC_STATIC(QBLUETOOTHSERVER_LISTEN)
{
  if (ISBETWEEN(0, 2) && (ISQBLUETOOTHADDRESS(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    bool listen( const QBluetoothAddress & address = QBluetoothAddress(), quint16 port = 0 )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      RBOOL(obj->listen(HB_ISNIL(1) ? QBluetoothAddress() : *(QBluetoothAddress *)Qt5xHb::itemGetPtr(1),
                        OPQUINT16(2, 0)));
    }
#endif
  }
  else if (ISBETWEEN(1, 2) && ISQBLUETOOTHUUID(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
  {
    /*
    QBluetoothServiceInfo listen( const QBluetoothUuid & uuid, const QString & serviceName = QString() )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
    QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QBluetoothServiceInfo *ptr = new QBluetoothServiceInfo(obj->listen(*PQBLUETOOTHUUID(1), OPQSTRING(2, QString())));
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHSERVICEINFO", true);
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isListening() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_ISLISTENING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isListening());
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
void setMaxPendingConnections( int numConnections )
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_SETMAXPENDINGCONNECTIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaxPendingConnections(PINT(1));
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
int maxPendingConnections() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_MAXPENDINGCONNECTIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->maxPendingConnections());
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
bool hasPendingConnections() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_HASPENDINGCONNECTIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasPendingConnections());
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
QBluetoothSocket * nextPendingConnection()
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_NEXTPENDINGCONNECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBluetoothSocket *ptr = obj->nextPendingConnection();
      Qt5xHb::createReturnQObjectClass(ptr, "QBLUETOOTHSOCKET");
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
QBluetoothAddress serverAddress() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_SERVERADDRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QBluetoothAddress *ptr = new QBluetoothAddress(obj->serverAddress());
      Qt5xHb::createReturnClass(ptr, "QBLUETOOTHADDRESS", true);
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
quint16 serverPort() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_SERVERPORT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->serverPort());
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
void setSecurityFlags( QBluetooth::SecurityFlags security )
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_SETSECURITYFLAGS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSecurityFlags((QBluetooth::SecurityFlags)hb_parni(1));
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
QBluetooth::SecurityFlags securityFlags() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_SECURITYFLAGS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->securityFlags());
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
QBluetoothServiceInfo::Protocol serverType() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_SERVERTYPE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->serverType());
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
QBluetoothServer::Error error() const
*/
HB_FUNC_STATIC(QBLUETOOTHSERVER_ERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServer *obj = (QBluetoothServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
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

void QBluetoothServerSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QBLUETOOTHSERVER_ONNEWCONNECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServerSlots_connect_signal("newConnection()", "newConnection()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QBLUETOOTHSERVER_ONERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  QBluetoothServerSlots_connect_signal("error(QBluetoothServer::Error)", "error(QBluetoothServer::Error)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
