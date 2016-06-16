unit TSTs_inkLLs_08v1_insNodeLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_08v1_insNodeLast=class(tTSTCTC_CORE_inkLLs)
  published
    procedure insNodeLast_Nil;
    procedure insNodeLast_One;
    procedure insNodeLast_Two;
    procedure insNodeLast_SiX;
  end;

implementation

procedure tTests_inkLLs_08v1_insNodeLast.insNodeLast_Nil;
var lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    lst:=_node_CRT(222,NIL);
    //--
    inkLLs_insNodeLast(LIST,lst);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',1,TST_LIST_Count);
end;

procedure tTests_inkLLs_08v1_insNodeLast.insNodeLast_One;
var lst:pointer;
begin
    LIST:=TST_list_crt_One;
    lst:=_node_CRT(222,NIL);
    //--
    inkLLs_insNodeLast(LIST,lst);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2,TST_LIST_Count);
end;

procedure tTests_inkLLs_08v1_insNodeLast.insNodeLast_Two;
var lst:pointer;
begin
    LIST:=TST_list_crt_Two;
    lst:=_node_CRT(222,NIL);
    //--
    inkLLs_insNodeLast(LIST,lst);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,TST_LIST_Count);
end;

procedure tTests_inkLLs_08v1_insNodeLast.insNodeLast_SiX;
var lst:pointer;
begin
    LIST:=TST_list_crt_Six;
    lst:=_node_CRT(222,NIL);
    //--
    inkLLs_insNodeLast(LIST,lst);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,TST_LIST_Count);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_08v1_insNodeLast);
end.

