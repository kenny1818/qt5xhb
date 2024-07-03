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

CLASS QTemporaryFile INHERIT QFile

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
   METHOD createNativeFile

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTemporaryFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QTemporaryFile>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtCore/QTemporaryFile>
#endif

HB_FUNC_STATIC(QTEMPORARYFILE_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QTemporaryFile()
    */
    QTemporaryFile *obj = new QTemporaryFile();
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    QTemporaryFile( const QString & templateName )
    */
    QTemporaryFile *obj = new QTemporaryFile(PQSTRING(1));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    /*
    QTemporaryFile( QObject * parent )
    */
    QTemporaryFile *obj = new QTemporaryFile(PQOBJECT(1));
    Qt5xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2))
  {
    /*
    QTemporaryFile( const QString & templateName, QObject * parent )
    */
    QTemporaryFile *obj = new QTemporaryFile(PQSTRING(1), PQOBJECT(2));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTEMPORARYFILE_DELETE)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

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
bool autoRemove() const
*/
HB_FUNC_STATIC(QTEMPORARYFILE_AUTOREMOVE)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->autoRemove());
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
QString fileTemplate() const
*/
HB_FUNC_STATIC(QTEMPORARYFILE_FILETEMPLATE)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->fileTemplate());
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
bool open()
*/
HB_FUNC_STATIC(QTEMPORARYFILE_OPEN)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->open());
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
void setAutoRemove( bool b )
*/
HB_FUNC_STATIC(QTEMPORARYFILE_SETAUTOREMOVE)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAutoRemove(PBOOL(1));
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
void setFileTemplate( const QString & name )
*/
HB_FUNC_STATIC(QTEMPORARYFILE_SETFILETEMPLATE)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFileTemplate(PQSTRING(1));
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
virtual QString fileName() const
*/
HB_FUNC_STATIC(QTEMPORARYFILE_FILENAME)
{
  QTemporaryFile *obj = (QTemporaryFile *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->fileName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTEMPORARYFILE_CREATENATIVEFILE)
{
  if (ISNUMPAR(1) && ISQFILE(1))
  {
    /*
    static QTemporaryFile * createNativeFile( QFile & file )
    */
    QTemporaryFile *ptr = QTemporaryFile::createNativeFile(*PQFILE(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QTEMPORARYFILE");
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    static QTemporaryFile * createNativeFile( const QString & fileName )
    */
    QTemporaryFile *ptr = QTemporaryFile::createNativeFile(PQSTRING(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QTEMPORARYFILE");
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
