$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QSIZE
REQUEST QTABLEWIDGET
#endif

CLASS QTableWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD background
   METHOD checkState
   METHOD clone
   METHOD column
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD isSelected
   METHOD read
   METHOD row
   METHOD setBackground
   METHOD setCheckState
   METHOD setData
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD statusTip
   METHOD tableWidget
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD type
   METHOD whatsThis
   METHOD write

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

$prototype=QTableWidgetItem ( int type = Type )
$internalConstructor=|new1|int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QString & text, int type = Type )
$internalConstructor=|new2|const QString &,int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
$internalConstructor=|new3|const QIcon &,const QString &,int=QTableWidgetItem::Type

$prototype=QTableWidgetItem ( const QTableWidgetItem & other )
$internalConstructor=|new4|const QTableWidgetItem &

//[1]QTableWidgetItem ( int type = Type )
//[2]QTableWidgetItem ( const QString & text, int type = Type )
//[3]QTableWidgetItem ( const QIcon & icon, const QString & text, int type = Type )
//[4]QTableWidgetItem ( const QTableWidgetItem & other )

HB_FUNC_STATIC( QTABLEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTableWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTableWidgetItem_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISOPTNUM(3) )
  {
    QTableWidgetItem_new3();
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidgetItem_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=Qt::CheckState checkState () const
$method=|Qt::CheckState|checkState|

$prototype=virtual QTableWidgetItem * clone () const
$method=|QTableWidgetItem *|clone|

$prototype=int column () const
$method=|int|column|

$prototype=virtual QVariant data ( int role ) const
$method=|QVariant|data|int

$prototype=Qt::ItemFlags flags () const
$method=|Qt::ItemFlags|flags|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QBrush foreground () const
$method=|QBrush|foreground|

$prototype=QIcon icon () const
$method=|QIcon|icon|

$prototype=bool isSelected () const
$method=|bool|isSelected|

$prototype=virtual void read ( QDataStream & in )
$method=|void|read|QDataStream &

$prototype=int row () const
$method=|int|row|

$prototype=void setBackground ( const QBrush & brush )
$method=|void|setBackground|const QBrush &

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototype=virtual void setData ( int role, const QVariant & value )
$method=|void|setData|int,const QVariant &

$prototype=void setFlags ( Qt::ItemFlags flags )
$method=|void|setFlags|Qt::ItemFlags

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setForeground ( const QBrush & brush )
$method=|void|setForeground|const QBrush &

$prototype=void setIcon ( const QIcon & icon )
$method=|void|setIcon|const QIcon &

$prototype=void setSelected ( bool select )
$method=|void|setSelected|bool

$prototype=void setSizeHint ( const QSize & size )
$method=|void|setSizeHint|const QSize &

$prototype=void setStatusTip ( const QString & statusTip )
$method=|void|setStatusTip|const QString &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextAlignment ( int alignment )
$method=|void|setTextAlignment|int

$prototype=void setToolTip ( const QString & toolTip )
$method=|void|setToolTip|const QString &

$prototype=void setWhatsThis ( const QString & whatsThis )
$method=|void|setWhatsThis|const QString &

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=QString statusTip () const
$method=|QString|statusTip|

$prototype=QTableWidget * tableWidget () const
$method=|QTableWidget *|tableWidget|

$prototype=QString text () const
$method=|QString|text|

$prototype=int textAlignment () const
$method=|int|textAlignment|

$prototype=QString toolTip () const
$method=|QString|toolTip|

$prototype=int type () const
$method=|int|type|

$prototype=QString whatsThis () const
$method=|QString|whatsThis|

$prototype=virtual void write ( QDataStream & out ) const
$method=|void|write|QDataStream &

$extraMethods

#pragma ENDDUMP
