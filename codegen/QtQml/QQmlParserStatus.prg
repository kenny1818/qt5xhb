$header

#include "hbclass.ch"

CLASS QQmlParserStatus

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD classBegin
   METHOD componentComplete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void classBegin() = 0
*/
$virtualMethod=|void|classBegin|

/*
virtual void componentComplete() = 0
*/
$virtualMethod=|void|componentComplete|

$extraMethods

#pragma ENDDUMP
