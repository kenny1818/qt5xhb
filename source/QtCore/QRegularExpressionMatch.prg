/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSION
REQUEST QSTRINGREF
#endif

CLASS QRegularExpressionMatch

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD captured
   METHOD capturedEnd
   METHOD capturedLength
   METHOD capturedRef
   METHOD capturedStart
   METHOD capturedTexts
   METHOD hasMatch
   METHOD hasPartialMatch
   METHOD isValid
   METHOD lastCapturedIndex
   METHOD matchOptions
   METHOD matchType
   METHOD regularExpression
   METHOD swap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRegularExpressionMatch
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QRegularExpressionMatch>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QRegularExpressionMatch>
#endif

/*
QRegularExpressionMatch( const QRegularExpressionMatch & match )
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEW )
{
  if( ISNUMPAR(1) && ISQREGULAREXPRESSIONMATCH(1) )
  {
    QRegularExpressionMatch * obj = new QRegularExpressionMatch( *PQREGULAREXPRESSIONMATCH(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_DELETE )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTURED )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    /*
    QString captured( int nth = 0 ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RQSTRING( obj->captured( OPINT(1,0) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QString captured( const QString & name ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RQSTRING( obj->captured( PQSTRING(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDEND )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    /*
    int capturedEnd( int nth = 0 ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RINT( obj->capturedEnd( OPINT(1,0) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    int capturedEnd( const QString & name ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RINT( obj->capturedEnd( PQSTRING(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDLENGTH )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    /*
    int capturedLength( int nth = 0 ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RINT( obj->capturedLength( OPINT(1,0) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    int capturedLength( const QString & name ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RINT( obj->capturedLength( PQSTRING(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDREF )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    /*
    QStringRef capturedRef( int nth = 0 ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QStringRef * ptr = new QStringRef( obj->capturedRef( OPINT(1,0) ) );
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QStringRef capturedRef( const QString & name ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      QStringRef * ptr = new QStringRef( obj->capturedRef( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QSTRINGREF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDSTART )
{
  if( ISBETWEEN(0,1) && ( HB_ISNUM(1)||HB_ISNIL(1)) )
  {
    /*
    int capturedStart( int nth = 0 ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RINT( obj->capturedStart( OPINT(1,0) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    int capturedStart( const QString & name ) const
    */
    QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      RINT( obj->capturedStart( PQSTRING(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList capturedTexts() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_CAPTUREDTEXTS )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->capturedTexts() );
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
bool hasMatch() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_HASMATCH )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasMatch() );
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
bool hasPartialMatch() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_HASPARTIALMATCH )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPartialMatch() );
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
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_ISVALID )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
int lastCapturedIndex() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_LASTCAPTUREDINDEX )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lastCapturedIndex() );
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
QRegularExpression::MatchOptions matchOptions() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_MATCHOPTIONS )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->matchOptions() );
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
QRegularExpression::MatchType matchType() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_MATCHTYPE )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->matchType() );
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
QRegularExpression regularExpression() const
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_REGULAREXPRESSION )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegularExpression * ptr = new QRegularExpression( obj->regularExpression() );
      Qt5xHb::createReturnClass(ptr, "QREGULAREXPRESSION", true);
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
void swap( QRegularExpressionMatch & other )
*/
HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_SWAP )
{
  QRegularExpressionMatch * obj = (QRegularExpressionMatch *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGULAREXPRESSIONMATCH(1) )
    {
#endif
      obj->swap( *PQREGULAREXPRESSIONMATCH(1) );
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

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
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

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGULAREXPRESSIONMATCH_NEWFROM );
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QREGULAREXPRESSIONMATCH_SETSELFDESTRUCTION )
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
