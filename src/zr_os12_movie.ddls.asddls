@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movies'

define root view entity ZR_OS12_MOVIE
  as select from zabap_movie_a
  
{
      key movie_uuid as MovieUuid,
      title as Title,
      genre as Genre,
      publishing_year as PublishingYear,
      runtime_in_min as RuntimeInMin,
      image_url as ImageUrl,
      created_at as CreatedAt,
      created_by as CreatedBy,
      last_changed_at as LastChangedAt,
      last_changed_by as LastChangedBy
}
