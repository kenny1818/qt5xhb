%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=Orientation orientation() const
$method=5,1,0|QOrientationReading::Orientation|orientation|

$prototype=void setOrientation(Orientation orientation)
$method=5,1,0|void|setOrientation|QOrientationReading::Orientation

#pragma ENDDUMP
