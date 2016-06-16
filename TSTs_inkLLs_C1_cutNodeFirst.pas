unit TSTs_inkLLs_C1_cutNodeFirst;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_C1_cutNodeFirst=class(tTSTCTC_CORE_inkLLs)
  published
    procedure cutNodeFirst_One;
    procedure cutNodeFirst_Two;
    procedure cutNodeFirst_SiX;
  end;

implementation

procedure tTests_inkLLs_C1_cutNodeFirst.cutNodeFirst_One;
var lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    lst:=inkLLs_cutNodeFirst(LIST);
    //--
    AssertNotNull('cuted is NIL',lst);
    AssertEquals ('wrong number', 0,TST_LIST_Count);
     //--
   _node_DST(lst);
end;

procedure tTests_inkLLs_C1_cutNodeFirst.cutNodeFirst_Two;
var lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    //--
    lst:=inkLLs_cutNodeFirst(LIST);
    //--
    AssertNotNull('cuted is NIL',lst);
    AssertEquals ('wrong number', 1,TST_LIST_Count);
     //--
   _node_DST(lst);
end;

procedure tTests_inkLLs_C1_cutNodeFirst.cutNodeFirst_SiX;
var lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    //--
    lst:=inkLLs_cutNodeFirst(LIST);
    //--
    AssertNotNull('cuted is NIL',lst);
    AssertEquals ('wrong number', 5,TST_LIST_Count);
    //--
   _node_DST(lst);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_C1_cutNodeFirst);
end.

