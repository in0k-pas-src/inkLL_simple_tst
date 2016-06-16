unit TSTs_inkLLs_05v1_getLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_05v1_getLast= class(tTSTCTC_CORE_inkLLs)
  published
    procedure getLast_Nil;
    procedure getLast_One;
    procedure getLast_Two;
    procedure getLast_SiX;
  end;

implementation

procedure  tTests_inkLLs_05v1_getLast.getLast_Nil;
var lst:pointer;
begin
    LIST:=TST_list_crt_NIL(lst);
    AssertSame('wrong last Node', lst,inkLLs_getLast(LIST));
end;

procedure  tTests_inkLLs_05v1_getLast.getLast_One;
var lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    AssertSame('wrong last Node', lst,inkLLs_getLast(LIST));
end;

procedure  tTests_inkLLs_05v1_getLast.getLast_Two;
var lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    AssertSame('wrong last Node', lst,inkLLs_getLast(LIST));
end;


procedure  tTests_inkLLs_05v1_getLast.getLast_SiX;
var lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    AssertSame('wrong last Node', lst,inkLLs_getLast(LIST));
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_05v1_getLast);
end.

