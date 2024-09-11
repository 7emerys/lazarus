unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TFmain }

  TFmain = class(TForm)
    Diagonal: TLabel;
    DiagonalEdit: TEdit;
    TitleEdit: TEdit;
    Nextt: TButton;
    HZ1: TLabel;
    Previouss: TButton;
    ProducerEdit: TEdit;
    HZ: TEdit;
    LightCheckbox: TCheckBox;
    title: TLabel;
    ProducerL: TLabel;
    HDR1: TLabel;
    procedure DiagonalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure HDR1Click(Sender: TObject);
    procedure HZ1Click(Sender: TObject);
    procedure NexttClick(Sender: TObject);
    procedure PrevioussClick(Sender: TObject);
    procedure titleClick(Sender: TObject);
    procedure TitleEditChange(Sender: TObject);
  private
    procedure GetRow(i: integer);
    procedure editdata(i:integer);
  public

  end;

var
  Fmain: TFmain;
  Data: TStringList;
  cur_row: integer;

implementation

{$R *.lfm}

{ TFmain }


procedure TFmain.FormShow(Sender: TObject);
Begin
  Data := TStringList.create;
  cur_row := 0;
  if FileExists('data.txt') then begin
     Data.LoadFromFile('data.txt');
      getRow(cur_row);
  end;
end;

procedure TFmain.HDR1Click(Sender: TObject);
begin

end;

procedure TFmain.HZ1Click(Sender: TObject);
begin

end;

procedure TFmain.NexttClick(Sender: TObject);
begin
 editdata(cur_row);
 if cur_row < data.count-1 then
    begin
      cur_row := cur_row + 1;
      getRow(cur_row);
    end
    else
   begin
     data.add('');
     cur_row += 1;
     titleedit.Clear;
     produceredit.clear;
     lightcheckbox.checked := False;
     HZ.clear;
     DiagonalEdit.clear;
   end;
end;

procedure TFmain.PrevioussClick(Sender: TObject);
begin
 editdata(cur_row);
 if cur_row > 0 then
    begin
      cur_row := cur_row - 1;
      getRow(cur_row);
    end;
end;

procedure TFmain.titleClick(Sender: TObject);
begin

end;

procedure TFmain.TitleEditChange(Sender: TObject);
begin

end;

procedure TFmain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  editdata(cur_row);
  data.saveToFile('data.txt')
end;

procedure TFmain.DiagonalClick(Sender: TObject);
begin

end;

procedure TFmain.GetRow(i: integer);
var str: string;
begin
   str := Data.Strings[i];

   TitleEdit.text:=copy(str, 1, pos(',',str)-1);
   delete(str,1,pos(',',str));

   ProducerEdit.text:=copy(str, 1, pos(',',str)-1);
   delete(str,1,pos(',',str));

   if copy(str, 1, pos(',',str)-1) = 'True' then
      LightCheckbox.checked := True
   else
      LightCheckbox.checked := False;
   delete(str,1,pos(',',str));

   HZ.text:=copy(str, 1, pos(',',str)-1);
   delete(str,1,pos(',',str));

   DiagonalEdit.text:=str;
end;

procedure TFmain.editdata(i:integer);
var str:string;
begin
   if LightCheckbox.checked = True then
      str:= 'True'
   else str:='False';
   data.strings[i]:= TitleEdit.text + ',' + ProducerEdit.text + ',' +  str + ',' + HZ.text + ',' + DiagonalEdit.Text;
end;

end.

