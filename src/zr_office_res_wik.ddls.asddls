@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Resources - Interface View'

define root view entity ZR_OFFICE_RES_WIK
  as select from zresources_wik
{
    key res_uuid    as ResourceUUID,
    res_id          as ResourceID,
    type            as Category,
    location        as Location,
    description     as Description
}
