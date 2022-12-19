/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QStringMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn
   METHOD pattern
   METHOD caseSensitivity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStringMatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QStringMatcher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QStringMatcher>
#endif

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QStringMatcher()
    */
    QStringMatcher * obj = new QStringMatcher();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISBETWEEN(1,2) && HB_ISCHAR(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    /*
    QStringMatcher( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive )
    */
    QStringMatcher * obj = new QStringMatcher( PQSTRING(1), HB_ISNIL(2)? (Qt::CaseSensitivity) Qt::CaseSensitive : (Qt::CaseSensitivity) hb_parni(2) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && HB_ISNUM(2) && ( HB_ISNUM(3)||HB_ISNIL(3)) )
  {
    /*
    QStringMatcher( const QChar * uc, int len, Qt::CaseSensitivity cs = Qt::CaseSensitive )
    */
    QStringMatcher * obj = new QStringMatcher( PQCHAR(1), PINT(2), HB_ISNIL(3)? (Qt::CaseSensitivity) Qt::CaseSensitive : (Qt::CaseSensitivity) hb_parni(3) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    /*
    QStringMatcher( const QStringMatcher & other )
    */
    QStringMatcher * obj = new QStringMatcher( *PQSTRINGMATCHER(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSTRINGMATCHER_DELETE )
{
  QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPattern( const QString & pattern )
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETPATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPattern( PQSTRING(1) );
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
void setCaseSensitivity( Qt::CaseSensitivity cs )
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETCASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCaseSensitivity( (Qt::CaseSensitivity) hb_parni(1) );
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

HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && HB_ISCHAR(1) && ( HB_ISNUM(2)||HB_ISNIL(2)) )
  {
    /*
    int indexIn( const QString & str, int from = 0 ) const
    */
    QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RINT( obj->indexIn( PQSTRING(1), OPINT(2,0) ) );
    }
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && HB_ISNUM(2) && ( HB_ISNUM(3)||HB_ISNIL(3)) )
  {
    /*
    int indexIn( const QChar * str, int length, int from = 0 ) const
    */
    QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RINT( obj->indexIn( PQCHAR(1), PINT(2), OPINT(3,0) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString pattern() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_PATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->pattern() );
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
Qt::CaseSensitivity caseSensitivity() const
*/
HB_FUNC_STATIC( QSTRINGMATCHER_CASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->caseSensitivity() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, (void *) hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTRINGMATCHER_NEWFROM );
}

HB_FUNC_STATIC( QSTRINGMATCHER_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSTRINGMATCHER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
