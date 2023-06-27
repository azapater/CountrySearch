program countrySearch;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {HeaderFooterForm} ,
  dmCountryAPI in 'dmCountryAPI.pas' {dmCountry: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(THeaderFooterForm, HeaderFooterForm);
  Application.CreateForm(TdmCountry, dmCountry);
  Application.Run;

end.
