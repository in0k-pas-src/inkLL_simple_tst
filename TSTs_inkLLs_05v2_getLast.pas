unit TSTs_inkLLs_05v2_getLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_05v2_getLast= class(tTSTCTC_CORE_inkLLs)
  published
    procedure getLastCount_Nil;
    procedure getLastCount_One;
    procedure getLastCount_Two;
    procedure getLastCount_SiX;
  end;

implementation

procedure  tTests_inkLLs_05v2_getLast.getLastCount_Nil;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_NIL(lst);
    AssertSame  ('wrong last Node', lst,inkLLs_getLast(LIST,cnt));
    AssertEquals('wrong Count',     TST_LIST_Count   ,cnt );
end;

procedure  tTests_inkLLs_05v2_getLast.getLastCount_One;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_One(lst);
    AssertSame  ('wrong last Node', lst,inkLLs_getLast(LIST,cnt));
    AssertEquals('wrong Count',     TST_LIST_Count   ,cnt );
end;

procedure  tTests_inkLLs_05v2_getLast.getLastCount_Two;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Two(lst);
    AssertSame  ('wrong last Node', lst,inkLLs_getLast(LIST,cnt));
    AssertEquals('wrong Count',     TST_LIST_Count   ,cnt );
end;

procedure  tTests_inkLLs_05v2_getLast.getLastCount_SiX;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Six(lst);
    AssertSame  ('wrong last Node', lst,inkLLs_getLast(LIST,cnt));
    AssertEquals('wrong Count',     TST_LIST_Count  ,cnt );
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_05v2_getLast);
end.

