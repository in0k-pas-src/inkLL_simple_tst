unit uTST_inkLLs_C0v2_cutNode;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses
   uTST_CORE_inkLLs,
    inkLL_simple;

type

 tTSTCTC_inkLLs_C0v2_cutNode= class(tTSTCTC_CORE_inkLLs)
  protected
    procedure SetUp;    override;
    procedure TearDown; override;
  protected
    procedure _TEST_(index:integer);
  published
    procedure cutNode_OVER;
  end;

implementation

procedure tTSTCTC_inkLLs_C0v2_cutNode.SetUp;
begin
    inherited;
end;

procedure tTSTCTC_inkLLs_C0v2_cutNode.TearDown;
begin
    inherited;
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_inkLLs_C0v2_cutNode.cutNode_OVER;
var cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    //----
    AssertFalse (inkLLs_cutNodeRes(LIST,self));
    AssertEquals(cnt,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_inkLLs_C0v2_cutNode._TEST_(index:integer);
var tmp:pointer;
    cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    tmp:=inkLLs_getNode(LIST,index);
    //--
    AssertTRUE   (inkLLs_cutNodeRes(LIST,tmp));
    //--
    AssertEquals (cnt-1,inkLLs_Count  (LIST));
    AssertFalse  (inkLLs_getIndex(LIST,tmp,cnt));
    //--
   _node_DST(tmp);
end;

end.

