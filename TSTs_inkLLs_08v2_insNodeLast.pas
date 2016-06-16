unit TSTs_inkLLs_08v2_insNodeLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_08v2_insNodeLast=class(tTSTCTC_CORE_inkLLs)
  published
    procedure insNodeLastCount_Nil;
    procedure insNodeLastCount_One;
    procedure insNodeLastCount_Two;
    procedure insNodeLastCount_SiX;
  end;

implementation

procedure tTests_inkLLs_08v2_insNodeLast.insNodeLastCount_Nil;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_NIL;
    lst:=_node_CRT(222,nil);
    //--
    inkLLs_insNodeLast(LIST,lst,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',1,cnt);
end;

procedure tTests_inkLLs_08v2_insNodeLast.insNodeLastCount_One;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_One;
    lst:=_node_CRT(222,nil);
    //--
    inkLLs_insNodeLast(LIST,lst,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2,cnt);
end;

procedure tTests_inkLLs_08v2_insNodeLast.insNodeLastCount_Two;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Two;
    lst:=_node_CRT(222,nil);
    //--
    inkLLs_insNodeLast(LIST,lst,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,cnt);
end;

procedure tTests_inkLLs_08v2_insNodeLast.insNodeLastCount_SiX;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Six;
    lst:=_node_CRT(222,nil);
    //--
    inkLLs_insNodeLast(LIST,lst,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,cnt);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_08v2_insNodeLast);
end.

