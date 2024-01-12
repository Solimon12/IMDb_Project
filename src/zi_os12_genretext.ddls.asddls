@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Genres'

define view entity ZI_OS12_GenreText as select from zabap_movie_a
{
  key movie_uuid as MovieUuid,
  genre as Genre
}
