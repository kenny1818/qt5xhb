//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraZoomControl INHERIT QMediaControl

   METHOD delete
   METHOD currentDigitalZoom
   METHOD currentOpticalZoom
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD requestedDigitalZoom
   METHOD requestedOpticalZoom
   METHOD zoomTo

   METHOD onCurrentDigitalZoomChanged
   METHOD onCurrentOpticalZoomChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onRequestedDigitalZoomChanged
   METHOD onRequestedOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraZoomControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraZoomControl>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraZoomControl>
#endif

    /*
    ~QCameraZoomControl()
    */
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_DELETE)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

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
virtual qreal currentDigitalZoom() const = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_CURRENTDIGITALZOOM)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->currentDigitalZoom());
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
virtual qreal currentOpticalZoom() const = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_CURRENTOPTICALZOOM)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->currentOpticalZoom());
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
virtual qreal maximumDigitalZoom() const = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_MAXIMUMDIGITALZOOM)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumDigitalZoom());
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
virtual qreal maximumOpticalZoom() const = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_MAXIMUMOPTICALZOOM)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->maximumOpticalZoom());
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
virtual qreal requestedDigitalZoom() const = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_REQUESTEDDIGITALZOOM)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->requestedDigitalZoom());
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
virtual qreal requestedOpticalZoom() const = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_REQUESTEDOPTICALZOOM)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->requestedOpticalZoom());
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
virtual void zoomTo( qreal optical, qreal digital ) = 0
*/
HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ZOOMTO)
{
  QCameraZoomControl *obj = (QCameraZoomControl *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->zoomTo(PQREAL(1), PQREAL(2));
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

void QCameraZoomControlSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ONCURRENTDIGITALZOOMCHANGED)
{
  QCameraZoomControlSlots_connect_signal("currentDigitalZoomChanged(qreal)", "currentDigitalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ONCURRENTOPTICALZOOMCHANGED)
{
  QCameraZoomControlSlots_connect_signal("currentOpticalZoomChanged(qreal)", "currentOpticalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ONMAXIMUMDIGITALZOOMCHANGED)
{
  QCameraZoomControlSlots_connect_signal("maximumDigitalZoomChanged(qreal)", "maximumDigitalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ONMAXIMUMOPTICALZOOMCHANGED)
{
  QCameraZoomControlSlots_connect_signal("maximumOpticalZoomChanged(qreal)", "maximumOpticalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ONREQUESTEDDIGITALZOOMCHANGED)
{
  QCameraZoomControlSlots_connect_signal("requestedDigitalZoomChanged(qreal)", "requestedDigitalZoomChanged(qreal)");
}

HB_FUNC_STATIC(QCAMERAZOOMCONTROL_ONREQUESTEDOPTICALZOOMCHANGED)
{
  QCameraZoomControlSlots_connect_signal("requestedOpticalZoomChanged(qreal)", "requestedOpticalZoomChanged(qreal)");
}

#pragma ENDDUMP
