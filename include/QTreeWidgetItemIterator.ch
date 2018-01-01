/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QTREEWIDGETITEMITERATOR_CH
#define QTREEWIDGETITEMITERATOR_CH

/*
enum QTreeWidgetItemIterator::IteratorFlag
flags QTreeWidgetItemIterator::IteratorFlags
*/
#define QTreeWidgetItemIterator_All                                  0x00000000
#define QTreeWidgetItemIterator_Hidden                               0x00000001
#define QTreeWidgetItemIterator_NotHidden                            0x00000002
#define QTreeWidgetItemIterator_Selected                             0x00000004
#define QTreeWidgetItemIterator_Unselected                           0x00000008
#define QTreeWidgetItemIterator_Selectable                           0x00000010
#define QTreeWidgetItemIterator_NotSelectable                        0x00000020
#define QTreeWidgetItemIterator_DragEnabled                          0x00000040
#define QTreeWidgetItemIterator_DragDisabled                         0x00000080
#define QTreeWidgetItemIterator_DropEnabled                          0x00000100
#define QTreeWidgetItemIterator_DropDisabled                         0x00000200
#define QTreeWidgetItemIterator_HasChildren                          0x00000400
#define QTreeWidgetItemIterator_NoChildren                           0x00000800
#define QTreeWidgetItemIterator_Checked                              0x00001000
#define QTreeWidgetItemIterator_NotChecked                           0x00002000
#define QTreeWidgetItemIterator_Enabled                              0x00004000
#define QTreeWidgetItemIterator_Disabled                             0x00008000
#define QTreeWidgetItemIterator_Editable                             0x00010000
#define QTreeWidgetItemIterator_NotEditable                          0x00020000
#define QTreeWidgetItemIterator_UserFlag                             0x01000000

#endif /* QTREEWIDGETITEMITERATOR_CH */
