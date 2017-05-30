/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
REQUEST QTEXTCHARFORMAT
REQUEST QFONT
REQUEST QTEXTCURSOR
REQUEST QRECT
REQUEST QTEXTDOCUMENT
REQUEST QVARIANT
REQUEST QCOLOR
#endif

CLASS QTextEdit INHERIT QAbstractScrollArea

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acceptRichText
   METHOD alignment
   METHOD anchorAt
   METHOD autoFormatting
   METHOD canPaste
   METHOD createStandardContextMenu
   METHOD currentCharFormat
   METHOD currentFont
   METHOD cursorForPosition
   METHOD cursorRect
   METHOD cursorWidth
   METHOD document
   METHOD documentTitle
   METHOD ensureCursorVisible
   METHOD find
   METHOD fontFamily
   METHOD fontItalic
   METHOD fontPointSize
   METHOD fontUnderline
   METHOD fontWeight
   METHOD isReadOnly
   METHOD isUndoRedoEnabled
   METHOD lineWrapColumnOrWidth
   METHOD lineWrapMode
   METHOD loadResource
   METHOD mergeCurrentCharFormat
   METHOD moveCursor
   METHOD overwriteMode
   METHOD print
   METHOD setAcceptRichText
   METHOD setAutoFormatting
   METHOD setCurrentCharFormat
   METHOD setCursorWidth
   METHOD setDocument
   METHOD setDocumentTitle
   METHOD setLineWrapColumnOrWidth
   METHOD setLineWrapMode
   METHOD setOverwriteMode
   METHOD setReadOnly
   METHOD setTabChangesFocus
   METHOD setTabStopWidth
   METHOD setTextCursor
   METHOD setTextInteractionFlags
   METHOD setUndoRedoEnabled
   METHOD setWordWrapMode
   METHOD tabChangesFocus
   METHOD tabStopWidth
   METHOD textBackgroundColor
   METHOD textColor
   METHOD textCursor
   METHOD textInteractionFlags
   METHOD toHtml
   METHOD toPlainText
   METHOD wordWrapMode
   METHOD append
   METHOD clear
   METHOD copy
   METHOD cut
   METHOD insertHtml
   METHOD insertPlainText
   METHOD paste
   METHOD redo
   METHOD scrollToAnchor
   METHOD selectAll
   METHOD setAlignment
   METHOD setCurrentFont
   METHOD setFontFamily
   METHOD setFontItalic
   METHOD setFontPointSize
   METHOD setFontUnderline
   METHOD setFontWeight
   METHOD setHtml
   METHOD setPlainText
   METHOD setText
   METHOD setTextBackgroundColor
   METHOD setTextColor
   METHOD undo
   METHOD zoomIn
   METHOD zoomOut

   METHOD onCopyAvailable
   METHOD onCurrentCharFormatChanged
   METHOD onCursorPositionChanged
   METHOD onRedoAvailable
   METHOD onSelectionChanged
   METHOD onTextChanged
   METHOD onUndoAvailable

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextEdit>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextEdit>
#endif

#include <QPrinter>

/*
QTextEdit ( QWidget * parent = 0 )
*/
void QTextEdit_new1 ()
{
  QTextEdit * o = new QTextEdit ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextEdit ( const QString & text, QWidget * parent = 0 )
*/
void QTextEdit_new2 ()
{
  QTextEdit * o = new QTextEdit ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QTextEdit ( QWidget * parent = 0 )
//[2]QTextEdit ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QTEXTEDIT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QTextEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QTextEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTEDIT_DELETE )
{
  QTextEdit * obj = (QTextEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool acceptRichText () const
*/
HB_FUNC_STATIC( QTEXTEDIT_ACCEPTRICHTEXT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->acceptRichText () );
  }
}

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QTEXTEDIT_ALIGNMENT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->alignment () );
  }
}

/*
QString anchorAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QTEXTEDIT_ANCHORAT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      hb_retc( RQSTRING( obj->anchorAt ( *par1 ) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
AutoFormatting autoFormatting () const
*/
HB_FUNC_STATIC( QTEXTEDIT_AUTOFORMATTING )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->autoFormatting () );
  }
}

/*
bool canPaste () const
*/
HB_FUNC_STATIC( QTEXTEDIT_CANPASTE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->canPaste () );
  }
}

/*
QMenu * createStandardContextMenu ()
*/
void QTextEdit_createStandardContextMenu1 ()
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->createStandardContextMenu ();
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * createStandardContextMenu ( const QPoint & position )
*/
void QTextEdit_createStandardContextMenu2 ()
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
    QMenu * ptr = obj->createStandardContextMenu ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

//[1]QMenu * createStandardContextMenu ()
//[2]QMenu * createStandardContextMenu ( const QPoint & position )

HB_FUNC_STATIC( QTEXTEDIT_CREATESTANDARDCONTEXTMENU )
{
  if( ISNUMPAR(0) )
  {
    QTextEdit_createStandardContextMenu1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTextEdit_createStandardContextMenu2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QTextCharFormat currentCharFormat () const
*/
HB_FUNC_STATIC( QTEXTEDIT_CURRENTCHARFORMAT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->currentCharFormat () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}

/*
QFont currentFont () const
*/
HB_FUNC_STATIC( QTEXTEDIT_CURRENTFONT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->currentFont () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QTextCursor cursorForPosition ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QTEXTEDIT_CURSORFORPOSITION )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
      QTextCursor * ptr = new QTextCursor( obj->cursorForPosition ( *par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect cursorRect ( const QTextCursor & cursor ) const
*/
void QTextEdit_cursorRect1 ()
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    QRect * ptr = new QRect( obj->cursorRect ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect cursorRect () const
*/
void QTextEdit_cursorRect2 ()
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->cursorRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]QRect cursorRect ( const QTextCursor & cursor ) const
//[2]QRect cursorRect () const

HB_FUNC_STATIC( QTEXTEDIT_CURSORRECT )
{
  if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextEdit_cursorRect1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextEdit_cursorRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int cursorWidth () const
*/
HB_FUNC_STATIC( QTEXTEDIT_CURSORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->cursorWidth () );
  }
}

/*
QTextDocument * document () const
*/
HB_FUNC_STATIC( QTEXTEDIT_DOCUMENT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextDocument * ptr = obj->document ();
    _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENT" );
  }
}

/*
QString documentTitle () const
*/
HB_FUNC_STATIC( QTEXTEDIT_DOCUMENTTITLE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->documentTitle () ) );
  }
}

/*
void ensureCursorVisible ()
*/
HB_FUNC_STATIC( QTEXTEDIT_ENSURECURSORVISIBLE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ensureCursorVisible ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool find ( const QString & exp, QTextDocument::FindFlags options = 0 )
*/
HB_FUNC_STATIC( QTEXTEDIT_FIND )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
      hb_retl( obj->find ( PQSTRING(1),  (QTextDocument::FindFlags) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString fontFamily () const
*/
HB_FUNC_STATIC( QTEXTEDIT_FONTFAMILY )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->fontFamily () ) );
  }
}

/*
bool fontItalic () const
*/
HB_FUNC_STATIC( QTEXTEDIT_FONTITALIC )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->fontItalic () );
  }
}

/*
qreal fontPointSize () const
*/
HB_FUNC_STATIC( QTEXTEDIT_FONTPOINTSIZE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->fontPointSize () );
  }
}

/*
bool fontUnderline () const
*/
HB_FUNC_STATIC( QTEXTEDIT_FONTUNDERLINE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->fontUnderline () );
  }
}

/*
int fontWeight () const
*/
HB_FUNC_STATIC( QTEXTEDIT_FONTWEIGHT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->fontWeight () );
  }
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QTEXTEDIT_ISREADONLY )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isReadOnly () );
  }
}

/*
bool isUndoRedoEnabled () const
*/
HB_FUNC_STATIC( QTEXTEDIT_ISUNDOREDOENABLED )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isUndoRedoEnabled () );
  }
}

/*
int lineWrapColumnOrWidth () const
*/
HB_FUNC_STATIC( QTEXTEDIT_LINEWRAPCOLUMNORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->lineWrapColumnOrWidth () );
  }
}

/*
LineWrapMode lineWrapMode () const
*/
HB_FUNC_STATIC( QTEXTEDIT_LINEWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->lineWrapMode () );
  }
}

/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTEDIT_LOADRESOURCE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQURL(2) )
    {
      QUrl * par2 = (QUrl *) _qt5xhb_itemGetPtr(2);
      QVariant * ptr = new QVariant( obj->loadResource ( PINT(1), *par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void mergeCurrentCharFormat ( const QTextCharFormat & modifier )
*/
HB_FUNC_STATIC( QTEXTEDIT_MERGECURRENTCHARFORMAT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTEXTCHARFORMAT(1) )
    {
      QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
      obj->mergeCurrentCharFormat ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveCursor ( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor )
*/
HB_FUNC_STATIC( QTEXTEDIT_MOVECURSOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par1 = hb_parni(1);
      int par2 = ISNIL(2)? (int) QTextCursor::MoveAnchor : hb_parni(2);
      obj->moveCursor (  (QTextCursor::MoveOperation) par1,  (QTextCursor::MoveMode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool overwriteMode () const
*/
HB_FUNC_STATIC( QTEXTEDIT_OVERWRITEMODE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->overwriteMode () );
  }
}

/*
void print ( QPrinter * printer ) const
*/
HB_FUNC_STATIC( QTEXTEDIT_PRINT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPRINTER(1) )
    {
      QPrinter * par1 = (QPrinter *) _qt5xhb_itemGetPtr(1);
      obj->print ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAcceptRichText ( bool accept )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETACCEPTRICHTEXT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAcceptRichText ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoFormatting ( AutoFormatting features )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETAUTOFORMATTING )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setAutoFormatting (  (QTextEdit::AutoFormatting) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentCharFormat ( const QTextCharFormat & format )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETCURRENTCHARFORMAT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTEXTCHARFORMAT(1) )
    {
      QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
      obj->setCurrentCharFormat ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCursorWidth ( int width )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETCURSORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCursorWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocument ( QTextDocument * document )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETDOCUMENT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTEXTDOCUMENT(1) )
    {
      QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
      obj->setDocument ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocumentTitle ( const QString & title )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETDOCUMENTTITLE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setDocumentTitle ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineWrapColumnOrWidth ( int w )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETLINEWRAPCOLUMNORWIDTH )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLineWrapColumnOrWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineWrapMode ( LineWrapMode mode )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETLINEWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setLineWrapMode (  (QTextEdit::LineWrapMode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOverwriteMode ( bool overwrite )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETOVERWRITEMODE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setOverwriteMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setReadOnly ( bool ro )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETREADONLY )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setReadOnly ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabChangesFocus ( bool b )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTABCHANGESFOCUS )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setTabChangesFocus ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabStopWidth ( int width )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTABSTOPWIDTH )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setTabStopWidth ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextCursor ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTEXTCURSOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTEXTCURSOR(1) )
    {
      QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
      obj->setTextCursor ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextInteractionFlags ( Qt::TextInteractionFlags flags )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTEXTINTERACTIONFLAGS )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setTextInteractionFlags (  (Qt::TextInteractionFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUndoRedoEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETUNDOREDOENABLED )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setUndoRedoEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWordWrapMode ( QTextOption::WrapMode policy )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETWORDWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setWordWrapMode (  (QTextOption::WrapMode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tabChangesFocus () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TABCHANGESFOCUS )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->tabChangesFocus () );
  }
}

/*
int tabStopWidth () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TABSTOPWIDTH )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->tabStopWidth () );
  }
}

/*
QColor textBackgroundColor () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TEXTBACKGROUNDCOLOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor * ptr = new QColor( obj->textBackgroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
QColor textColor () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TEXTCOLOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor * ptr = new QColor( obj->textColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}

/*
QTextCursor textCursor () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TEXTCURSOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->textCursor () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
Qt::TextInteractionFlags textInteractionFlags () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TEXTINTERACTIONFLAGS )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->textInteractionFlags () );
  }
}

/*
QString toHtml () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TOHTML )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->toHtml () ) );
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QTEXTEDIT_TOPLAINTEXT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->toPlainText () ) );
  }
}

/*
QTextOption::WrapMode wordWrapMode () const
*/
HB_FUNC_STATIC( QTEXTEDIT_WORDWRAPMODE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->wordWrapMode () );
  }
}

/*
void append ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTEDIT_APPEND )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->append ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear ()
*/
HB_FUNC_STATIC( QTEXTEDIT_CLEAR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void copy ()
*/
HB_FUNC_STATIC( QTEXTEDIT_COPY )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->copy ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cut ()
*/
HB_FUNC_STATIC( QTEXTEDIT_CUT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cut ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertHtml ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTEDIT_INSERTHTML )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->insertHtml ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTEDIT_INSERTPLAINTEXT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->insertPlainText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paste ()
*/
HB_FUNC_STATIC( QTEXTEDIT_PASTE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->paste ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void redo ()
*/
HB_FUNC_STATIC( QTEXTEDIT_REDO )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->redo ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scrollToAnchor ( const QString & name )
*/
HB_FUNC_STATIC( QTEXTEDIT_SCROLLTOANCHOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->scrollToAnchor ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectAll ()
*/
HB_FUNC_STATIC( QTEXTEDIT_SELECTALL )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->selectAll ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlignment ( Qt::Alignment a )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETALIGNMENT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setAlignment (  (Qt::Alignment) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentFont ( const QFont & f )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETCURRENTFONT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONT(1) )
    {
      QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
      obj->setCurrentFont ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontFamily ( const QString & fontFamily )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETFONTFAMILY )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFontFamily ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontItalic ( bool italic )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETFONTITALIC )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFontItalic ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontPointSize ( qreal s )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETFONTPOINTSIZE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFontPointSize ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontUnderline ( bool underline )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETFONTUNDERLINE )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFontUnderline ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFontWeight ( int weight )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETFONTWEIGHT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFontWeight ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHtml ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETHTML )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setHtml ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPlainText ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETPLAINTEXT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setPlainText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTEXT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextBackgroundColor ( const QColor & c )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTEXTBACKGROUNDCOLOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQCOLOR(1)||ISCHAR(1)) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      obj->setTextBackgroundColor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextColor ( const QColor & c )
*/
HB_FUNC_STATIC( QTEXTEDIT_SETTEXTCOLOR )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQCOLOR(1)||ISCHAR(1)) )
    {
      QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
      obj->setTextColor ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void undo ()
*/
HB_FUNC_STATIC( QTEXTEDIT_UNDO )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->undo ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomIn ( int range = 1 )
*/
HB_FUNC_STATIC( QTEXTEDIT_ZOOMIN )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->zoomIn ( (int) ISNIL(1)? 1 : hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomOut ( int range = 1 )
*/
HB_FUNC_STATIC( QTEXTEDIT_ZOOMOUT )
{
  QTextEdit * obj = (QTextEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->zoomOut ( (int) ISNIL(1)? 1 : hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
