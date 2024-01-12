@EndUserText.label: 'Ratings'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_OS12_RATING as projection on ZR_OS12_RATING
{
  key RatingUuid,
  MovieUuid,
  UserName,
  Rating,
  RatingDate,
  /* Associations */
  _Movie : redirected to parent ZC_OS12_Movie

}
