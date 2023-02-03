/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTNETWORKAUTH_H
#define QT5XHB_MACROS_QTNETWORKAUTH_H

#define ISQABSTRACTOAUTH(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QAbstractOAuth")
#define ISQABSTRACTOAUTH2(n)                                Qt5xHb::isObjectDerivedFrom(n, "QAbstractOAuth2")
#define ISQABSTRACTOAUTHREPLYHANDLER(n)                     Qt5xHb::isObjectDerivedFrom(n, "QAbstractOAuthReplyHandler")
#define ISQOAUTH1(n)                                        Qt5xHb::isObjectDerivedFrom(n, "QOAuth1")
#define ISQOAUTH1SIGNATURE(n)                               Qt5xHb::isObjectDerivedFrom(n, "QOAuth1Signature")
#define ISQOAUTH2AUTHORIZATIONCODEFLOW(n)                   Qt5xHb::isObjectDerivedFrom(n, "QOAuth2AuthorizationCodeFlow")
#define ISQOAUTHHTTPSERVERREPLYHANDLER(n)                   Qt5xHb::isObjectDerivedFrom(n, "QOAuthHttpServerReplyHandler")
#define ISQOAUTHOOBREPLYHANDLER(n)                          Qt5xHb::isObjectDerivedFrom(n, "QOAuthOobReplyHandler")

#define PQABSTRACTOAUTH(n)                                  static_cast<QAbstractOAuth*>(Qt5xHb::itemGetPtr(n))
#define PQABSTRACTOAUTH2(n)                                 static_cast<QAbstractOAuth2*>(Qt5xHb::itemGetPtr(n))
#define PQABSTRACTOAUTHREPLYHANDLER(n)                      static_cast<QAbstractOAuthReplyHandler*>(Qt5xHb::itemGetPtr(n))
#define PQOAUTH1(n)                                         static_cast<QOAuth1*>(Qt5xHb::itemGetPtr(n))
#define PQOAUTH1SIGNATURE(n)                                static_cast<QOAuth1Signature*>(Qt5xHb::itemGetPtr(n))
#define PQOAUTH2AUTHORIZATIONCODEFLOW(n)                    static_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::itemGetPtr(n))
#define PQOAUTHHTTPSERVERREPLYHANDLER(n)                    static_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::itemGetPtr(n))
#define PQOAUTHOOBREPLYHANDLER(n)                           static_cast<QOAuthOobReplyHandler*>(Qt5xHb::itemGetPtr(n))

#define OPQABSTRACTOAUTH(n, v)                              HB_ISNIL(n) ? v : static_cast<QAbstractOAuth*>(Qt5xHb::itemGetPtr(n))
#define OPQABSTRACTOAUTH2(n, v)                             HB_ISNIL(n) ? v : static_cast<QAbstractOAuth2*>(Qt5xHb::itemGetPtr(n))
#define OPQABSTRACTOAUTHREPLYHANDLER(n, v)                  HB_ISNIL(n) ? v : static_cast<QAbstractOAuthReplyHandler*>(Qt5xHb::itemGetPtr(n))
#define OPQOAUTH1(n, v)                                     HB_ISNIL(n) ? v : static_cast<QOAuth1*>(Qt5xHb::itemGetPtr(n))
#define OPQOAUTH1SIGNATURE(n, v)                            HB_ISNIL(n) ? v : static_cast<QOAuth1Signature*>(Qt5xHb::itemGetPtr(n))
#define OPQOAUTH2AUTHORIZATIONCODEFLOW(n, v)                HB_ISNIL(n) ? v : static_cast<QOAuth2AuthorizationCodeFlow*>(Qt5xHb::itemGetPtr(n))
#define OPQOAUTHHTTPSERVERREPLYHANDLER(n, v)                HB_ISNIL(n) ? v : static_cast<QOAuthHttpServerReplyHandler*>(Qt5xHb::itemGetPtr(n))
#define OPQOAUTHOOBREPLYHANDLER(n, v)                       HB_ISNIL(n) ? v : static_cast<QOAuthOobReplyHandler*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTNETWORKAUTH_H */