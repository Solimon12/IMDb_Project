@EndUserText.label: 'Movies'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_OS12_Movie as projection on ZR_OS12_MOVIE
{
  key MovieUuid,
  @Search.defaultSearchElement: true     
  @Search.fuzzinessThreshold: 0.7
  Title,
  Genre,
  PublishingYear,
  RuntimeInMin,
  ImageUrl,
  CreatedAt,
  CreatedBy,
  LastChangedAt,
  LastChangedBy
}
