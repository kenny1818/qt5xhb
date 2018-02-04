/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemModelBarDataProxySlots.h"

static SlotsQItemModelBarDataProxy * s = NULL;

SlotsQItemModelBarDataProxy::SlotsQItemModelBarDataProxy(QObject *parent) : QObject(parent)
{
}

SlotsQItemModelBarDataProxy::~SlotsQItemModelBarDataProxy()
{
}
void SlotsQItemModelBarDataProxy::autoColumnCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "autoColumnCategoriesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penable );
    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}
void SlotsQItemModelBarDataProxy::autoRowCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "autoRowCategoriesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penable );
    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}
void SlotsQItemModelBarDataProxy::columnCategoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnCategoriesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQItemModelBarDataProxy::columnRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void SlotsQItemModelBarDataProxy::columnRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void SlotsQItemModelBarDataProxy::columnRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}
void SlotsQItemModelBarDataProxy::itemModelChanged( const QAbstractItemModel * itemModel )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemModelChanged(QAbstractItemModel)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pitemModel = hb_itemPutPtr( NULL, (QAbstractItemModel *) itemModel );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitemModel );
    hb_itemRelease( psender );
    hb_itemRelease( pitemModel );
  }
}
void SlotsQItemModelBarDataProxy::multiMatchBehaviorChanged( QItemModelBarDataProxy::MultiMatchBehavior behavior )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbehavior = hb_itemPutNI( NULL, (int) behavior );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbehavior );
    hb_itemRelease( psender );
    hb_itemRelease( pbehavior );
  }
}
void SlotsQItemModelBarDataProxy::rotationRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void SlotsQItemModelBarDataProxy::rotationRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void SlotsQItemModelBarDataProxy::rotationRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}
void SlotsQItemModelBarDataProxy::rowCategoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowCategoriesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void SlotsQItemModelBarDataProxy::rowRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void SlotsQItemModelBarDataProxy::rowRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void SlotsQItemModelBarDataProxy::rowRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}
void SlotsQItemModelBarDataProxy::useModelCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "useModelCategoriesChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, penable );
    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}
void SlotsQItemModelBarDataProxy::valueRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueRoleChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prole );
    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}
void SlotsQItemModelBarDataProxy::valueRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueRolePatternChanged(QRegExp)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppattern = hb_itemPutPtr( NULL, (QRegExp *) &pattern );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppattern );
    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}
void SlotsQItemModelBarDataProxy::valueRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueRoleReplaceChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preplace );
    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONAUTOCOLUMNCATEGORIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "autoColumnCategoriesChanged(bool)", "autoColumnCategoriesChanged(bool)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONAUTOROWCATEGORIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "autoRowCategoriesChanged(bool)", "autoRowCategoriesChanged(bool)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONCOLUMNCATEGORIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "columnCategoriesChanged()", "columnCategoriesChanged()" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONCOLUMNROLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "columnRoleChanged(QString)", "columnRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONCOLUMNROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "columnRolePatternChanged(QRegExp)", "columnRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONCOLUMNROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "columnRoleReplaceChanged(QString)", "columnRoleReplaceChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONITEMMODELCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "itemModelChanged(QAbstractItemModel*)", "itemModelChanged(QAbstractItemModel*)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONMULTIMATCHBEHAVIORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)", "multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROTATIONROLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationRoleChanged(QString)", "rotationRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROTATIONROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationRolePatternChanged(QRegExp)", "rotationRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROTATIONROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationRoleReplaceChanged(QString)", "rotationRoleReplaceChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROWCATEGORIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rowCategoriesChanged()", "rowCategoriesChanged()" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROWROLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rowRoleChanged(QString)", "rowRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROWROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rowRolePatternChanged(QRegExp)", "rowRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONROWROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rowRoleReplaceChanged(QString)", "rowRoleReplaceChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONUSEMODELCATEGORIESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "useModelCategoriesChanged(bool)", "useModelCategoriesChanged(bool)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONVALUEROLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueRoleChanged(QString)", "valueRoleChanged(QString)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONVALUEROLEPATTERNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueRolePatternChanged(QRegExp)", "valueRolePatternChanged(QRegExp)" ) );
}

HB_FUNC( QITEMMODELBARDATAPROXY_ONVALUEROLEREPLACECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemModelBarDataProxy( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueRoleReplaceChanged(QString)", "valueRoleReplaceChanged(QString)" ) );
}

