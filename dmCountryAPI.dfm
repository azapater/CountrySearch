object dmCountry: TdmCountry
  OnCreate = DataModuleCreate
  Height = 346
  Width = 293
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.apilayer.com/geo/country'
    Params = <>
    SynchronizedEvents = False
    Left = 40
    Top = 24
  end
  object ReqCountry: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient
    Params = <>
    Resource = 'code/ES'
    Response = ResCountry
    SynchronizedEvents = False
    Left = 40
    Top = 80
  end
  object ResCountry: TRESTResponse
    ContentType = 'application/json'
    Left = 40
    Top = 136
  end
  object DataSetAdapCountry: TRESTResponseDataSetAdapter
    Active = True
    Dataset = Country
    FieldDefs = <>
    Response = ResCountry
    Left = 40
    Top = 192
  end
  object Country: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'name'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'alpha2code'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'alpha3code'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'capital'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'alt_spellings'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'region'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'subregion'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'population'
        DataType = ftFloat
      end
      item
        Name = 'latitude'
        DataType = ftFloat
      end
      item
        Name = 'longitude'
        DataType = ftFloat
      end
      item
        Name = 'demonym'
        DataType = ftWideString
        Size = 7
      end
      item
        Name = 'area'
        DataType = ftFloat
      end
      item
        Name = 'gini'
        DataType = ftFloat
      end
      item
        Name = 'timezones'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'borders'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'native_name'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'numeric_code'
        DataType = ftInteger
      end
      item
        Name = 'flag'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'top_level_domains'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'calling_codes'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'currencies'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'languages'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'regional_blocs'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 40
    Top = 248
    object Countryname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
    object Countryalpha2code: TWideStringField
      FieldName = 'alpha2code'
      Size = 2
    end
    object Countryalpha3code: TWideStringField
      FieldName = 'alpha3code'
      Size = 3
    end
    object Countrycapital: TWideStringField
      FieldName = 'capital'
      Size = 50
    end
    object Countryalt_spellings: TWideStringField
      FieldName = 'alt_spellings'
      Size = 255
    end
    object Countryregion: TWideStringField
      FieldName = 'region'
      Size = 6
    end
    object Countrysubregion: TWideStringField
      FieldName = 'subregion'
      Size = 15
    end
    object Countrypopulation: TFloatField
      FieldName = 'population'
    end
    object Countrylatitude: TFloatField
      FieldName = 'latitude'
    end
    object Countrylongitude: TFloatField
      FieldName = 'longitude'
    end
    object Countrydemonym: TWideStringField
      FieldName = 'demonym'
      Size = 7
    end
    object Countryarea: TFloatField
      FieldName = 'area'
    end
    object Countrygini: TFloatField
      FieldName = 'gini'
    end
    object Countrytimezones: TWideStringField
      FieldName = 'timezones'
      Size = 255
    end
    object Countryborders: TWideStringField
      FieldName = 'borders'
      Size = 255
    end
    object Countrynative_name: TWideStringField
      FieldName = 'native_name'
      Size = 6
    end
    object Countrynumeric_code: TIntegerField
      FieldName = 'numeric_code'
    end
    object Countryflag: TWideStringField
      FieldName = 'flag'
      Size = 40
    end
    object Countrytop_level_domains: TWideStringField
      FieldName = 'top_level_domains'
      Size = 255
    end
    object Countrycalling_codes: TWideStringField
      FieldName = 'calling_codes'
      Size = 255
    end
    object Countrycurrencies: TWideStringField
      FieldName = 'currencies'
      Size = 255
    end
    object Countrylanguages: TWideStringField
      FieldName = 'languages'
      Size = 255
    end
    object Countryregional_blocs: TWideStringField
      FieldName = 'regional_blocs'
      Size = 255
    end
  end
  object ReqCities: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient
    Params = <>
    Resource = 'cities/ES'
    Response = ResCities
    SynchronizedEvents = False
    Left = 184
    Top = 80
  end
  object ResCities: TRESTResponse
    ContentType = 'application/json'
    Left = 184
    Top = 136
  end
  object DataSetAdapCities: TRESTResponseDataSetAdapter
    Active = True
    Dataset = Cities
    FieldDefs = <>
    Response = ResCities
    Left = 184
    Top = 192
  end
  object Cities: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'geo_id'
        DataType = ftFloat
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'state_or_region'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'country'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'latitude'
        DataType = ftFloat
      end
      item
        Name = 'longitude'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'state_or_region;name'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 184
    Top = 248
    object Citiesgeo_id: TFloatField
      FieldName = 'geo_id'
      Origin = 'geo_id'
    end
    object Citiesname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 100
    end
    object Citiesstate_or_region: TWideStringField
      FieldName = 'state_or_region'
      Origin = 'state_or_region'
      Size = 100
    end
    object Citiescountry: TWideStringField
      FieldName = 'country'
      Origin = 'country'
      Size = 255
    end
    object Citieslatitude: TFloatField
      FieldName = 'latitude'
      Origin = 'latitude'
    end
    object Citieslongitude: TFloatField
      FieldName = 'longitude'
      Origin = 'longitude'
    end
  end
end
