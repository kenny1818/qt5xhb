%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QScrollerProperties::FrameRates
*/
#define QScrollerProperties_Fps60                                    1
#define QScrollerProperties_Fps30                                    2
#define QScrollerProperties_Fps20                                    3
#define QScrollerProperties_Standard                                 0

/*
enum QScrollerProperties::OvershootPolicy
*/
#define QScrollerProperties_OvershootWhenScrollable                  0
#define QScrollerProperties_OvershootAlwaysOff                       1
#define QScrollerProperties_OvershootAlwaysOn                        2

/*
enum QScrollerProperties::ScrollMetric
*/
#define QScrollerProperties_MousePressEventDelay                     0
#define QScrollerProperties_DragStartDistance                        1
#define QScrollerProperties_DragVelocitySmoothingFactor              2
#define QScrollerProperties_AxisLockThreshold                        3
#define QScrollerProperties_ScrollingCurve                           4
#define QScrollerProperties_DecelerationFactor                       5
#define QScrollerProperties_MinimumVelocity                          6
#define QScrollerProperties_MaximumVelocity                          7
#define QScrollerProperties_MaximumClickThroughVelocity              8
#define QScrollerProperties_AcceleratingFlickMaximumTime             9
#define QScrollerProperties_AcceleratingFlickSpeedupFactor           10
#define QScrollerProperties_SnapPositionRatio                        11
#define QScrollerProperties_SnapTime                                 12
#define QScrollerProperties_OvershootDragResistanceFactor            13
#define QScrollerProperties_OvershootDragDistanceFactor              14
#define QScrollerProperties_OvershootScrollDistanceFactor            15
#define QScrollerProperties_OvershootScrollTime                      16
#define QScrollerProperties_HorizontalOvershootPolicy                17
#define QScrollerProperties_VerticalOvershootPolicy                  18
#define QScrollerProperties_FrameRate                                19
#define QScrollerProperties_ScrollMetricCount                        20
