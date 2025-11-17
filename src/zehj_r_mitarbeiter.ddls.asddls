@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic View Mitarbeiter'
define root view entity ZEHJ_R_Mitarbeiter as select from zehj_mitarbeiter
composition [0..*] of ZEHJ_R_Urlaubsanspruch as _Urlaubsanspruchs
composition [0..*] of ZEHJ_R_Urlaubsantrag as _Urlaubsantrags
{

  key mitarbeiter_uuid   as MitarbeiterUuid,
      mitarbeiternummer as Mitarbeiternummer,
      vorname         as Vorname,
      nachname        as Nachname,
      eintrittsdatum  as Eintrittsdatum,
      
      
      
      
      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
     // _Urlaubsantrags
     /* Associations */
     _Urlaubsanspruchs,
     _Urlaubsantrags
  }    
      
     
