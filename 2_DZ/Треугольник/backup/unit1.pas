unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonCalculate: TButton;
    EditRatio: TEdit;
    EditRadius: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    LabelArea: TLabel;
    LabelDiagonal: TLabel;
    procedure ButtonCalculateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure LabelDiagonalClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonCalculateClick(Sender: TObject);
var
  c, s, a, b: Double;
begin

  c := StrToFloat(EditRadius.Text);
  a := StrToFloat(EditRatio.Text);

   // Вычисление боковой стороны
  b := 2 * c * sin(a / 2);

  // Вычисление площади треугольника
  s := (c * b) / 2;

  // Выводим результаты на экран
  LabelDiagonal.Caption := 'Площадь: ' + FloatToStr(s);
  LabelArea.Caption := 'Боковая сторона: ' + FloatToStr(b);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.LabelDiagonalClick(Sender: TObject);
begin

end;



end.

