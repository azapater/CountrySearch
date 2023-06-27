unit main;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.ListView,
  FMX.Edit,
  FMX.Layouts,
  FMX.Controls.Presentation,
  System.Actions,
  FMX.ActnList,
  Data.Bind.EngExt,
  FMX.Bind.DBEngExt,
  System.Rtti,
  System.Bindings.Outputs,
  FMX.Bind.Editors,
  Data.Bind.Components,
  Data.Bind.DBScope;

type
  THeaderFooterForm = class(TForm)
    Header: TToolBar;
    HeaderLabel: TLabel;
    LytSearch: TLayout;
    Button1: TButton;
    edtSearch: TEdit;
    LytCountryInfo: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblName: TLabel;
    lblCapital: TLabel;
    lblPopulation: TLabel;
    ListView1: TListView;
    ActionList1: TActionList;
    ActSearchCountry: TAction;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    procedure ActSearchCountryExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeaderFooterForm: THeaderFooterForm;

implementation

{$R *.fmx}

uses
  dmCountryAPI;

procedure THeaderFooterForm.ActSearchCountryExecute(Sender: TObject);
begin
  var countryCode := edtSearch.Text;
  dmCountry.SearchCountry(countryCode);
end;

end.
