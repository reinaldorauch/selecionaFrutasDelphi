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
    procedure AddToSelectedList(Item: String);
    procedure RemoveFromSelectedList(Item: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPrinc: TFmPrinc;

implementation

{$R *.dfm}

procedure TFmPrinc.AddToSelectedList(Item: String);
begin
  with LstBxFrutasEscolhidas do
    if (Items.IndexOf(Item) = -1) then
      Items.Add(Item);
end;

procedure TFmPrinc.ChkLstFrutasClick(Sender: TObject);
var
  I: Integer;
  S: String;
  C: Boolean;
begin
  with ChkLstFrutas do
  begin
    C := Checked[ItemIndex];
    S := Items[ItemIndex];
  end;

  with LstBxFrutasEscolhidas do
  begin
    I := Items.IndexOf(S);
    if C AND (I = -1) then
      Items.Add(S)
    else
      if I > -1 then
        Items.Delete(I);
  end;
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

procedure TFmPrinc.RemoveFromSelectedList(Item: String);
var
  I: Integer;
begin
  with LstBxFrutasEscolhidas do
    if Items.IndexOf(Item) > -1 then
      Items.Delete(Items.IndexOf(Item));
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
