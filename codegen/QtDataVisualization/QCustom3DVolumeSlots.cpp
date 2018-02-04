%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|alphaMultiplierChanged( float mult )
$slot=|colorTableChanged()
$slot=|drawSliceFramesChanged( bool enabled )
$slot=|drawSlicesChanged( bool enabled )
$slot=|preserveOpacityChanged( bool enabled )
$slot=|sliceFrameColorChanged( const QColor & color )
$slot=|sliceFrameGapsChanged( const QVector3D & values )
$slot=|sliceFrameThicknessesChanged( const QVector3D & values )
$slot=|sliceFrameWidthsChanged( const QVector3D & values )
$slot=|sliceIndexXChanged( int value )
$slot=|sliceIndexYChanged( int value )
$slot=|sliceIndexZChanged( int value )
$slot=|textureDataChanged( QVector<uchar> * data )
$slot=|textureDepthChanged( int value )
$slot=|textureFormatChanged( QImage::Format format )
$slot=|textureHeightChanged( int value )
$slot=|textureWidthChanged( int value )
$slot=|useHighDefShaderChanged( bool enabled )
$endSlotsClass

$signalMethod=|alphaMultiplierChanged(float)
$signalMethod=|colorTableChanged()
$signalMethod=|drawSliceFramesChanged(bool)
$signalMethod=|drawSlicesChanged(bool)
$signalMethod=|preserveOpacityChanged(bool)
$signalMethod=|sliceFrameColorChanged(QColor)
$signalMethod=|sliceFrameGapsChanged(QVector3D)
$signalMethod=|sliceFrameThicknessesChanged(QVector3D)
$signalMethod=|sliceFrameWidthsChanged(QVector3D)
$signalMethod=|sliceIndexXChanged(int)
$signalMethod=|sliceIndexYChanged(int)
$signalMethod=|sliceIndexZChanged(int)
$signalMethod=|textureDataChanged(QVector<uchar>*)
$signalMethod=|textureDepthChanged(int)
$signalMethod=|textureFormatChanged(QImage::Format)
$signalMethod=|textureHeightChanged(int)
$signalMethod=|textureWidthChanged(int)
$signalMethod=|useHighDefShaderChanged(bool)