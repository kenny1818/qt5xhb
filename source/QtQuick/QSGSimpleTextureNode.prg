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
REQUEST QRECTF
REQUEST QSGTEXTURE
#endif

CLASS QSGSimpleTextureNode INHERIT QSGGeometryNode

   METHOD new
   METHOD delete
   METHOD filtering
   METHOD rect
   METHOD setFiltering
   METHOD setRect
   METHOD setTexture
   METHOD texture

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSGSimpleTextureNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtQuick/QSGSimpleTextureNode>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtQuick/QSGSimpleTextureNode>
#endif

    /*
    QSGSimpleTextureNode()
    */
HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_NEW)
{
  if (ISNUMPAR(0))
  {
    QSGSimpleTextureNode *obj = new QSGSimpleTextureNode();
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_DELETE)
{
  QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

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
QSGTexture::Filtering filtering() const
*/
HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_FILTERING)
{
  QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->filtering());
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
QRectF rect() const
*/
HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_RECT)
{
  QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRectF *ptr = new QRectF(obj->rect());
      Qt5xHb::createReturnClass(ptr, "QRECTF", true);
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
void setFiltering( QSGTexture::Filtering filtering )
*/
HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_SETFILTERING)
{
  QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFiltering((QSGTexture::Filtering)hb_parni(1));
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

HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_SETRECT)
{
  if (ISNUMPAR(1) && ISQRECTF(1))
  {
    /*
    void setRect( const QRectF & r )
    */
    QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setRect(*PQRECTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    /*
    void setRect( qreal x, qreal y, qreal w, qreal h )
    */
    QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->setRect(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setTexture( QSGTexture * texture )
*/
HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_SETTEXTURE)
{
  QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSGTEXTURE(1))
    {
#endif
      obj->setTexture(PQSGTEXTURE(1));
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
QSGTexture * texture() const
*/
HB_FUNC_STATIC(QSGSIMPLETEXTURENODE_TEXTURE)
{
  QSGSimpleTextureNode *obj = (QSGSimpleTextureNode *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSGTexture *ptr = obj->texture();
      Qt5xHb::createReturnQObjectClass(ptr, "QSGTEXTURE");
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
