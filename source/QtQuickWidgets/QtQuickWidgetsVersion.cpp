/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QtQuickWidgetsVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QtQuickWidgetsVersion>
#endif
#endif

HB_FUNC( QTQUICKWIDGETS_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  hb_retc( (const char *) QTQUICKWIDGETS_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTQUICKWIDGETS_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  hb_retni( QTQUICKWIDGETS_VERSION );
#else
  hb_retni( 0 );
#endif
}
