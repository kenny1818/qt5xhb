/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCoreApplication INHERIT QObject

   METHOD new
   METHOD delete
   METHOD notify
   METHOD quit
   METHOD addLibraryPath
   METHOD applicationDirPath
   METHOD applicationFilePath
   METHOD applicationName
   METHOD applicationPid
   METHOD applicationVersion
   METHOD arguments
   METHOD closingDown
   METHOD exec
   METHOD exit
   METHOD flush
   METHOD hasPendingEvents
   METHOD installTranslator
   METHOD instance
   METHOD libraryPaths
   METHOD organizationDomain
   METHOD organizationName
   METHOD postEvent
   METHOD processEvents
   METHOD removeLibraryPath
   METHOD removePostedEvents
   METHOD removeTranslator
   METHOD sendEvent
   METHOD sendPostedEvents
   METHOD setApplicationName
   METHOD setApplicationVersion
   METHOD setAttribute
   METHOD setLibraryPaths
   METHOD setOrganizationDomain
   METHOD setOrganizationName
   METHOD startingUp
   METHOD testAttribute
   METHOD translate

   METHOD onAboutToQuit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCoreApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QCoreApplication>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtCore/QCoreApplication>
#endif

#include <QtCore/QStringList>

/*
QCoreApplication ( int & argc, char ** argv )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QCoreApplication * o = new QCoreApplication( argc, argv );
  Qt5xHb::returnNewObject( o, false );
}

HB_FUNC_STATIC( QCOREAPPLICATION_DELETE )
{
  QCoreApplication * obj = (QCoreApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
virtual bool notify ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_NOTIFY )
{
  QCoreApplication * obj = (QCoreApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
    {
#endif
      RBOOL( obj->notify( PQOBJECT(1), PQEVENT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void quit ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_QUIT )
{
  QCoreApplication * obj = (QCoreApplication *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->quit();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void addLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ADDLIBRARYPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QCoreApplication::addLibraryPath( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString applicationDirPath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONDIRPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QCoreApplication::applicationDirPath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString applicationFilePath ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONFILEPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QCoreApplication::applicationFilePath() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString applicationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QCoreApplication::applicationName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static qint64 applicationPid ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONPID )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQINT64( QCoreApplication::applicationPid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString applicationVersion ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_APPLICATIONVERSION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QCoreApplication::applicationVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList arguments ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ARGUMENTS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QCoreApplication::arguments() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool closingDown ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_CLOSINGDOWN )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QCoreApplication::closingDown() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static int exec ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXEC )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RINT( QCoreApplication::exec() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_EXIT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
#endif
    QCoreApplication::exit( OPINT(1,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void flush ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_FLUSH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QCoreApplication::flush();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool hasPendingEvents ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_HASPENDINGEVENTS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QCoreApplication::hasPendingEvents() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void installTranslator ( QTranslator * translationFile )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTALLTRANSLATOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQTRANSLATOR(1) )
  {
#endif
    QCoreApplication::installTranslator( PQTRANSLATOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QCoreApplication * instance ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_INSTANCE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QCoreApplication * ptr = QCoreApplication::instance();
    Qt5xHb::createReturnQObjectClass( ptr, "QCOREAPPLICATION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList libraryPaths ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_LIBRARYPATHS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QCoreApplication::libraryPaths() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString organizationDomain ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONDOMAIN )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QCoreApplication::organizationDomain() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString organizationName ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_ORGANIZATIONNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QCoreApplication::organizationName() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void postEvent ( QObject * receiver, QEvent * event )
*/
void QCoreApplication_postEvent1()
{

  QCoreApplication::postEvent( PQOBJECT(1), PQEVENT(2) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void postEvent ( QObject * receiver, QEvent * event, int priority )
*/
void QCoreApplication_postEvent2()
{

  QCoreApplication::postEvent( PQOBJECT(1), PQEVENT(2), PINT(3) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void postEvent ( QObject * receiver, QEvent * event )
[2]void postEvent ( QObject * receiver, QEvent * event, int priority )
*/

HB_FUNC_STATIC( QCOREAPPLICATION_POSTEVENT )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
  {
    QCoreApplication_postEvent1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISQEVENT(2) && ISNUM(3) )
  {
    QCoreApplication_postEvent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
*/
void QCoreApplication_processEvents1()
{

  QCoreApplication::processEvents( ISNIL(1)? (QEventLoop::ProcessEventsFlags) QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/
void QCoreApplication_processEvents2()
{

  QCoreApplication::processEvents( (QEventLoop::ProcessEventsFlags) hb_parni(1), PINT(2) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void processEvents ( QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents )
[2]void processEvents ( QEventLoop::ProcessEventsFlags flags, int maxtime )
*/

HB_FUNC_STATIC( QCOREAPPLICATION_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QCoreApplication_processEvents1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QCoreApplication_processEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeLibraryPath ( const QString & path )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVELIBRARYPATH )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QCoreApplication::removeLibraryPath( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void removePostedEvents ( QObject * receiver )
*/
void QCoreApplication_removePostedEvents1()
{

  QCoreApplication::removePostedEvents( PQOBJECT(1) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void removePostedEvents ( QObject * receiver, int eventType )
*/
void QCoreApplication_removePostedEvents2()
{

  QCoreApplication::removePostedEvents( PQOBJECT(1), PINT(2) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void removePostedEvents ( QObject * receiver )
[2]void removePostedEvents ( QObject * receiver, int eventType )
*/

HB_FUNC_STATIC( QCOREAPPLICATION_REMOVEPOSTEDEVENTS )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QCoreApplication_removePostedEvents1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QCoreApplication_removePostedEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeTranslator ( QTranslator * translationFile )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_REMOVETRANSLATOR )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQTRANSLATOR(1) )
  {
#endif
    QCoreApplication::removeTranslator( PQTRANSLATOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool sendEvent ( QObject * receiver, QEvent * event )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SENDEVENT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
  {
#endif
    RBOOL( QCoreApplication::sendEvent( PQOBJECT(1), PQEVENT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static void sendPostedEvents ( QObject * receiver, int event_type )
*/
void QCoreApplication_sendPostedEvents1()
{

  QCoreApplication::sendPostedEvents( PQOBJECT(1), PINT(2) );

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void sendPostedEvents ()
*/
void QCoreApplication_sendPostedEvents2()
{

  QCoreApplication::sendPostedEvents();

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void sendPostedEvents ( QObject * receiver, int event_type )
[2]void sendPostedEvents ()
*/

HB_FUNC_STATIC( QCOREAPPLICATION_SENDPOSTEDEVENTS )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QCoreApplication_sendPostedEvents1();
  }
  else if( ISNUMPAR(0) )
  {
    QCoreApplication_sendPostedEvents2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setApplicationName ( const QString & application )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QCoreApplication::setApplicationName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setApplicationVersion ( const QString & version )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETAPPLICATIONVERSION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QCoreApplication::setApplicationVersion( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setAttribute ( Qt::ApplicationAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETATTRIBUTE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
  {
#endif
    QCoreApplication::setAttribute( (Qt::ApplicationAttribute) hb_parni(1), OPBOOL(2,true) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setLibraryPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETLIBRARYPATHS )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
#endif
    QCoreApplication::setLibraryPaths( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setOrganizationDomain ( const QString & orgDomain )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONDOMAIN )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QCoreApplication::setOrganizationDomain( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setOrganizationName ( const QString & orgName )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_SETORGANIZATIONNAME )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QCoreApplication::setOrganizationName( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool startingUp ()
*/
HB_FUNC_STATIC( QCOREAPPLICATION_STARTINGUP )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QCoreApplication::startingUp() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool testAttribute ( Qt::ApplicationAttribute attribute )
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TESTATTRIBUTE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISNUM(1) )
  {
#endif
    RBOOL( QCoreApplication::testAttribute( (Qt::ApplicationAttribute) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString translate(const char * context, const char * sourceText, const char * disambiguation = 0, int n = -1)
*/
HB_FUNC_STATIC( QCOREAPPLICATION_TRANSLATE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
#endif
    RQSTRING( QCoreApplication::translate( PCONSTCHAR(1), PCONSTCHAR(2), OPCONSTCHAR(3,0), OPINT(4,-1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QCoreApplicationSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCOREAPPLICATION_ONABOUTTOQUIT )
{
  QCoreApplicationSlots_connect_signal( "aboutToQuit()", "aboutToQuit()" );
}

#pragma ENDDUMP
