/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBENGINECORE_H
#define QT5XHB_MACROS_QTWEBENGINECORE_H

#define ISQWEBENGINECOOKIESTORE(n)                          Qt5xHb::isObjectDerivedFrom(n,"QWebEngineCookieStore")
#define ISQWEBENGINEHTTPREQUEST(n)                          Qt5xHb::isObjectDerivedFrom(n,"QWebEngineHttpRequest")
#define ISQWEBENGINEURLREQUESTINFO(n)                       Qt5xHb::isObjectDerivedFrom(n,"QWebEngineUrlRequestInfo")
#define ISQWEBENGINEURLREQUESTINTERCEPTOR(n)                Qt5xHb::isObjectDerivedFrom(n,"QWebEngineUrlRequestInterceptor")
#define ISQWEBENGINEURLREQUESTJOB(n)                        Qt5xHb::isObjectDerivedFrom(n,"QWebEngineUrlRequestJob")
#define ISQWEBENGINEURLSCHEMEHANDLER(n)                     Qt5xHb::isObjectDerivedFrom(n,"QWebEngineUrlSchemeHandler")

#define PQWEBENGINECOOKIESTORE(n)                           (QWebEngineCookieStore *) Qt5xHb::itemGetPtr(n)
#define PQWEBENGINEHTTPREQUEST(n)                           (QWebEngineHttpRequest *) Qt5xHb::itemGetPtr(n)
#define PQWEBENGINEURLREQUESTINFO(n)                        (QWebEngineUrlRequestInfo *) Qt5xHb::itemGetPtr(n)
#define PQWEBENGINEURLREQUESTINTERCEPTOR(n)                 (QWebEngineUrlRequestInterceptor *) Qt5xHb::itemGetPtr(n)
#define PQWEBENGINEURLREQUESTJOB(n)                         (QWebEngineUrlRequestJob *) Qt5xHb::itemGetPtr(n)
#define PQWEBENGINEURLSCHEMEHANDLER(n)                      (QWebEngineUrlSchemeHandler *) Qt5xHb::itemGetPtr(n)

#define OPQWEBENGINECOOKIESTORE(n,v)                        ISNIL(n)? v : (QWebEngineCookieStore *) Qt5xHb::itemGetPtr(n)
#define OPQWEBENGINEHTTPREQUEST(n,v)                        ISNIL(n)? v : (QWebEngineHttpRequest *) Qt5xHb::itemGetPtr(n)
#define OPQWEBENGINEURLREQUESTINFO(n,v)                     ISNIL(n)? v : (QWebEngineUrlRequestInfo *) Qt5xHb::itemGetPtr(n)
#define OPQWEBENGINEURLREQUESTINTERCEPTOR(n,v)              ISNIL(n)? v : (QWebEngineUrlRequestInterceptor *) Qt5xHb::itemGetPtr(n)
#define OPQWEBENGINEURLREQUESTJOB(n,v)                      ISNIL(n)? v : (QWebEngineUrlRequestJob *) Qt5xHb::itemGetPtr(n)
#define OPQWEBENGINEURLSCHEMEHANDLER(n,v)                   ISNIL(n)? v : (QWebEngineUrlSchemeHandler *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWEBENGINECORE_H */
