unit uTST_inkLLs_C0v1_cutNode;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses
   uTST_CORE_inkLLs,
    inkLL_simple;

type

 tTSTCTC_inkLLs_C0v1_cutNode= class(tTSTCTC_CORE_inkLLs)
  protected
    procedure _TEST_(index:integer);
  published
    procedure cutNode_OVER;
  end;

implementation

procedure tTSTCTC_inkLLs_C0v1_cutNode.cutNode_OVER;
var cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    //----
    inkLLs_cutNode(LIST,self);
    AssertEquals('wrong lng afte CUT',cnt,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_inkLLs_C0v1_cutNode._TEST_(index:integer);
var tmp:pointer;
    cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    tmp:=inkLLs_getNode(LIST,index);
    //--
    inkLLs_cutNode(LIST,tmp);
    //--
    AssertEquals (cnt-1,TST_LIST_Count);
    AssertFalse  (inkLLs_getIndex(LIST,tmp,cnt));
    //--
   _node_DST(tmp);
end;

end.

