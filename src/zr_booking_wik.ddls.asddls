@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking - Interface View'

define root view entity ZR_BOOKING_WIK
  as select from zbookings_wik -- Twoja tabela rezerwacji
  association [1..1] to ZR_OFFICE_RES_WIK as _Resource on $projection.ResourceUUID = _Resource.ResourceUUID
{
    key booking_uuid   as BookingUUID,
    res_uuid           as ResourceUUID,
    employee_id        as EmployeeID,
    start_datetime     as StartDateTime,
    end_datetime       as EndDateTime,
    status             as Status,
    

    _Resource.ResourceID as ResourceName, 
    

    _Resource
}
