//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QPIXMAP
REQUEST QURL
#endif

CLASS QWebSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD defaultTextEncoding
   METHOD fontFamily
   METHOD fontSize
   METHOD localStoragePath
   METHOD resetAttribute
   METHOD resetFontFamily
   METHOD resetFontSize
   METHOD setAttribute
   METHOD setDefaultTextEncoding
   METHOD setFontFamily
   METHOD setFontSize
   METHOD setLocalStoragePath
   METHOD setUserStyleSheetUrl
   METHOD testAttribute
   METHOD userStyleSheetUrl
   METHOD clearIconDatabase
   METHOD clearMemoryCaches
   METHOD enablePersistentStorage
   METHOD globalSettings
   METHOD iconDatabasePath
   METHOD iconForUrl
   METHOD maximumPagesInCache
   METHOD offlineStorageDefaultQuota
   METHOD offlineStoragePath
   METHOD offlineWebApplicationCachePath
   METHOD offlineWebApplicationCacheQuota
   METHOD setIconDatabasePath
   METHOD setMaximumPagesInCache
   METHOD setObjectCacheCapacities
   METHOD setOfflineStorageDefaultQuota
   METHOD setOfflineStoragePath
   METHOD setOfflineWebApplicationCachePath
   METHOD setOfflineWebApplicationCacheQuota
   METHOD setWebGraphic
   METHOD webGraphic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebKit/QWebSettings>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#include <QtWebKit/QWebSettings>
#endif

#include <QtCore/QUrl>

    /*
    QString defaultTextEncoding() const
    */
HB_FUNC_STATIC(QWEBSETTINGS_DEFAULTTEXTENCODING)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->defaultTextEncoding());
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
QString fontFamily( QWebSettings::FontFamily which ) const
*/
HB_FUNC_STATIC(QWEBSETTINGS_FONTFAMILY)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQSTRING(obj->fontFamily((QWebSettings::FontFamily)hb_parni(1)));
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
int fontSize( QWebSettings::FontSize type ) const
*/
HB_FUNC_STATIC(QWEBSETTINGS_FONTSIZE)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RINT(obj->fontSize((QWebSettings::FontSize)hb_parni(1)));
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
QString localStoragePath() const
*/
HB_FUNC_STATIC(QWEBSETTINGS_LOCALSTORAGEPATH)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->localStoragePath());
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
void resetAttribute( QWebSettings::WebAttribute attribute )
*/
HB_FUNC_STATIC(QWEBSETTINGS_RESETATTRIBUTE)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->resetAttribute((QWebSettings::WebAttribute)hb_parni(1));
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
void resetFontFamily( QWebSettings::FontFamily which )
*/
HB_FUNC_STATIC(QWEBSETTINGS_RESETFONTFAMILY)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->resetFontFamily((QWebSettings::FontFamily)hb_parni(1));
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
void resetFontSize( QWebSettings::FontSize type )
*/
HB_FUNC_STATIC(QWEBSETTINGS_RESETFONTSIZE)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->resetFontSize((QWebSettings::FontSize)hb_parni(1));
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
void setAttribute( QWebSettings::WebAttribute attribute, bool on )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETATTRIBUTE)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      obj->setAttribute((QWebSettings::WebAttribute)hb_parni(1), PBOOL(2));
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
void setDefaultTextEncoding( const QString & encoding )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETDEFAULTTEXTENCODING)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setDefaultTextEncoding(PQSTRING(1));
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
void setFontFamily( QWebSettings::FontFamily which, const QString & family )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETFONTFAMILY)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setFontFamily((QWebSettings::FontFamily)hb_parni(1), PQSTRING(2));
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
void setFontSize( QWebSettings::FontSize type, int size )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETFONTSIZE)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setFontSize((QWebSettings::FontSize)hb_parni(1), PINT(2));
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
void setLocalStoragePath( const QString & path )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETLOCALSTORAGEPATH)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setLocalStoragePath(PQSTRING(1));
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
void setUserStyleSheetUrl( const QUrl & location )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETUSERSTYLESHEETURL)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setUserStyleSheetUrl(*PQURL(1));
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
bool testAttribute( QWebSettings::WebAttribute attribute ) const
*/
HB_FUNC_STATIC(QWEBSETTINGS_TESTATTRIBUTE)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->testAttribute((QWebSettings::WebAttribute)hb_parni(1)));
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
QUrl userStyleSheetUrl() const
*/
HB_FUNC_STATIC(QWEBSETTINGS_USERSTYLESHEETURL)
{
  QWebSettings *obj = (QWebSettings *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->userStyleSheetUrl());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
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
static void clearIconDatabase()
*/
HB_FUNC_STATIC(QWEBSETTINGS_CLEARICONDATABASE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QWebSettings::clearIconDatabase();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void clearMemoryCaches()
*/
HB_FUNC_STATIC(QWEBSETTINGS_CLEARMEMORYCACHES)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QWebSettings::clearMemoryCaches();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void enablePersistentStorage( const QString & path = QString() )
*/
HB_FUNC_STATIC(QWEBSETTINGS_ENABLEPERSISTENTSTORAGE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (HB_ISCHAR(1) || HB_ISNIL(1)))
  {
#endif
    QWebSettings::enablePersistentStorage(OPQSTRING(1, QString()));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QWebSettings * globalSettings()
*/
HB_FUNC_STATIC(QWEBSETTINGS_GLOBALSETTINGS)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QWebSettings *ptr = QWebSettings::globalSettings();
    Qt5xHb::createReturnClass(ptr, "QWEBSETTINGS", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString iconDatabasePath()
*/
HB_FUNC_STATIC(QWEBSETTINGS_ICONDATABASEPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QWebSettings::iconDatabasePath());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QIcon iconForUrl( const QUrl & url )
*/
HB_FUNC_STATIC(QWEBSETTINGS_ICONFORURL)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQURL(1))
  {
#endif
    QIcon *ptr = new QIcon(QWebSettings::iconForUrl(*PQURL(1)));
    Qt5xHb::createReturnClass(ptr, "QICON", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static int maximumPagesInCache()
*/
HB_FUNC_STATIC(QWEBSETTINGS_MAXIMUMPAGESINCACHE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QWebSettings::maximumPagesInCache());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static qint64 offlineStorageDefaultQuota()
*/
HB_FUNC_STATIC(QWEBSETTINGS_OFFLINESTORAGEDEFAULTQUOTA)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQINT64(QWebSettings::offlineStorageDefaultQuota());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString offlineStoragePath()
*/
HB_FUNC_STATIC(QWEBSETTINGS_OFFLINESTORAGEPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QWebSettings::offlineStoragePath());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString offlineWebApplicationCachePath()
*/
HB_FUNC_STATIC(QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QWebSettings::offlineWebApplicationCachePath());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static qint64 offlineWebApplicationCacheQuota()
*/
HB_FUNC_STATIC(QWEBSETTINGS_OFFLINEWEBAPPLICATIONCACHEQUOTA)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQINT64(QWebSettings::offlineWebApplicationCacheQuota());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setIconDatabasePath( const QString & path )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETICONDATABASEPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QWebSettings::setIconDatabasePath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setMaximumPagesInCache( int pages )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETMAXIMUMPAGESINCACHE)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    QWebSettings::setMaximumPagesInCache(PINT(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setObjectCacheCapacities( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETOBJECTCACHECAPACITIES)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
#endif
    QWebSettings::setObjectCacheCapacities(PINT(1), PINT(2), PINT(3));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setOfflineStorageDefaultQuota( qint64 maximumSize )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETOFFLINESTORAGEDEFAULTQUOTA)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    QWebSettings::setOfflineStorageDefaultQuota(PQINT64(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setOfflineStoragePath( const QString & path )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETOFFLINESTORAGEPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QWebSettings::setOfflineStoragePath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setOfflineWebApplicationCachePath( const QString & path )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETOFFLINEWEBAPPLICATIONCACHEPATH)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QWebSettings::setOfflineWebApplicationCachePath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setOfflineWebApplicationCacheQuota( qint64 maximumSize )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETOFFLINEWEBAPPLICATIONCACHEQUOTA)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    QWebSettings::setOfflineWebApplicationCacheQuota(PQINT64(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setWebGraphic( QWebSettings::WebGraphic type, const QPixmap & graphic )
*/
HB_FUNC_STATIC(QWEBSETTINGS_SETWEBGRAPHIC)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQPIXMAP(2))
  {
#endif
    QWebSettings::setWebGraphic((QWebSettings::WebGraphic)hb_parni(1), *PQPIXMAP(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QPixmap webGraphic( QWebSettings::WebGraphic type )
*/
HB_FUNC_STATIC(QWEBSETTINGS_WEBGRAPHIC)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    QPixmap *ptr = new QPixmap(QWebSettings::webGraphic((QWebSettings::WebGraphic)hb_parni(1)));
    Qt5xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWEBSETTINGS_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QWEBSETTINGS_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QWEBSETTINGS_NEWFROM);
}

HB_FUNC_STATIC(QWEBSETTINGS_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QWEBSETTINGS_NEWFROM);
}

HB_FUNC_STATIC(QWEBSETTINGS_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QWEBSETTINGS_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
