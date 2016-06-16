unit TSTs_inkLLs_CFv2_cutNodeLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_CFv2_cutNodeLast=class(tTSTCTC_CORE_inkLLs)
  published
    procedure cutNodeLastCNT_One;
    procedure cutNodeLastCNT_Two;
    procedure cutNodeLastCNT_SiX;
  end;

implementation

procedure tTests_inkLLs_CFv2_cutNodeLast.cutNodeLastCNT_One;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_One(lst);
    //--
    lst:=inkLLs_cutNodeLast(LIST,cnt);
    //--
    AssertNotNull('cuted is NIL',lst);
    AssertEquals ('wrong number', 0,cnt);
    //--
   _node_DST(lst);
end;

procedure tTests_inkLLs_CFv2_cutNodeLast.cutNodeLastCNT_Two;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Two(lst);
    //--
    lst:=inkLLs_cutNodeLast(LIST,cnt);
    //--
    AssertNotNull('cuted is NIL',lst);
    AssertEquals ('wrong number', 1,cnt);
    //--
   _node_DST(lst);
end;

procedure tTests_inkLLs_CFv2_cutNodeLast.cutNodeLastCNT_SiX;
var lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Six(lst);
    //--
    lst:=inkLLs_cutNodeLast(LIST,cnt);
    //--
    AssertNotNull('cuted is NIL',lst);
    AssertEquals ('wrong number', 5,cnt);
    //--
   _node_DST(lst);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_CFv2_cutNodeLast);
end.

