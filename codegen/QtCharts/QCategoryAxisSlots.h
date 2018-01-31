%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtCharts;

$beginSlotsClass
$signal=|void categoriesChanged();
$signal=|void labelsPositionChanged( QCategoryAxis::AxisLabelsPosition position );
$endSlotsClass
