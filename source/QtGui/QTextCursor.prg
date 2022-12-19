/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTBLOCKFORMAT
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTFRAGMENT
REQUEST QTEXTFRAME
REQUEST QTEXTLIST
REQUEST QTEXTTABLE
#endif

CLASS QTextCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isNull
   METHOD setPosition
   METHOD position
   METHOD positionInBlock
   METHOD anchor
   METHOD insertText
   METHOD movePosition
   METHOD visualNavigation
   METHOD setVisualNavigation
   METHOD setVerticalMovementX
   METHOD verticalMovementX
   METHOD setKeepPositionOnInsert
   METHOD keepPositionOnInsert
   METHOD deleteChar
   METHOD deletePreviousChar
   METHOD select
   METHOD hasSelection
   METHOD hasComplexSelection
   METHOD removeSelectedText
   METHOD clearSelection
   METHOD selectionStart
   METHOD selectionEnd
   METHOD selectedText
   METHOD selection
   METHOD selectedTableCells
   METHOD block
   METHOD charFormat
   METHOD setCharFormat
   METHOD mergeCharFormat
   METHOD blockFormat
   METHOD setBlockFormat
   METHOD mergeBlockFormat
   METHOD blockCharFormat
   METHOD setBlockCharFormat
   METHOD mergeBlockCharFormat
   METHOD atBlockStart
   METHOD atBlockEnd
   METHOD atStart
   METHOD atEnd
   METHOD insertBlock
   METHOD insertList
   METHOD createList
   METHOD currentList
   METHOD insertTable
   METHOD currentTable
   METHOD insertFrame
   METHOD currentFrame
   METHOD insertFragment
   METHOD insertHtml
   METHOD insertImage
   METHOD beginEditBlock
   METHOD joinPreviousEditBlock
   METHOD endEditBlock
   METHOD isCopyOf
   METHOD blockNumber
   METHOD columnNumber
   METHOD document

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QTextCursor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QTextCursor>
#endif

#include <QtGui/QTextDocumentFragment>
#include <QtGui/QTextBlock>
#include <QtGui/QTextList>
#include <QtGui/QTextTable>
#include <QtGui/QTextDocument>

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTextCursor()
    */
    QTextCursor * obj = new QTextCursor();
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    /*
    QTextCursor( QTextDocument * document )
    */
    QTextCursor * obj = new QTextCursor( PQTEXTDOCUMENT(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    /*
    QTextCursor( QTextFrame * frame )
    */
    QTextCursor * obj = new QTextCursor( PQTEXTFRAME(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    /*
    QTextCursor( const QTextBlock & block )
    */
    QTextCursor * obj = new QTextCursor( *PQTEXTBLOCK(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    /*
    QTextCursor( const QTextCursor & cursor )
    */
    QTextCursor * obj = new QTextCursor( *PQTEXTCURSOR(1) );
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_DELETE )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

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
void swap( QTextCursor & other )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SWAP )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
    {
#endif
      obj->swap( *PQTEXTCURSOR(1) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ISNULL )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
void setPosition( int pos, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETPOSITION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      obj->setPosition( PINT(1), HB_ISNIL(2)? (QTextCursor::MoveMode) QTextCursor::MoveAnchor : (QTextCursor::MoveMode) hb_parni(2) );
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
int position() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_POSITION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->position() );
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
int positionInBlock() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_POSITIONINBLOCK )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->positionInBlock() );
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
int anchor() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ANCHOR )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->anchor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    void insertText( const QString & text )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertText( PQSTRING(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQTEXTCHARFORMAT(2) )
  {
    /*
    void insertText( const QString & text, const QTextCharFormat & format )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertText( PQSTRING(1), *PQTEXTCHARFORMAT(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool movePosition( QTextCursor::MoveOperation op, QTextCursor::MoveMode = QTextCursor::MoveAnchor, int n = 1 )
*/
HB_FUNC_STATIC( QTEXTCURSOR_MOVEPOSITION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && HB_ISNUM(1) && (HB_ISNUM(2)||HB_ISNIL(2)) && (HB_ISNUM(3)||HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->movePosition( (QTextCursor::MoveOperation) hb_parni(1), HB_ISNIL(2)? (QTextCursor::MoveMode) QTextCursor::MoveAnchor : (QTextCursor::MoveMode) hb_parni(2), OPINT(3,1) ) );
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
bool visualNavigation() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_VISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->visualNavigation() );
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
void setVisualNavigation( bool b )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETVISUALNAVIGATION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisualNavigation( PBOOL(1) );
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
void setVerticalMovementX( int x )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETVERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVerticalMovementX( PINT(1) );
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
int verticalMovementX() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_VERTICALMOVEMENTX )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->verticalMovementX() );
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
void setKeepPositionOnInsert( bool b )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETKEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setKeepPositionOnInsert( PBOOL(1) );
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
bool keepPositionOnInsert() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_KEEPPOSITIONONINSERT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->keepPositionOnInsert() );
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
void deleteChar()
*/
HB_FUNC_STATIC( QTEXTCURSOR_DELETECHAR )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->deleteChar();
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
void deletePreviousChar()
*/
HB_FUNC_STATIC( QTEXTCURSOR_DELETEPREVIOUSCHAR )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->deletePreviousChar();
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
void select( QTextCursor::SelectionType selection )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->select( (QTextCursor::SelectionType) hb_parni(1) );
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
bool hasSelection() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_HASSELECTION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasSelection() );
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
bool hasComplexSelection() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_HASCOMPLEXSELECTION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasComplexSelection() );
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
void removeSelectedText()
*/
HB_FUNC_STATIC( QTEXTCURSOR_REMOVESELECTEDTEXT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->removeSelectedText();
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
void clearSelection()
*/
HB_FUNC_STATIC( QTEXTCURSOR_CLEARSELECTION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearSelection();
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
int selectionStart() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTIONSTART )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectionStart() );
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
int selectionEnd() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTIONEND )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectionEnd() );
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
QString selectedText() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTEDTEXT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->selectedText() );
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
QTextDocumentFragment selection() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTION )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextDocumentFragment * ptr = new QTextDocumentFragment( obj->selection() );
      Qt5xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);
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
void selectedTableCells( int * firstRow, int * numRows, int * firstColumn, int * numColumns ) const
*/
HB_FUNC_STATIC( QTEXTCURSOR_SELECTEDTABLECELLS )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) )
    {
#endif
      int par1;
      int par2;
      int par3;
      int par4;
      obj->selectedTableCells( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
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
QTextBlock block() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCK )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextBlock * ptr = new QTextBlock( obj->block() );
      Qt5xHb::createReturnClass(ptr, "QTEXTBLOCK", true);
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
QTextCharFormat charFormat() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextCharFormat * ptr = new QTextCharFormat( obj->charFormat() );
      Qt5xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
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
void setCharFormat( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
#endif
      obj->setCharFormat( *PQTEXTCHARFORMAT(1) );
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
void mergeCharFormat( const QTextCharFormat & modifier )
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGECHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
#endif
      obj->mergeCharFormat( *PQTEXTCHARFORMAT(1) );
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
QTextBlockFormat blockFormat() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextBlockFormat * ptr = new QTextBlockFormat( obj->blockFormat() );
      Qt5xHb::createReturnClass(ptr, "QTEXTBLOCKFORMAT", true);
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
void setBlockFormat( const QTextBlockFormat & format )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETBLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
    {
#endif
      obj->setBlockFormat( *PQTEXTBLOCKFORMAT(1) );
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
void mergeBlockFormat( const QTextBlockFormat & modifier )
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGEBLOCKFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
    {
#endif
      obj->mergeBlockFormat( *PQTEXTBLOCKFORMAT(1) );
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
QTextCharFormat blockCharFormat() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextCharFormat * ptr = new QTextCharFormat( obj->blockCharFormat() );
      Qt5xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
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
void setBlockCharFormat( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QTEXTCURSOR_SETBLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
#endif
      obj->setBlockCharFormat( *PQTEXTCHARFORMAT(1) );
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
void mergeBlockCharFormat( const QTextCharFormat & modifier )
*/
HB_FUNC_STATIC( QTEXTCURSOR_MERGEBLOCKCHARFORMAT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCHARFORMAT(1) )
    {
#endif
      obj->mergeBlockCharFormat( *PQTEXTCHARFORMAT(1) );
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
bool atBlockStart() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATBLOCKSTART )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atBlockStart() );
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
bool atBlockEnd() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATBLOCKEND )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atBlockEnd() );
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
bool atStart() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATSTART )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atStart() );
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
bool atEnd() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ATEND )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK )
{
  if( ISNUMPAR(0) )
  {
    /*
    void insertBlock()
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertBlock();
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
  {
    /*
    void insertBlock( const QTextBlockFormat & format )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertBlock( *PQTEXTBLOCKFORMAT(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2) )
  {
    /*
    void insertBlock( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertBlock( *PQTEXTBLOCKFORMAT(1), *PQTEXTCHARFORMAT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    /*
    QTextList * insertList( const QTextListFormat & format )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QTextList * ptr = obj->insertList( *PQTEXTLISTFORMAT(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTLIST" );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QTextList * insertList( QTextListFormat::Style style )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QTextList * ptr = obj->insertList( (QTextListFormat::Style) hb_parni(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTLIST" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    /*
    QTextList * createList( const QTextListFormat & format )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QTextList * ptr = obj->createList( *PQTEXTLISTFORMAT(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTLIST" );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QTextList * createList( QTextListFormat::Style style )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QTextList * ptr = obj->createList( (QTextListFormat::Style) hb_parni(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTLIST" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTextList * currentList() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTLIST )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextList * ptr = obj->currentList();
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTLIST" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQTEXTTABLEFORMAT(3) )
  {
    /*
    QTextTable * insertTable( int rows, int cols, const QTextTableFormat & format )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QTextTable * ptr = obj->insertTable( PINT(1), PINT(2), *PQTEXTTABLEFORMAT(3) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTTABLE" );
    }
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QTextTable * insertTable( int rows, int cols )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      QTextTable * ptr = obj->insertTable( PINT(1), PINT(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTTABLE" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QTextTable * currentTable() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTTABLE )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextTable * ptr = obj->currentTable();
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTTABLE" );
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
QTextFrame * insertFrame( const QTextFrameFormat & format )
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTFRAME )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTFRAMEFORMAT(1) )
    {
#endif
      QTextFrame * ptr = obj->insertFrame( *PQTEXTFRAMEFORMAT(1) );
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTFRAME" );
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
QTextFrame * currentFrame() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_CURRENTFRAME )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextFrame * ptr = obj->currentFrame();
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTFRAME" );
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
void insertFragment( const QTextDocumentFragment & fragment )
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTFRAGMENT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
    {
#endif
      obj->insertFragment( *PQTEXTDOCUMENTFRAGMENT(1) );
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
void insertHtml( const QString & html )
*/
HB_FUNC_STATIC( QTEXTCURSOR_INSERTHTML )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->insertHtml( PQSTRING(1) );
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

HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE )
{
  if( ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && HB_ISNUM(2) )
  {
    /*
    void insertImage( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertImage( *PQTEXTIMAGEFORMAT(1), (QTextFrameFormat::Position) hb_parni(2) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1) )
  {
    /*
    void insertImage( const QTextImageFormat & format )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertImage( *PQTEXTIMAGEFORMAT(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    void insertImage( const QString & name )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertImage( PQSTRING(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && ( HB_ISCHAR(2)||HB_ISNIL(2)) )
  {
    /*
    void insertImage( const QImage & image, const QString & name = QString() )
    */
    QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->insertImage( *PQIMAGE(1), OPQSTRING(2,QString()) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void beginEditBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_BEGINEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->beginEditBlock();
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
void joinPreviousEditBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_JOINPREVIOUSEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->joinPreviousEditBlock();
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
void endEditBlock()
*/
HB_FUNC_STATIC( QTEXTCURSOR_ENDEDITBLOCK )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->endEditBlock();
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
bool isCopyOf( const QTextCursor & other ) const
*/
HB_FUNC_STATIC( QTEXTCURSOR_ISCOPYOF )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
    {
#endif
      RBOOL( obj->isCopyOf( *PQTEXTCURSOR(1) ) );
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
int blockNumber() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_BLOCKNUMBER )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->blockNumber() );
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
int columnNumber() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_COLUMNNUMBER )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnNumber() );
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
QTextDocument * document() const
*/
HB_FUNC_STATIC( QTEXTCURSOR_DOCUMENT )
{
  QTextCursor * obj = (QTextCursor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextDocument * ptr = obj->document();
      Qt5xHb::createReturnQObjectClass( ptr, "QTEXTDOCUMENT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTCURSOR_NEWFROM )
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

HB_FUNC_STATIC( QTEXTCURSOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTCURSOR_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCURSOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTCURSOR_NEWFROM );
}

HB_FUNC_STATIC( QTEXTCURSOR_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTEXTCURSOR_SETSELFDESTRUCTION )
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
