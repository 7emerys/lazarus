unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    ButtonCalculate: TButton;
    EditA: TEdit;
    EditB: TEdit;
    EditX: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelResult: TLabel;
    procedure ButtonCalculateClick(Sender: TObject);
    procedure EditXChange(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.EditXChange(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.ButtonCalculateClick(Sender: TObject);
var
  a, b, t, numerator: Double;
begin

  a := StrToFloatDef(EditA.Text, 0);
  b := StrToFloatDef(EditB.Text, 0);
  t := StrToFloatDef(EditX.Text, 0);


  numerator := exp(-b * t) * sin(a * t + b) - sqrt(abs(b * t + a));


  LabelResult.Caption := 'Результат: ' + FloatToStr(numerator);

end;

end.

