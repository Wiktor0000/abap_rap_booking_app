@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_BOOKING_WIK
    provider contract transactional_query
    as projection on ZR_BOOKING_WIK
{
  
  @UI.facet: [ { id:            'Booking',
                 purpose:       #STANDARD,
                 type:          #IDENTIFICATION_REFERENCE,
                 label:         'Szczegóły rezerwacji',
                 position:      10 } ]
                 
   @UI.hidden: true
   key BookingUUID,

  @UI.lineItem:       [ { position: 20, label: 'ID Zasobu' } ]
  @UI.identification: [ { position: 20, label: 'ID Zasobu' } ]
  ResourceUUID,

  @UI.lineItem:       [ { position: 30, label: 'Pracownik' } ]
  @UI.identification: [ { position: 30, label: 'Numer Pracownika' } ]
  EmployeeID,


  @UI.lineItem:       [ { position: 40, label: 'Nazwa Zasobu' } ]
  @UI.identification: [ { position: 40, label: 'Nazwa Zasobu' } ]
  ResourceName,


  @UI.lineItem:       [ { position: 50, label: 'Początek' } ]
  @UI.identification: [ { position: 50, label: 'Data rozpoczęcia' } ]
  StartDateTime,

  @UI.lineItem:       [ { position: 60, label: 'Koniec' } ]
  @UI.identification: [ { position: 60, label: 'Data zakończenia' } ]
  EndDateTime
}
