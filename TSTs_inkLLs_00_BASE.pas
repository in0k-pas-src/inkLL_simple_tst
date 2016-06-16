unit TSTs_inkLLs_00_BASE;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_00_BASE=class(tTSTCTC_CORE_inkLLs)
  published
    procedure Init;
    procedure isEmpty;
  end;

implementation

procedure tTests_inkLLs_00_BASE.isEmpty;
begin
    LIST:=@self;
    AssertFalse(inkLLs_isEmpty(LIST));
    //---
    LIST:=nil;
    AssertTrue (inkLLs_isEmpty(LIST));
end;

procedure tTests_inkLLs_00_BASE.Init;
begin
    LIST:=@self;
    //---
    inkLLs_INIT(LIST);
    //---
    AssertNull (LIST);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_00_BASE);
end.

