@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for /DMO/S4D400_R_CONNECTION'
define root view entity /DMO/S4D400_C_CONNECTION
  provider contract transactional_query
  as projection on /DMO/S4D400_R_CONNECTION
  {
    key UUID,
        @Consumption.valueHelpDefinition:
            [{ entity: { name:    '/DMO/S4D400_I_CarrierVH',
                         element: 'CarrierID'
                       }
            }]
        CarrierID,
        ConnectionID,
        AirportFromID,
        CityFrom,
        CountryFrom,
        AirportToID,
        CityTo,
        CountryTo,
        LocalLastChangedAt

  }
