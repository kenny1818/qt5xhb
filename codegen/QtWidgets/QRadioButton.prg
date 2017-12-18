$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QRadioButton INHERIT QAbstractButton

   METHOD new
   METHOD delete
   METHOD sizeHint
   METHOD minimumSizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioButton ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=explicit QRadioButton ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]explicit QRadioButton ( QWidget * parent = 0 )
//[2]explicit QRadioButton ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QRADIOBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QRadioButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QRadioButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=QSize minimumSizeHint() const
$method=|QSize|minimumSizeHint|

#pragma ENDDUMP
