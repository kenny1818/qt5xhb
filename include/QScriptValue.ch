/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QSCRIPTVALUE_CH
#define QSCRIPTVALUE_CH

/*
enum QScriptValue::PropertyFlag
flags QScriptValue::PropertyFlags
*/
#define QScriptValue_ReadOnly                                        0x00000001
#define QScriptValue_Undeletable                                     0x00000002
#define QScriptValue_SkipInEnumeration                               0x00000004
#define QScriptValue_PropertyGetter                                  0x00000008
#define QScriptValue_PropertySetter                                  0x00000010
#define QScriptValue_KeepExistingFlags                               0x00000800

/*
enum QScriptValue::ResolveFlag
flags QScriptValue::ResolveFlags
*/
#define QScriptValue_ResolveLocal                                    0x00
#define QScriptValue_ResolvePrototype                                0x01

/*
enum QScriptValue::SpecialValue
*/
#define QScriptValue_UndefinedValue                                  1
#define QScriptValue_NullValue                                       0

#endif /* QSCRIPTVALUE_CH */
