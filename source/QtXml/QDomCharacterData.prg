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

CLASS QDomCharacterData INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD appendData
   METHOD data
   METHOD deleteData
   METHOD insertData
   METHOD length
   METHOD nodeType
   METHOD replaceData
   METHOD setData
   METHOD substringData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomCharacterData
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomCharacterData>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomCharacterData>
#endif

HB_FUNC_STATIC( QDOMCHARACTERDATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDomCharacterData()
    */
    QDomCharacterData * obj = new QDomCharacterData();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQDOMCHARACTERDATA(1) )
  {
    /*
    QDomCharacterData( const QDomCharacterData & x )
    */
    QDomCharacterData * obj = new QDomCharacterData( *PQDOMCHARACTERDATA(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDOMCHARACTERDATA_DELETE )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

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
void appendData( const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_APPENDDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->appendData( PQSTRING(1) );
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
QString data() const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_DATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->data() );
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
void deleteData( unsigned long offset, unsigned long count )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_DELETEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->deleteData( PUNSIGNEDLONG(1), PUNSIGNEDLONG(2) );
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
void insertData( unsigned long offset, const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_INSERTDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->insertData( PUNSIGNEDLONG(1), PQSTRING(2) );
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
uint length() const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_LENGTH )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RUINT( obj->length() );
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
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_NODETYPE )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
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
void replaceData( unsigned long offset, unsigned long count, const QString & arg )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_REPLACEDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISCHAR(3) )
    {
#endif
      obj->replaceData( PUNSIGNEDLONG(1), PUNSIGNEDLONG(2), PQSTRING(3) );
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
void setData( const QString & v )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_SETDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setData( PQSTRING(1) );
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
QString substringData( unsigned long offset, unsigned long count )
*/
HB_FUNC_STATIC( QDOMCHARACTERDATA_SUBSTRINGDATA )
{
  QDomCharacterData * obj = (QDomCharacterData *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RQSTRING( obj->substringData( PUNSIGNEDLONG(1), PUNSIGNEDLONG(2) ) );
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
