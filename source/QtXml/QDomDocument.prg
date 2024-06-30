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
REQUEST QBYTEARRAY
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QDOMNODELIST
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
#endif

CLASS QDomDocument INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   METHOD setContent
   METHOD toByteArray
   METHOD toString

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomDocument>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtXml/QDomDocument>
#endif

HB_FUNC_STATIC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QDomDocument()
    */
    QDomDocument * obj = new QDomDocument();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QDomDocument( const QString & name )
    */
    QDomDocument * obj = new QDomDocument( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    /*
    QDomDocument( const QDomDocumentType & doctype )
    */
    QDomDocument * obj = new QDomDocument( *PQDOMDOCUMENTTYPE(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    /*
    QDomDocument( const QDomDocument & x )
    */
    QDomDocument * obj = new QDomDocument( *PQDOMDOCUMENT(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDOMDOCUMENT_DELETE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
QDomAttr createAttribute( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomAttr * ptr = new QDomAttr( obj->createAttribute( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
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
QDomAttr createAttributeNS( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTENS )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      QDomAttr * ptr = new QDomAttr( obj->createAttributeNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMATTR", true);
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
QDomCDATASection createCDATASection( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECDATASECTION )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomCDATASection * ptr = new QDomCDATASection( obj->createCDATASection( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMCDATASECTION", true);
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
QDomComment createComment( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECOMMENT )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomComment * ptr = new QDomComment( obj->createComment( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMCOMMENT", true);
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
QDomDocumentFragment createDocumentFragment()
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEDOCUMENTFRAGMENT )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomDocumentFragment * ptr = new QDomDocumentFragment( obj->createDocumentFragment() );
      Qt5xHb::createReturnClass(ptr, "QDOMDOCUMENTFRAGMENT", true);
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
QDomElement createElement( const QString & tagName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENT )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->createElement( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomElement createElementNS( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENTNS )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->createElementNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomEntityReference createEntityReference( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEENTITYREFERENCE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomEntityReference * ptr = new QDomEntityReference( obj->createEntityReference( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMENTITYREFERENCE", true);
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
QDomProcessingInstruction createProcessingInstruction( const QString & target, const QString & data )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEPROCESSINGINSTRUCTION )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      QDomProcessingInstruction * ptr = new QDomProcessingInstruction( obj->createProcessingInstruction( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMPROCESSINGINSTRUCTION", true);
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
QDomText createTextNode( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATETEXTNODE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomText * ptr = new QDomText( obj->createTextNode( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMTEXT", true);
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
QDomDocumentType doctype() const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCTYPE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomDocumentType * ptr = new QDomDocumentType( obj->doctype() );
      Qt5xHb::createReturnClass(ptr, "QDOMDOCUMENTTYPE", true);
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
QDomElement documentElement() const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCUMENTELEMENT )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->documentElement() );
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomElement elementById( const QString & elementId )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTBYID )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomElement * ptr = new QDomElement( obj->elementById( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMELEMENT", true);
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
QDomNodeList elementsByTagName( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAME )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagName( PQSTRING(1) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMNODELIST", true);
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
QDomNodeList elementsByTagNameNS( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAMENS )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagNameNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMNODELIST", true);
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
QDomImplementation implementation() const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPLEMENTATION )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDomImplementation * ptr = new QDomImplementation( obj->implementation() );
      Qt5xHb::createReturnClass(ptr, "QDOMIMPLEMENTATION", true);
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
QDomNode importNode( const QDomNode & importedNode, bool deep )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPORTNODE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDOMNODE(1) && HB_ISLOG(2) )
    {
#endif
      QDomNode * ptr = new QDomNode( obj->importNode( *PQDOMNODE(1), PBOOL(2) ) );
      Qt5xHb::createReturnClass(ptr, "QDOMNODE", true);
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
HB_FUNC_STATIC( QDOMDOCUMENT_NODETYPE )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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

HB_FUNC_STATIC( QDOMDOCUMENT_SETCONTENT )
{
  if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && HB_ISLOG(2) && ( HB_ISCHAR(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) && ( HB_ISNUM(5)||HB_ISNIL(5)) )
  {
    /*
    bool setContent( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par4;
      int par5;
      RBOOL( obj->setContent( *PQBYTEARRAY(1), PBOOL(2), NULL, &par4, &par5 ) );
      hb_storni( par4, 4 );
      hb_storni( par5, 5 );
    }
  }
  else if( ISBETWEEN(2,5) && HB_ISCHAR(1) && HB_ISLOG(2) && ( HB_ISCHAR(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) && ( HB_ISNUM(5)||HB_ISNIL(5)) )
  {
    /*
    bool setContent( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par4;
      int par5;
      RBOOL( obj->setContent( PQSTRING(1), PBOOL(2), NULL, &par4, &par5 ) );
      hb_storni( par4, 4 );
      hb_storni( par5, 5 );
    }
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && HB_ISLOG(2) && ( HB_ISCHAR(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) && ( HB_ISNUM(5)||HB_ISNIL(5)) )
  {
    /*
    bool setContent( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par4;
      int par5;
      RBOOL( obj->setContent( PQIODEVICE(1), PBOOL(2), NULL, &par4, &par5 ) );
      hb_storni( par4, 4 );
      hb_storni( par5, 5 );
    }
  }
  else if( ISBETWEEN(2,5) && ISQXMLINPUTSOURCE(1) && HB_ISLOG(2) && ( HB_ISCHAR(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) && ( HB_ISNUM(5)||HB_ISNIL(5)) )
  {
    /*
    bool setContent( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par4;
      int par5;
      RBOOL( obj->setContent( PQXMLINPUTSOURCE(1), PBOOL(2), NULL, &par4, &par5 ) );
      hb_storni( par4, 4 );
      hb_storni( par5, 5 );
    }
  }
  else if( ISBETWEEN(1,4) && HB_ISCHAR(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) && ( HB_ISNUM(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
  {
    /*
    bool setContent( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par3;
      int par4;
      RBOOL( obj->setContent( PQSTRING(1), NULL, &par3, &par4 ) );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
  }
  else if( ISBETWEEN(1,4) && ISQBYTEARRAY(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) && ( HB_ISNUM(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
  {
    /*
    bool setContent( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par3;
      int par4;
      RBOOL( obj->setContent( *PQBYTEARRAY(1), NULL, &par3, &par4 ) );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
  }
  else if( ISBETWEEN(1,4) && ISQIODEVICE(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) && ( HB_ISNUM(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
  {
    /*
    bool setContent( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par3;
      int par4;
      RBOOL( obj->setContent( PQIODEVICE(1), NULL, &par3, &par4 ) );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
  }
  else if( ISBETWEEN(1,4) && ISQXMLINPUTSOURCE(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) && ( HB_ISNUM(3)||HB_ISNIL(3)) && ( HB_ISNUM(4)||HB_ISNIL(4)) )
  {
    /*
    bool setContent( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
    */
    QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj != NULL )
    {
      int par4;
      int par5;
      RBOOL( obj->setContent( PQXMLINPUTSOURCE(1), PQXMLREADER(2), NULL, &par4, &par5 ) );
      hb_storni( par4, 4 );
      hb_storni( par5, 5 );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QByteArray toByteArray( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOBYTEARRAY )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toByteArray( OPINT(1,1) ) );
      Qt5xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QString toString( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOSTRING )
{
  QDomDocument * obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (HB_ISNUM(1)||HB_ISNIL(1)) )
    {
#endif
      RQSTRING( obj->toString( OPINT(1,1) ) );
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
