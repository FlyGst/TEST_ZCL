@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for /DMO/S4D400_R_FLIGHT'
@ObjectModel.semanticKey: [ 'CarrierID', 'ConnectionID', 'FlightDate' ]
define root view entity /DMO/S4D400_C_FLIGHT
  provider contract transactional_query
  as projection on /DMO/S4D400_R_FLIGHT
  {
    key CarrierID,
    key ConnectionID,
    key FlightDate,
        Price,
        @Consumption.valueHelpDefinition: [{ entity.name: 'I_CurrencyStdVH',
                                             entity.element: 'Currency' }]
        CurrencyCode,
        PlaneTypeID,
        LocalLastChangedAt

  }
