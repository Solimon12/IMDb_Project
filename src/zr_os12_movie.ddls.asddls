@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Movies'

define root view entity ZR_OS12_MOVIE
  as select from zabap_movie_a
  composition [0..*] of ZR_OS12_RATING    as _Ratings
  association [1..1] to ZI_OS12_GenreText as _GenreText on $projection.Genre = _GenreText.Genre

{
      @ObjectModel.text.element: [ 'GenreText']
      
  key movie_uuid       as MovieUuid,
      title            as Title,
      genre            as Genre,
      publishing_year  as PublishingYear,
      runtime_in_min   as RuntimeInMin,
      image_url        as ImageUrl,
      created_at       as CreatedAt,
      created_by       as CreatedBy,
      last_changed_at  as LastChangedAt,
      last_changed_by  as LastChangedBy,

      _GenreText.Genre as GenreText,

      _Ratings
}
