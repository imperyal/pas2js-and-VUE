unit U_dcs;

{$mode objfpc}

interface

uses
  Classes, SysUtils;

type
  tArr10 = array[0..9] of integer;

type
  tDCS_gen = class
    private
      incVal: integer;
      arr_10: tArr10;


    public
      procedure init();
      procedure setIncVal(incVal: integer);
      procedure incAll;
      function  getArrayNums(): tArr10;
    end;

implementation


{ ***********// ***********// ***********// ***********// *********** }
procedure tDCS_gen.incAll;
var
  i: integer;
begin
  for i := 0 to Length(arr_10) - 1 do
  begin
    if (i = 0)
      then arr_10[i] := arr_10[i]     + self.incVal
      else arr_10[i] := arr_10[i - 1] + self.incVal;
  end;
end;


{ ***********// ***********// ***********// ***********// *********** }
procedure tDCS_gen.init();
var
  i: integer;
begin
  for i := 0 to Length(arr_10) - 1 do
  begin
    arr_10[i] := 0;
  end;
end;


{ ***********// ***********// ***********// ***********// *********** }
procedure tDCS_gen.setIncVal(incVal: integer);
begin
  self.incVal := incVal;
end;


{ ***********// ***********// ***********// ***********// *********** }
function  tDCS_gen.getArrayNums(): tArr10;
begin
  getArrayNums := self.arr_10;
end;



end.

