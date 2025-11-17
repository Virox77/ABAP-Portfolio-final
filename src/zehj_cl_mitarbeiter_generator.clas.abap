CLASS zehj_cl_mitarbeiter_generator DEFINITION PUBLIC FINAL CREATE PUBLIC .
 PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zehj_cl_mitarbeiter_generator IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.
    DATA Mitarbeiter TYPE ZEHJ_MITARBEITER.
    DATA Mitarbeiters TYPE TABLE OF ZEHJ_MITARBEITER. "Mitarbeiters ist die Mehrzahl (siehe cookbook)
    DATA Urlaubsanspruch TYPE ZEHJ_URLANSP.
    DATA Urlaubsanspruchs TYPE TABLE OF ZEHJ_URLANSP.
    DATA Urlaubsantrag TYPE ZEHJ_URLANTRAG.
    DATA Urlaubsantrags TYPE TABLE OF ZEHJ_URLANTRAG.


  DATA Mitarbeiter_hans_id TYPE sysuuid_x16.
  DATA Mitarbeiter_lisa_id TYPE sysuuid_x16.
  DATA Mitarbeiter_petra_id TYPE sysuuid_x16.


    " Gelöschte Mitarbeiter
    DELETE FROM ZEHJ_MITARBEITER.
    out->write( |Gelöschte Mitarbeiter: { sy-dbcnt }| ).

    " Gelöschte Urlaubsanrpüche
    DELETE FROM ZEHJ_URLANSP.
    out->write( |Gelöschte Urlaubsprüche: { sy-dbcnt }| ).

    " Gelöschte Urlaubsantäge
    DELETE FROM ZEHJ_URLANTRAG.
    out->write( |Gelöschte Urlaubsanträge: { sy-dbcnt }| ).

    " Erstellte Mitarbeiter
    mitarbeiter-client = sy-mandt.
    mitarbeiter-mitarbeiter_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    mitarbeiter-mitarbeiternummer = '000001'.
    mitarbeiter-vorname = 'Hans'.
    mitarbeiter-nachname = 'Maier'.
    mitarbeiter-eintrittsdatum = '20000501'.
    GET TIME STAMP FIELD mitarbeiter-created_at.
  GET TIME STAMP FIELD mitarbeiter-last_changed_at.
    APPEND Mitarbeiter TO Mitarbeiters.


    mitarbeiter-client = sy-mandt.
    mitarbeiter-mitarbeiter_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    mitarbeiter-mitarbeiternummer = '000002'.
    mitarbeiter-vorname = 'Lisa'.
    mitarbeiter-nachname = 'Müller'.
    mitarbeiter-eintrittsdatum = '20100701'.
    GET TIME STAMP FIELD mitarbeiter-created_at.
  GET TIME STAMP FIELD mitarbeiter-last_changed_at.
    APPEND Mitarbeiter TO Mitarbeiters.

    mitarbeiter-client = sy-mandt.
    mitarbeiter-mitarbeiter_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    mitarbeiter-mitarbeiternummer = '000003'.
    mitarbeiter-vorname = 'Petra'.
    mitarbeiter-nachname = 'Schmid'.
    mitarbeiter-eintrittsdatum = '20231001'.
    GET TIME STAMP FIELD mitarbeiter-created_at.
  GET TIME STAMP FIELD mitarbeiter-last_changed_at.
    APPEND Mitarbeiter TO Mitarbeiters.

    "Erstellte Urlaubsansprüche

    urlaubsanspruch-urlaubsanpruch_id = cl_system_uuid=>create_uuid_x16_static( ).
    urlaubsanspruch-client = sy-mandt.
    urlaubsanspruch-mitarbeiter = Mitarbeiter_hans_id.
    urlaubsanspruch-jahr = '2022'.
    urlaubsanspruch-urlaubstage = 30.
    urlaubsanspruch-created_by       = 'GENERATOR'.
    urlaubsanspruch-last_changed_by  = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsanspruch-created_at.
    GET TIME STAMP FIELD urlaubsanspruch-last_changed_at.

    APPEND urlaubsanspruch TO urlaubsanspruchs.

    urlaubsanspruch-urlaubsanpruch_id = cl_system_uuid=>create_uuid_x16_static( ).
    urlaubsanspruch-client = sy-mandt.
    urlaubsanspruch-mitarbeiter = Mitarbeiter_hans_id.
    urlaubsanspruch-jahr = '2023'.
    urlaubsanspruch-urlaubstage = 30.
    urlaubsanspruch-created_by       = 'GENERATOR'.
    urlaubsanspruch-last_changed_by  = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsanspruch-created_at.
    GET TIME STAMP FIELD urlaubsanspruch-last_changed_at.

    APPEND urlaubsanspruch TO urlaubsanspruchs.


    urlaubsanspruch-urlaubsanpruch_id = cl_system_uuid=>create_uuid_x16_static( ).
    urlaubsanspruch-client = sy-mandt.
    urlaubsanspruch-mitarbeiter = Mitarbeiter_lisa_id.
    urlaubsanspruch-jahr = '2023'.
    urlaubsanspruch-urlaubstage = 30.
    urlaubsanspruch-created_by       = 'GENERATOR'.
    urlaubsanspruch-last_changed_by  = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsanspruch-created_at.
    GET TIME STAMP FIELD urlaubsanspruch-last_changed_at.

    APPEND urlaubsanspruch TO urlaubsanspruchs.


    urlaubsanspruch-urlaubsanpruch_id = cl_system_uuid=>create_uuid_x16_static( ).
    urlaubsanspruch-client = sy-mandt.
    urlaubsanspruch-mitarbeiter = Mitarbeiter_petra_id.
    urlaubsanspruch-jahr = '2023'.
    urlaubsanspruch-urlaubstage = 7.
    urlaubsanspruch-created_by       = 'GENERATOR'.
    urlaubsanspruch-last_changed_by  = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsanspruch-created_at.
    GET TIME STAMP FIELD urlaubsanspruch-last_changed_at.

    APPEND urlaubsanspruch TO urlaubsanspruchs.


    " Erstellte Urlaubsanträge

    urlaubsantrag-urlaubsantrag_id = cl_system_uuid=>create_uuid_x16_static(  ).
    urlaubsantrag-antragssteller = Mitarbeiter_hans_id.
    urlaubsantrag-genehmigender = Mitarbeiter_lisa_id.
    urlaubsantrag-startdatum = '20220701'.
    urlaubsantrag-enddatum = '20220710'.
    urlaubsantrag-urlaubstage = '8'.
    urlaubsantrag-kommentar = 'Sommerurlaub'.
    urlaubsantrag-status = 'G'.
    urlaubsantrag-created_by = 'GENERATOR'.
    urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsantrag-created_at.
    GET TIME STAMP FIELD urlaubsantrag-last_changed_at.

    APPEND urlaubsantrag TO urlaubsantrags.

    urlaubsantrag-urlaubsantrag_id = cl_system_uuid=>create_uuid_x16_static(  ).
    urlaubsantrag-antragssteller = Mitarbeiter_hans_id.
    urlaubsantrag-genehmigender = Mitarbeiter_lisa_id.
    urlaubsantrag-startdatum = '20221227'.
    urlaubsantrag-enddatum = '20221230'.
    urlaubsantrag-urlaubstage = '4'.
    urlaubsantrag-kommentar = 'Weihnachtsurlaub'.
    urlaubsantrag-status = 'A'.
    urlaubsantrag-created_by = 'GENERATOR'.
    urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsantrag-created_at.
    GET TIME STAMP FIELD urlaubsantrag-last_changed_at.

    APPEND urlaubsantrag TO urlaubsantrags.

    urlaubsantrag-urlaubsantrag_id = cl_system_uuid=>create_uuid_x16_static(  ).
    urlaubsantrag-antragssteller = Mitarbeiter_hans_id.
    urlaubsantrag-genehmigender = Mitarbeiter_lisa_id.
    urlaubsantrag-startdatum = '20221228'.
    urlaubsantrag-enddatum = '20221230'.
    urlaubsantrag-urlaubstage = '3'.
    urlaubsantrag-kommentar = 'Weihnachtsurlaub (2. Versuch)'.
    urlaubsantrag-status = 'G'.
    urlaubsantrag-created_by = 'GENERATOR'.
    urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsantrag-created_at.
    GET TIME STAMP FIELD urlaubsantrag-last_changed_at.

    APPEND urlaubsantrag TO urlaubsantrags.

    urlaubsantrag-urlaubsantrag_id = cl_system_uuid=>create_uuid_x16_static(  ).
    urlaubsantrag-antragssteller = Mitarbeiter_hans_id.
    urlaubsantrag-genehmigender = Mitarbeiter_lisa_id.
    urlaubsantrag-startdatum = '20230527'.
    urlaubsantrag-enddatum = '20230612'.
    urlaubsantrag-urlaubstage = '14'.
    urlaubsantrag-kommentar = ''.
    urlaubsantrag-status = 'G'.
    urlaubsantrag-created_by = 'GENERATOR'.
    urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsantrag-created_at.
    GET TIME STAMP FIELD urlaubsantrag-last_changed_at.

    APPEND urlaubsantrag TO urlaubsantrags.

    urlaubsantrag-urlaubsantrag_id = cl_system_uuid=>create_uuid_x16_static(  ).
    urlaubsantrag-antragssteller = Mitarbeiter_hans_id.
    urlaubsantrag-genehmigender = Mitarbeiter_lisa_id.
    urlaubsantrag-startdatum = '20231220'.
    urlaubsantrag-enddatum = '20231231'.
    urlaubsantrag-urlaubstage = '8'.
    urlaubsantrag-kommentar = 'Winterurlaub'.
    urlaubsantrag-status = 'B'.
    urlaubsantrag-created_by = 'GENERATOR'.
    urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsantrag-created_at.
    GET TIME STAMP FIELD urlaubsantrag-last_changed_at.

    APPEND urlaubsantrag TO urlaubsantrags.

    urlaubsantrag-urlaubsantrag_id = cl_system_uuid=>create_uuid_x16_static(  ).
    urlaubsantrag-antragssteller = Mitarbeiter_petra_id.
    urlaubsantrag-genehmigender = Mitarbeiter_hans_id.
    urlaubsantrag-startdatum = '20231227'.
    urlaubsantrag-enddatum = '20231231'.
    urlaubsantrag-urlaubstage = '3'.
    urlaubsantrag-kommentar = 'Weihnachtsurlaub'.
    urlaubsantrag-status = 'B'.
    urlaubsantrag-created_by = 'GENERATOR'.
    urlaubsantrag-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD urlaubsantrag-created_at.
    GET TIME STAMP FIELD urlaubsantrag-last_changed_at.

    APPEND urlaubsantrag TO urlaubsantrags.

    " Eingefügte Mitarbeiter
    INSERT ZEHJ_MITARBEITER FROM TABLE @Mitarbeiters.
    out->write( |Eingefuegte Mitarbeiter: { sy-dbcnt }| ).

    INSERT ZEHJ_Urlansp FROM TABLE @Urlaubsanspruchs.
    out->write( |Eingefuegte Mitarbeiter: { sy-dbcnt }| ).

    INSERT ZEHJ_URLANTRAG FROM TABLE @Urlaubsantrags.
    out->write( |Eingefuegte Mitarbeiter: { sy-dbcnt }| ).


  ENDMETHOD.


ENDCLASS.
