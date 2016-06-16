unit TSTs_inkLLs_A1v2_getNodeOrLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_A1v2_getNodeOrLast=class(tTSTCTC_CORE_inkLLs)
  published
    procedure getNodeOrLast_One;
    procedure getNodeOrLast_Two;
    procedure getNodeOrLast_SiX;
  end;

implementation

procedure tTests_inkLLs_A1v2_getNodeOrLast.getNodeOrLast_One;
var lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    AssertSame(LIST, inkLLs_getNodeOrLast(LIST,0));
    AssertSame(lst, inkLLs_getNodeOrLast(LIST,0));
    AssertSame(lst, inkLLs_getNodeOrLast(LIST,1));
end;

procedure tTests_inkLLs_A1v2_getNodeOrLast.getNodeOrLast_Two;
var lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    AssertSame(LIST, inkLLs_getNodeOrLast(LIST,0));
    AssertSame(lst, inkLLs_getNodeOrLast(LIST,1));
    AssertSame(lst, inkLLs_getNodeOrLast(LIST,2));
end;

procedure tTests_inkLLs_A1v2_getNodeOrLast.getNodeOrLast_SiX;
var lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    AssertSame(LIST, inkLLs_getNodeOrLast(LIST,0));
    AssertSame(lst, inkLLs_getNodeOrLast(LIST,5));
    AssertSame(lst, inkLLs_getNodeOrLast(LIST,6));
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A1v2_getNodeOrLast);
end.

