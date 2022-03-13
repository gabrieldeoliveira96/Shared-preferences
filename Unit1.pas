unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Edit, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, SharedPreference;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnObter: TButton;
    btnCadastrar: TButton;
    edtLogin: TEdit;
    edtSenha: TEdit;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnObterClick(Sender: TObject);
  private
    { Private declarations }
    const LOGIN = 'LOGIN';
    const SENHA = 'SENHA';
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  SetPropertiesDispositivo(LOGIN,edtLogin.Text);
  SetPropertiesDispositivo(SENHA,edtSenha.Text);
end;

procedure TForm1.btnObterClick(Sender: TObject);
begin
  Memo1.Lines.Add(GetPropertiesDispositivo(LOGIN));
  Memo1.Lines.Add(GetPropertiesDispositivo(SENHA));
end;

end.
