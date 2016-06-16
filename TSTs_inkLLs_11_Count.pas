unit TSTs_inkLLs_11_Count;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_11_Count= class(tTSTCTC_CORE_inkLLs)
  published
    procedure Count_Nil;
    procedure Count_One;
    procedure Count_Two;
    procedure Count_SiX;
  end;

implementation

procedure  tTests_inkLLs_11_Count.Count_Nil;
begin
    LIST:=TST_list_crt_NIL;
    //--
    AssertEquals(0,inkLLs_Count(LIST));
end;

procedure  tTests_inkLLs_11_Count.Count_One;
begin
    LIST:=TST_list_crt_One;
    //--
    AssertEquals(1,inkLLs_Count(LIST));
end;

procedure  tTests_inkLLs_11_Count.Count_Two;
begin
    LIST:=TST_list_crt_Two;
    //--
    AssertEquals(2,inkLLs_Count(LIST));
end;

procedure  tTests_inkLLs_11_Count.Count_SiX;
begin
    LIST:=TST_list_crt_Six;
    //--
    AssertEquals(6,inkLLs_Count(LIST));
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_11_Count);
end.

