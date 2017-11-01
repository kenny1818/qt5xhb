/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QGEOSERVICEPROVIDER_CH
#define QGEOSERVICEPROVIDER_CH

// TODO: acertar valores do enums: (n<n) e ~(n)

/*
enum QGeoServiceProvider::Error
*/
#define QGeoServiceProvider_NoError                                  0
#define QGeoServiceProvider_NotSupportedError                        1
#define QGeoServiceProvider_UnknownParameterError                    2
#define QGeoServiceProvider_MissingRequiredParameterError            3
#define QGeoServiceProvider_ConnectionError                          4

/*
enum QGeoServiceProvider::RoutingFeature
flags QGeoServiceProvider::RoutingFeatures
*/
#define QGeoServiceProvider_NoRoutingFeatures                        0
#define QGeoServiceProvider_OnlineRoutingFeature                     (1<<0)
#define QGeoServiceProvider_OfflineRoutingFeature                    (1<<1)
#define QGeoServiceProvider_LocalizedRoutingFeature                  (1<<2)
#define QGeoServiceProvider_RouteUpdatesFeature                      (1<<3)
#define QGeoServiceProvider_AlternativeRoutesFeature                 (1<<4)
#define QGeoServiceProvider_ExcludeAreasRoutingFeature               (1<<5)
#define QGeoServiceProvider_AnyRoutingFeatures                       ~(0)

/*
enum QGeoServiceProvider::GeocodingFeature
flags QGeoServiceProvider::GeocodingFeatures
*/
#define QGeoServiceProvider_NoGeocodingFeatures                      0
#define QGeoServiceProvider_OnlineGeocodingFeature                   (1<<0)
#define QGeoServiceProvider_OfflineGeocodingFeature                  (1<<1)
#define QGeoServiceProvider_ReverseGeocodingFeature                  (1<<2)
#define QGeoServiceProvider_LocalizedGeocodingFeature                (1<<3)
#define QGeoServiceProvider_AnyGeocodingFeatures                     ~(0)

/*
enum QGeoServiceProvider::MappingFeature
flags QGeoServiceProvider::MappingFeatures
*/
#define QGeoServiceProvider_NoMappingFeatures                        0
#define QGeoServiceProvider_OnlineMappingFeature                     (1<<0)
#define QGeoServiceProvider_OfflineMappingFeature                    (1<<1)
#define QGeoServiceProvider_LocalizedMappingFeature                  (1<<2)
#define QGeoServiceProvider_AnyMappingFeatures                       ~(0)

/*
enum QGeoServiceProvider::PlacesFeature
flags QGeoServiceProvider::PlacesFeatures
*/
#define QGeoServiceProvider_NoPlacesFeatures                         0
#define QGeoServiceProvider_OnlinePlacesFeature                      (1<<0)
#define QGeoServiceProvider_OfflinePlacesFeature                     (1<<1)
#define QGeoServiceProvider_SavePlaceFeature                         (1<<2)
#define QGeoServiceProvider_RemovePlaceFeature                       (1<<3)
#define QGeoServiceProvider_SaveCategoryFeature                      (1<<4)
#define QGeoServiceProvider_RemoveCategoryFeature                    (1<<5)
#define QGeoServiceProvider_PlaceRecommendationsFeature              (1<<6)
#define QGeoServiceProvider_SearchSuggestionsFeature                 (1<<7)
#define QGeoServiceProvider_LocalizedPlacesFeature                   (1<<8)
#define QGeoServiceProvider_NotificationsFeature                     (1<<9)
#define QGeoServiceProvider_PlaceMatchingFeature                     (1<<10)
#define QGeoServiceProvider_AnyPlacesFeatures                        ~(0)

#endif /* QGEOSERVICEPROVIDER_CH */
