/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QABSTRACTITEMVIEW_CH
#define QABSTRACTITEMVIEW_CH

/*
enum QAbstractItemView::SelectionMode
*/
#define QAbstractItemView_NoSelection                                0
#define QAbstractItemView_SingleSelection                            1
#define QAbstractItemView_MultiSelection                             2
#define QAbstractItemView_ExtendedSelection                          3
#define QAbstractItemView_ContiguousSelection                        4

/*
enum QAbstractItemView::SelectionBehavior
*/
#define QAbstractItemView_SelectItems                                0
#define QAbstractItemView_SelectRows                                 1
#define QAbstractItemView_SelectColumns                              2

/*
enum QAbstractItemView::ScrollHint
*/
#define QAbstractItemView_EnsureVisible                              0
#define QAbstractItemView_PositionAtTop                              1
#define QAbstractItemView_PositionAtBottom                           2
#define QAbstractItemView_PositionAtCenter                           3

/*
enum QAbstractItemView::EditTrigger
flags QAbstractItemView::EditTriggers
*/
#define QAbstractItemView_NoEditTriggers                             0
#define QAbstractItemView_CurrentChanged                             1
#define QAbstractItemView_DoubleClicked                              2
#define QAbstractItemView_SelectedClicked                            4
#define QAbstractItemView_EditKeyPressed                             8
#define QAbstractItemView_AnyKeyPressed                              16
#define QAbstractItemView_AllEditTriggers                            31

/*
enum QAbstractItemView::ScrollMode
*/
#define QAbstractItemView_ScrollPerItem                              0
#define QAbstractItemView_ScrollPerPixel                             1

/*
enum QAbstractItemView::DragDropMode
*/
#define QAbstractItemView_NoDragDrop                                 0
#define QAbstractItemView_DragOnly                                   1
#define QAbstractItemView_DropOnly                                   2
#define QAbstractItemView_DragDrop                                   3
#define QAbstractItemView_InternalMove                               4

/*
enum QAbstractItemView::CursorAction (protected)
*/
#define QAbstractItemView_MoveUp                                     0
#define QAbstractItemView_MoveDown                                   1
#define QAbstractItemView_MoveLeft                                   2
#define QAbstractItemView_MoveRight                                  3
#define QAbstractItemView_MoveHome                                   4
#define QAbstractItemView_MoveEnd                                    5
#define QAbstractItemView_MovePageUp                                 6
#define QAbstractItemView_MovePageDown                               7
#define QAbstractItemView_MoveNext                                   8
#define QAbstractItemView_MovePrevious                               9

/*
enum QAbstractItemView::State (protected)
*/
#define QAbstractItemView_NoState                                    0
#define QAbstractItemView_DraggingState                              1
#define QAbstractItemView_DragSelectingState                         2
#define QAbstractItemView_EditingState                               3
#define QAbstractItemView_ExpandingState                             4
#define QAbstractItemView_CollapsingState                            5
#define QAbstractItemView_AnimatingState                             6

/*
enum QAbstractItemView::DropIndicatorPosition (protected)
*/
#define QAbstractItemView_OnItem                                     0
#define QAbstractItemView_AboveItem                                  1
#define QAbstractItemView_BelowItem                                  2
#define QAbstractItemView_OnViewport                                 3

#endif /* QABSTRACTITEMVIEW_CH */
