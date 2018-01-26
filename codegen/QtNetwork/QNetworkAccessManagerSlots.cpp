%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQNetworkAccessManager::authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "authenticationRequired(QNetworkReply,QAuthenticator*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QNetworkReply *) reply );
    PHB_ITEM pauthenticator = hb_itemPutPtr( NULL, (QAuthenticator *) authenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, preply, pauthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( pauthenticator );
  }
}

void SlotsQNetworkAccessManager::finished( QNetworkReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QNetworkReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QNetworkReply *) reply );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}

void SlotsQNetworkAccessManager::networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paccessible = hb_itemPutNI( NULL, (int) accessible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paccessible );
    hb_itemRelease( psender );
    hb_itemRelease( paccessible );
  }
}

void SlotsQNetworkAccessManager::proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pproxy = hb_itemPutPtr( NULL, (QNetworkProxy *) &proxy );
    PHB_ITEM pauthenticator = hb_itemPutPtr( NULL, (QAuthenticator *) authenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pproxy, pauthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
    hb_itemRelease( pauthenticator );
  }
}

$signalMethod=|authenticationRequired(QNetworkReply,QAuthenticator*)
$signalMethod=|finished(QNetworkReply*)
$signalMethod=|networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)
$signalMethod=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)

$endSlotsClass
