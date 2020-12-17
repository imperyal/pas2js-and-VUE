program project1;

{$mode objfpc}

uses
  JS, Classes, SysUtils, Web, U_dcs;


{ ********* // ********* // ********* // ********* // ********* // ********* }
var
   pubGen: tDCS_gen;
   dummy:  jsvalue;

 { ********* // ********* // ********* // ********* // ********* // ********* }
 function getNumStr(): string;
 var
   arr10:  tArr10;
 begin
   Writeln('getNumStr was called.');

   arr10     := pubGen.getArrayNums();
   getNumStr := IntToStr(arr10[0]);
 end;

begin
  // Criar classes
  pubGen := tDCS_gen.create;

  // Inicializações
  pubGen.init();
  pubGen.setIncVal(5);
  pubGen.incAll();

  dummy := @getNumStr;    // Hack to force transpilation of unused functions - tks Mattias and Michael :)
  dummy := @getNumStr;
end.
