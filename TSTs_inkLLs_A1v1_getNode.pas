unit TSTs_inkLLs_A1v1_getNode;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_A1v1_getNode=class(tTSTCTC_CORE_inkLLs)
  published
    procedure getNode_Nil;
    procedure getNode_One;
    procedure getNode_Two;
    procedure getNode_SiX;
  end;

implementation

procedure tTests_inkLLs_A1v1_getNode.getNode_Nil;
var lst:pointer;
begin
    LIST:=TST_list_crt_NIL(lst);
    //--
    AssertTrue('wrong last', LIST= inkLLs_getNode(LIST,0));
    AssertTrue('wrong last', lst= inkLLs_getNode(LIST,0));
    AssertTrue('wrong last', nil= inkLLs_getNode(LIST,1));
end;

procedure tTests_inkLLs_A1v1_getNode.getNode_One;
var lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    AssertTrue('wrong last', LIST= inkLLs_getNode(LIST,0));
    AssertTrue('wrong last', lst= inkLLs_getNode(LIST,0));
    AssertTrue('wrong last', nil= inkLLs_getNode(LIST,1));
end;


procedure tTests_inkLLs_A1v1_getNode.getNode_Two;
var lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    //--
    AssertTrue('wrong last', LIST= inkLLs_getNode(LIST,0));
    AssertTrue('wrong last', lst= inkLLs_getNode(LIST,1));
    AssertTrue('wrong last', nil= inkLLs_getNode(LIST,2));
end;

procedure tTests_inkLLs_A1v1_getNode.getNode_SiX;
var lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    //--
    AssertTrue('wrong last', LIST= inkLLs_getNode(LIST,0));
    AssertTrue('wrong last', lst= inkLLs_getNode(LIST,5));
    AssertTrue('wrong last', nil= inkLLs_getNode(LIST,6));
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A1v1_getNode);
end.

