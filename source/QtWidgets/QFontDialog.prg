/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QFontDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD setCurrentFont
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD selectedFont
   METHOD setOption
   METHOD testOption
   METHOD setVisible
   METHOD getFont

   METHOD onCurrentFontChanged
   METHOD onFontSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFontDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QFontDialog>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QFontDialog>
#endif

HB_FUNC_STATIC( QFONTDIALOG_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    /*
    QFontDialog( QWidget * parent = 0 )
    */
    QFontDialog * obj = new QFontDialog( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1,2) && ISQFONT(1) && (ISQWIDGET(2)||HB_ISNIL(2)) )
  {
    /*
    QFontDialog( const QFont & initial, QWidget * parent = 0 )
    */
    QFontDialog * obj = new QFontDialog( *PQFONT(1), OPQWIDGET(2,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFONTDIALOG_DELETE )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QFont currentFont() const
*/
HB_FUNC_STATIC( QFONTDIALOG_CURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->currentFont() );
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
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
void setCurrentFont( const QFont & font )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETCURRENTFONT )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
#endif
      obj->setCurrentFont( *PQFONT(1) );
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
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFONTDIALOG_OPEN )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
QFontDialog::FontDialogOptions options() const
*/
HB_FUNC_STATIC( QFONTDIALOG_OPTIONS )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options() );
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
void setOptions( QFontDialog::FontDialogOptions options )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTIONS )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOptions( (QFontDialog::FontDialogOptions) hb_parni(1) );
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
QFont selectedFont() const
*/
HB_FUNC_STATIC( QFONTDIALOG_SELECTEDFONT )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFont * ptr = new QFont( obj->selectedFont() );
      Qt5xHb::createReturnClass(ptr, "QFONT", true);
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
void setOption( QFontDialog::FontDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETOPTION )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && HB_ISNUM(1) && (HB_ISLOG(2)||HB_ISNIL(2)) )
    {
#endif
      obj->setOption( (QFontDialog::FontDialogOption) hb_parni(1), OPBOOL(2,true) );
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
bool testOption( QFontDialog::FontDialogOption option ) const
*/
HB_FUNC_STATIC( QFONTDIALOG_TESTOPTION )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption( (QFontDialog::FontDialogOption) hb_parni(1) ) );
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
void setVisible( bool visible )
*/
HB_FUNC_STATIC( QFONTDIALOG_SETVISIBLE )
{
  QFontDialog * obj = (QFontDialog *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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

HB_FUNC_STATIC( QFONTDIALOG_GETFONT )
{
  if( ISBETWEEN(1,2) && HB_ISLOG(1) && (ISQWIDGET(2)||HB_ISNIL(2)) )
  {
    /*
    static QFont getFont( bool * ok, QWidget * parent = 0 )
    */
    bool par1;
    QFont * ptr = new QFont( QFontDialog::getFont( &par1, OPQWIDGET(2,0) ) );
    Qt5xHb::createReturnClass(ptr, "QFONT", true);
    hb_storl( par1, 1 );
  }
  else if( ISBETWEEN(2,5) && HB_ISLOG(1) && ISQFONT(2) && (ISQWIDGET(3)||HB_ISNIL(3)) && ( HB_ISCHAR(4)||HB_ISNIL(4)) && ( HB_ISNUM(5)||HB_ISNIL(5)) )
  {
    /*
    static QFont getFont( bool * ok, const QFont & initial, QWidget * parent = 0, const QString & title = QString(), QFontDialog::FontDialogOptions options = 0 )
    */
    bool par1;
    QFont * ptr = new QFont( QFontDialog::getFont( &par1, *PQFONT(2), OPQWIDGET(3,0), OPQSTRING(4,QString()), HB_ISNIL(5)? (QFontDialog::FontDialogOptions) 0 : (QFontDialog::FontDialogOptions) hb_parni(5) ) );
    Qt5xHb::createReturnClass(ptr, "QFONT", true);
    hb_storl( par1, 1 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QFontDialogSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QFONTDIALOG_ONCURRENTFONTCHANGED )
{
  QFontDialogSlots_connect_signal("currentFontChanged(QFont)", "currentFontChanged(QFont)");
}

HB_FUNC_STATIC( QFONTDIALOG_ONFONTSELECTED )
{
  QFontDialogSlots_connect_signal("fontSelected(QFont)", "fontSelected(QFont)");
}

#pragma ENDDUMP
