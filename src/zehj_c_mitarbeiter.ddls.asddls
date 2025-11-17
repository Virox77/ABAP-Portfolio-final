@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Mitarbeiter'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZEHJ_C_Mitarbeiter as projection on ZEHJ_R_Mitarbeiter
{
    key MitarbeiterUuid,
      Mitarbeiternummer,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Vorname,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Nachname,
      Eintrittsdatum,

      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
      _Urlaubsanspruchs : redirected to composition child ZEHJ_C_Urlaubsanspruch,
      _Urlaubsantrags : redirected to composition child ZEHJ_C_Urlaubsantrag
}
