unit TSTs_inkLLs_69_Invert;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_69_Invert= class(tTSTCTC_CORE_inkLLs)
  published
    procedure Invert_Nil;
    procedure Invert_One;
    procedure Invert_Two;
    procedure Invert_SiX;
  end;

implementation

procedure tTests_inkLLs_69_Invert.Invert_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL(lst);
    tmq:= LIST;
    //--
    inkLLs_Invert(LIST);
    //--
    AssertEquals('wrong last count', 0  ,TST_LIST_Count);
    AssertTrue  ('wrong last Node' , tmq=inkLLs_getLast(LIST));
    AssertTrue  ('wrong first Node', lst=LIST);
end;

procedure tTests_inkLLs_69_Invert.Invert_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    tmq := LIST;
    //--
    inkLLs_Invert(LIST);
    //--
    AssertEquals('wrong last count', 1  ,TST_LIST_Count);
    AssertTrue  ('wrong last Node' , tmq=inkLLs_getLast(LIST));
    AssertTrue  ('wrong first Node', lst=LIST);
end;

procedure tTests_inkLLs_69_Invert.Invert_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    tmq := LIST;
    //--
    inkLLs_Invert(LIST);
    //--
    AssertEquals('wrong last count', 2  ,TST_LIST_Count);
    AssertTrue  ('wrong last Node' , tmq=inkLLs_getLast(LIST));
    AssertTrue  ('wrong first Node', lst=LIST);
end;

procedure tTests_inkLLs_69_Invert.Invert_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    tmq := LIST;
    //--
    inkLLs_Invert(LIST);
    //--
    AssertEquals('wrong last count', 6  ,TST_LIST_Count);
    AssertTrue  ('wrong last Node' , tmq=inkLLs_getLast(LIST));
    AssertTrue  ('wrong first Node', lst=LIST);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_69_Invert);
end.

