unit TSTs_inkLLs_A2_getIndex;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_A2_getIndex=class(tTSTCTC_CORE_inkLLs)
  published
    procedure getIndexNode_Nil;
    procedure getIndexNode_One;
    procedure getIndexNode_Two;
    procedure getIndexNode_SiX;
  end;

implementation

procedure tTests_inkLLs_A2_getIndex.getIndexNode_Nil;
var lst:pointer;
    idx:longword;
    rlt:boolean;
begin
    LIST:=TST_list_crt_NIL(lst);
    //--
    rlt:=inkLLs_getIndex(LIST,lst,idx);
    //--
    AssertFalse ('found?', rlt);
end;

procedure tTests_inkLLs_A2_getIndex.getIndexNode_One;
var lst:pointer;
    idx:longword;
    rlt:boolean;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    rlt:=inkLLs_getIndex(LIST,lst,idx);
    //--
    AssertTrue('not found?', rlt);
    AssertEquals('wrong number', 0,idx);
end;

procedure tTests_inkLLs_A2_getIndex.getIndexNode_Two;
var lst:pointer;
    idx:longword;
    rlt:boolean;
begin
    LIST:=TST_list_crt_Two(lst);
    //--
    rlt:=inkLLs_getIndex(LIST,lst,idx);
    //--
    AssertTrue('not founuTest_inkLLs_CFv1_cutNodeLastd?', rlt);
    AssertEquals('wrong number', 1,idx);
end;

procedure tTests_inkLLs_A2_getIndex.getIndexNode_SiX;
var lst:pointer;
    idx:longword;
    rlt:boolean;
begin
    LIST:=TST_list_crt_Six(lst);
    //--
    rlt:=inkLLs_getIndex(LIST,lst,idx);
    //--
    AssertTrue('not found?', rlt);
    AssertEquals('wrong number', 5,idx);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A2_getIndex);
end.

