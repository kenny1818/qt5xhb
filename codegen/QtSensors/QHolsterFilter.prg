$header

#include "hbclass.ch"

CLASS QHolsterFilter INHERIT QSensorFilter

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual bool filter(QHolsterReading *reading) = 0
*/
$virtualMethod=5,1,0|bool|filter|QHolsterReading *

#pragma ENDDUMP
