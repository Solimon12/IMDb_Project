@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ratings'

define view entity ZR_OS12_RATING
  as select from zabap_rating_a
  association to parent ZR_OS12_MOVIE as _Movie on  $projection.MovieUuid = _Movie.MovieUuid
                                               
{
  key rating_uuid as RatingUuid,
      movie_uuid  as MovieUuid,
      user_name   as UserName,
      rating      as Rating,
      rating_date as RatingDate,
      
      _Movie
}
