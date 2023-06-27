unit dmCountryAPI;

interface

uses
  System.SysUtils,
  System.Classes,
  REST.Types,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  REST.Response.Adapter,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TdmCountry = class(TDataModule)
    RESTClient: TRESTClient;
    ReqCountry: TRESTRequest;
    ResCountry: TRESTResponse;
    DataSetAdapCountry: TRESTResponseDataSetAdapter;
    Country: TFDMemTable;
    ReqCities: TRESTRequest;
    ResCities: TRESTResponse;
    DataSetAdapCities: TRESTResponseDataSetAdapter;
    Cities: TFDMemTable;
    Citiesgeo_id: TFloatField;
    Citiesname: TWideStringField;
    Citiesstate_or_region: TWideStringField;
    Citiescountry: TWideStringField;
    Citieslatitude: TFloatField;
    Citieslongitude: TFloatField;
    Countryname: TWideStringField;
    Countryalpha2code: TWideStringField;
    Countryalpha3code: TWideStringField;
    Countrycapital: TWideStringField;
    Countryalt_spellings: TWideStringField;
    Countryregion: TWideStringField;
    Countrysubregion: TWideStringField;
    Countrypopulation: TFloatField;
    Countrylatitude: TFloatField;
    Countrylongitude: TFloatField;
    Countrydemonym: TWideStringField;
    Countryarea: TFloatField;
    Countrygini: TFloatField;
    Countrytimezones: TWideStringField;
    Countryborders: TWideStringField;
    Countrynative_name: TWideStringField;
    Countrynumeric_code: TIntegerField;
    Countryflag: TWideStringField;
    Countrytop_level_domains: TWideStringField;
    Countrycalling_codes: TWideStringField;
    Countrycurrencies: TWideStringField;
    Countrylanguages: TWideStringField;
    Countryregional_blocs: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    const API_KEY: string = 'xxxxxxx'; // Replace with your own apilayer apikey
  public
    procedure SearchCountry(ACountryCode: string);
  end;

var
  dmCountry: TdmCountry;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

procedure TdmCountry.DataModuleCreate(Sender: TObject);
begin
  RESTClient.Params.AddHeader('apikey', API_KEY);
end;

procedure TdmCountry.SearchCountry(ACountryCode: string);
begin
  ReqCountry.Resource := 'code/' + ACountryCode;
  ReqCities.Resource := 'cities/' + ACountryCode;
  ReqCountry.Execute;
  ReqCities.Execute;
end;

end.
