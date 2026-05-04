@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Office Resources'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_OFFICE_RES_VH 
    as select from ZR_OFFICE_RES_WIK
{
@UI.hidden: true
  key ResourceUUID,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @EndUserText.label: 'Resource Description'
      Description,

      @EndUserText.label: 'Category'
      Category,

      @EndUserText.label: 'Location'
      Location
}
