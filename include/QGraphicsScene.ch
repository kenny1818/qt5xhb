/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QGRAPHICSSCENE_CH
#define QGRAPHICSSCENE_CH

/*
enum QGraphicsScene::ItemIndexMethod
*/
#define QGraphicsScene_BspTreeIndex                                  0
#define QGraphicsScene_NoIndex                                       -1

/*
enum QGraphicsScene::SceneLayer
flags QGraphicsScene::SceneLayers
*/
#define QGraphicsScene_ItemLayer                                     0x1
#define QGraphicsScene_BackgroundLayer                               0x2
#define QGraphicsScene_ForegroundLayer                               0x4
#define QGraphicsScene_AllLayers                                     0xffff

#endif /* QGRAPHICSSCENE_CH */
