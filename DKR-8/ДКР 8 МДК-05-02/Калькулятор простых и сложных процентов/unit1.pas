unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    zakr: TBitBtn;
    prost: TButton;
    sbros: TButton;
    sloj: TButton;
    sum: TEdit;
    proc: TEdit;
    kollet: TEdit;
    p2: TEdit;
    p3: TEdit;
    res: TEdit;
    p4: TEdit;
    p1: TLabel;
    pervsum: TLabel;
    proc1: TLabel;
    let: TLabel;
    name1: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure zakrClick(Sender: TObject);
    procedure prostClick(Sender: TObject);
    procedure sbrosClick(Sender: TObject);
    procedure slojClick(Sender: TObject);
    procedure sumChange(Sender: TObject);

    procedure sumKeyPress(Sender: TObject; var Key: char);
    procedure procChange(Sender: TObject);
    procedure procKeyPress(Sender: TObject; var Key: char);
    procedure kolletChange(Sender: TObject);
    procedure kolletKeyPress(Sender: TObject; var Key: char);
    procedure p2Change(Sender: TObject);
    procedure resChange(Sender: TObject);
    procedure p1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.p1Click(Sender: TObject);
begin

end;

procedure TForm1.p2Change(Sender: TObject);
begin

end;

procedure TForm1.resChange(Sender: TObject);
begin

end;

procedure TForm1.zakrClick(Sender: TObject);
begin
  form1.close
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.prostClick(Sender: TObject);
var x,z:real;
  y: Real;

  begin
    if (sum.Text <> '') and (sum.Text[Length(sum.Text)] in ['0'..'9', ')']) then
       x := StrToFloat(sum.Text);
    if (proc.Text <> '') and (proc.Text[Length(proc.Text)] in ['0'..'9', ')']) then
       y := StrToFloat(proc.Text);
    if (kollet.Text <> '') and (kollet.Text[Length(kollet.Text)] in ['0'..'9', ')']) then
       z := StrToFloat(kollet.Text);
    if (res.Text <> '') and (res.Text[Length(res.Text)] in ['0'..'9', ')']) then
       res.Text := FloatToStr(x + x * y * z / 100);
  end;

procedure TForm1.sbrosClick(Sender: TObject);
begin
  sum.text:='';
  proc.text:='';
  kollet.text:='';
end;

procedure TForm1.slojClick(Sender: TObject);
var x,z:real;
  y: Real;
begin
  if (sum.text <> '') and (sum.text[Length(sum.text)] in ['0'..'9', ')']) then
     x:=strtofloat(sum.text);
  if (proc.text <> '') and (proc.text[Length(proc.text)] in ['0'..'9', ')']) then
     y:=strtofloat(proc.text);
  if (kollet.text <> '') and (kollet.text[Length(kollet.text)] in ['0'..'9', ')']) then
     z:=strtofloat(kollet.text);
  if (res.text <> '') and (res.text[Length(res.text)] in ['0'..'9', ')']) then
     res.text := floattostr(round((x*(1+y/100)**z)*100)/100);

end;

procedure TForm1.sumChange(Sender: TObject);
begin

end;


procedure TForm1.sumKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm1.procChange(Sender: TObject);
begin

end;

procedure TForm1.procKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm1.kolletChange(Sender: TObject);
begin

end;

procedure TForm1.kolletKeyPress(Sender: TObject; var Key: char);
begin
  if not (Key in ['0'..'9', #8])then Key:=#0;
end;

end.

