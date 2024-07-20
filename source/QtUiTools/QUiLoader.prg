//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QDIR
REQUEST QLAYOUT
REQUEST QWIDGET
#endif

CLASS QUiLoader INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtUiTools/QUiLoader>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtUiTools/QUiLoader>
#endif

#include <QtCore/QStringList>
#include <QtCore/QDir>
#include <QtWidgets/QAction>
#include <QtWidgets/QActionGroup>
#include <QtWidgets/QLayout>

    /*
    QUiLoader( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QUILOADER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QUiLoader *obj = new QUiLoader(OPQOBJECT(1, 0));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QUILOADER_DELETE)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

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
void addPluginPath( const QString &path )
*/
HB_FUNC_STATIC(QUILOADER_ADDPLUGINPATH)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->addPluginPath(PQSTRING(1));
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
QStringList availableLayouts() const
*/
HB_FUNC_STATIC(QUILOADER_AVAILABLELAYOUTS)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->availableLayouts());
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
QStringList availableWidgets() const
*/
HB_FUNC_STATIC(QUILOADER_AVAILABLEWIDGETS)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->availableWidgets());
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
void clearPluginPaths()
*/
HB_FUNC_STATIC(QUILOADER_CLEARPLUGINPATHS)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearPluginPaths();
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
virtual QAction * createAction( QObject * parent = 0, const QString &name = QString() )
*/
HB_FUNC_STATIC(QUILOADER_CREATEACTION)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && (ISQOBJECT(1) || HB_ISNIL(1)) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      QAction *ptr = obj->createAction(OPQOBJECT(1, 0), OPQSTRING(2, QString()));
      Qt5xHb::createReturnQObjectClass(ptr, "QACTION");
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
virtual QActionGroup * createActionGroup( QObject * parent = 0, const QString &name = QString() )
*/
HB_FUNC_STATIC(QUILOADER_CREATEACTIONGROUP)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && (ISQOBJECT(1) || HB_ISNIL(1)) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      QActionGroup *ptr = obj->createActionGroup(OPQOBJECT(1, 0), OPQSTRING(2, QString()));
      Qt5xHb::createReturnQObjectClass(ptr, "QACTIONGROUP");
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
virtual QLayout * createLayout( const QString &className, QObject * parent = 0, const QString &name = QString() )
*/
HB_FUNC_STATIC(QUILOADER_CREATELAYOUT)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)) && (HB_ISCHAR(3) || HB_ISNIL(3)))
    {
#endif
      QLayout *ptr = obj->createLayout(PQSTRING(1), OPQOBJECT(2, 0), OPQSTRING(3, QString()));
      Qt5xHb::createReturnQObjectClass(ptr, "QLAYOUT");
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
virtual QWidget * createWidget( const QString &className, QWidget * parent = 0, const QString &name = QString() )
*/
HB_FUNC_STATIC(QUILOADER_CREATEWIDGET)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)) && (HB_ISCHAR(3) || HB_ISNIL(3)))
    {
#endif
      QWidget *ptr = obj->createWidget(PQSTRING(1), OPQWIDGET(2, 0), OPQSTRING(3, QString()));
      Qt5xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
bool isLanguageChangeEnabled() const
*/
HB_FUNC_STATIC(QUILOADER_ISLANGUAGECHANGEENABLED)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isLanguageChangeEnabled());
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
QWidget * load( QIODevice * device, QWidget * parentWidget = 0 )
*/
HB_FUNC_STATIC(QUILOADER_LOAD)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQIODEVICE(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
    {
#endif
      QWidget *ptr = obj->load(PQIODEVICE(1), OPQWIDGET(2, 0));
      Qt5xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
QStringList pluginPaths() const
*/
HB_FUNC_STATIC(QUILOADER_PLUGINPATHS)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->pluginPaths());
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
void setLanguageChangeEnabled( bool enabled )
*/
HB_FUNC_STATIC(QUILOADER_SETLANGUAGECHANGEENABLED)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setLanguageChangeEnabled(PBOOL(1));
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
void setWorkingDirectory( const QDir &dir )
*/
HB_FUNC_STATIC(QUILOADER_SETWORKINGDIRECTORY)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDIR(1))
    {
#endif
      obj->setWorkingDirectory(*PQDIR(1));
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
QDir workingDirectory() const
*/
HB_FUNC_STATIC(QUILOADER_WORKINGDIRECTORY)
{
  QUiLoader *obj = (QUiLoader *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDir *ptr = new QDir(obj->workingDirectory());
      Qt5xHb::createReturnClass(ptr, "QDIR", true);
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
