$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QQmlApplicationEngine INHERIT QQmlEngine

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD rootObjects
   METHOD load1
   METHOD load2
   METHOD load
   METHOD loadData

   METHOD onObjectCreated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QQmlApplicationEngine(QObject *parent=0)
*/
$constructor=5,1,0|new1|QObject *=0

/*
QQmlApplicationEngine(const QUrl &url, QObject *parent=0)
*/
$constructor=5,1,0|new2|const QUrl &,QObject *=0

/*
QQmlApplicationEngine(const QString &filePath, QObject *parent=0)
*/
$constructor=5,1,0|new3|const QString &,QObject *=0

//[1]QQmlApplicationEngine(QObject *parent=0)
//[2]QQmlApplicationEngine(const QUrl &url, QObject *parent=0)
//[3]QQmlApplicationEngine(const QString &filePath, QObject *parent=0)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QQMLAPPLICATIONENGINE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QQMLAPPLICATIONENGINE_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QQMLAPPLICATIONENGINE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,1,0

/*
QList<QObject*> rootObjects()
*/
$method=5,1,0|QList<QObject *>|rootObjects|

/*
void load(const QUrl &url)
*/
$method=5,1,0|void|load,load1|const QUrl &

/*
void load(const QString &filePath)
*/
$method=5,1,0|void|load,load2|const QString &

//[1]void load(const QUrl &url)
//[2]void load(const QString &filePath)

HB_FUNC_STATIC( QQMLAPPLICATIONENGINE_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QQMLAPPLICATIONENGINE_LOAD1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QQMLAPPLICATIONENGINE_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void loadData(const QByteArray &data, const QUrl &url = QUrl())
*/
$method=5,1,0|void|loadData|const QByteArray &,const QUrl &=QUrl()

#pragma ENDDUMP
