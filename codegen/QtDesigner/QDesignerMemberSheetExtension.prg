%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDesignerMemberSheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD declaredInClass
   METHOD indexOf
   METHOD inheritedFromWidget
   METHOD isSignal
   METHOD isSlot
   METHOD isVisible
   METHOD memberGroup
   METHOD memberName
   METHOD parameterNames
   METHOD parameterTypes
   METHOD setMemberGroup
   METHOD setVisible
   METHOD signature

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

$prototype=virtual int count () const = 0
$virtualMethod=|int|count|

$prototype=virtual QString declaredInClass ( int index ) const = 0
$virtualMethod=|QString|declaredInClass|int

$prototype=virtual int indexOf ( const QString & name ) const = 0
$virtualMethod=|int|indexOf|const QString &

$prototype=virtual bool inheritedFromWidget ( int index ) const = 0
$virtualMethod=|bool|inheritedFromWidget|int

$prototype=virtual bool isSignal ( int index ) const = 0
$virtualMethod=|bool|isSignal|int

$prototype=virtual bool isSlot ( int index ) const = 0
$virtualMethod=|bool|isSlot|int

$prototype=virtual bool isVisible ( int index ) const = 0
$virtualMethod=|bool|isVisible|int

$prototype=virtual QString memberGroup ( int index ) const = 0
$virtualMethod=|QString|memberGroup|int

$prototype=virtual QString memberName ( int index ) const = 0
$virtualMethod=|QString|memberName|int

$prototype=virtual QList<QByteArray> parameterNames ( int index ) const = 0
$virtualMirtualMethod=|QList<QByteArray>|parameterNames|int

$prototype=virtual QList<QByteArray> parameterTypes ( int index ) const = 0
$virtualMirtualMethod=|QList<QByteArray>|parameterTypes|int

$prototype=virtual void setMemberGroup ( int index, const QString & group ) = 0
$virtualMethod=|void|setMemberGroup|int,const QString &

$prototype=virtual void setVisible ( int index, bool visible ) = 0
$virtualMethod=|void|setVisible|int,bool

$prototype=virtual QString signature ( int index ) const = 0
$virtualMethod=|QString|signature|int

$extraMethods

#pragma ENDDUMP
