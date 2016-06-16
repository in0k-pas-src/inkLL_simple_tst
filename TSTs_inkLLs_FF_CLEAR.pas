unit TSTs_inkLLs_FF_CLEAR;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

  tTests_inkLLs_FF_CLEAR= class(tTSTCTC_CORE_inkLLs)
  published
    procedure Clear_Nil;
    procedure Clear_One;
    procedure Clear_Two;
    procedure Clear_Six;
  end;

implementation

procedure  tTests_inkLLs_FF_CLEAR.Clear_Nil;
begin
    inkLLs_CLEAR(LIST,@TST_node_DESTROY);
    //---
    AssertNull(LIST);
end;

procedure  tTests_inkLLs_FF_CLEAR.Clear_One;
begin
    LIST:=TST_list_crt_One;
    //--
    inkLLs_CLEAR(LIST,@TST_node_DESTROY);
    //--
    AssertNull(LIST);
end;

procedure  tTests_inkLLs_FF_CLEAR.Clear_Two;
begin
    LIST:=TST_list_crt_Two;
    //--
    inkLLs_CLEAR(LIST,@TST_node_DESTROY);
    //--
    AssertNull(LIST);
end;

procedure  tTests_inkLLs_FF_CLEAR.Clear_Six;
begin
    LIST:=TST_list_crt_Six;
    //--
    inkLLs_CLEAR(LIST,@TST_node_DESTROY);
    //--
    AssertNull(LIST);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_FF_CLEAR);
end.

