unit uTST_inkLLs_A5_cutNodeIndex;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTSTCTC_inkLLs_A5_cutNodeIndex= class(tTSTCTC_CORE_inkLLs)
  protected
    cuted:pointer;
  protected
    procedure SetUp;    override;
    procedure TearDown; override;
  protected
    procedure _TEST_(index:integer);
  published
    procedure cutNodeIndex_OVER;
  end;

implementation

procedure tTSTCTC_inkLLs_A5_cutNodeIndex.SetUp;
begin
    inherited;
    cuted:=nil;
end;

procedure tTSTCTC_inkLLs_A5_cutNodeIndex.TearDown;
begin
    inherited;
    if cuted<>nil then _node_DST(cuted);
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_inkLLs_A5_cutNodeIndex.cutNodeIndex_OVER;
var cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    //--
    cuted:=inkLLs_cutNodeIndex(LIST,999);
    //--
    AssertEquals (cnt, TST_LIST_Count);
    AssertNull   (cuted);
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_inkLLs_A5_cutNodeIndex._TEST_(index:integer);
var tmq:pointer;
    cnt:NativeUint;
begin
    cnt:= TST_LIST_Count;
    tmq:= inkLLs_getNode(LIST,index);
    //--
    cuted:=inkLLs_cutNodeIndex(LIST,index);
    //--
    AssertEquals (cnt-1, TST_LIST_Count);
    AssertNotNull(cuted);
    AssertSame   (tmq,cuted);
end;

end.

