unit Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CheckLst, Vcl.StdCtrls;

type
  TFmPrinc = class(TForm)
    Label1: TLabel;
    LstBxFrutasEscolhidas: TListBox;
    ChkLstFrutas: TCheckListBox;
    Label2: TLabel;
    procedure ChkLstFrutasClick(Sender: TObject);
    procedure LstBxFrutasEscolhidasKeyPress(Sender: TObject; var Key: Char);
    procedure downSelected;
    procedure upSelected;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPrinc: TFmPrinc;

implementation

{$R *.dfm}

procedure TFmPrinc.ChkLstFrutasClick(Sender: TObject);
var
  I: Integer;
begin
  LstBxFrutasEscolhidas.Items.Clear;

  with ChkLstFrutas do
    for I := 0 to Items.Count - 1 do
      if Checked[i] then
        LstBxFrutasEscolhidas.Items.Add(Items[i]);
end;

procedure TFmPrinc.downSelected;
var aux: String;
begin
  with LstBxFrutasEscolhidas do
  begin
    if(ItemIndex > -1) AND (ItemIndex < (Items.Count - 1)) then
    begin
      aux := Items[ItemIndex + 1];
      Items[ItemIndex + 1] := Items[ItemIndex];
      Items[ItemIndex] := aux;
      ItemIndex := ItemIndex + 1;
    end;
  end;
end;

procedure TFmPrinc.LstBxFrutasEscolhidasKeyPress(Sender: TObject;
  var Key: Char);
begin
  case Key of
    'c','C': upSelected;
    'b','B': downSelected;
  end;
end;

procedure TFmPrinc.upSelected;
var aux: String;
begin
  with LstBxFrutasEscolhidas do
  begin
    if(ItemIndex > 0) then
    begin
      aux := Items[ItemIndex - 1];
      Items[ItemIndex - 1] := Items[ItemIndex];
      Items[ItemIndex] := aux;
      ItemIndex := ItemIndex - 1;
    end;
  end;
end;

end.
