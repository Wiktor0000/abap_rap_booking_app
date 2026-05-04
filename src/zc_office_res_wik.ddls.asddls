@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_OFFICE_RES_WIK
  provider contract transactional_query
  as projection on ZR_OFFICE_RES_WIK
{
    @UI.facet: [ { id: 'Resource', purpose: #STANDARD, type: #IDENTIFICATION_REFERENCE, label: 'Zasób', position: 10 } ]

    @UI.lineItem: [ { position: 10 } ]
    @UI.identification: [ { position: 10 } ]
    key ResourceUUID,

    @UI.lineItem: [ { position: 20 } ]
    @UI.selectionField: [ { position: 10 } ]
    @UI.identification: [ { position: 20 } ]
    ResourceID,

    @UI.lineItem: [ { position: 30 } ]
    Category,

    @UI.lineItem: [ { position: 40 } ]
    Location,

    @UI.lineItem: [ { position: 50 } ]
    Description
}
