unit uTST_inkLLs_A3_insNodeIndex;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTSTCTC_inkLLs_A3_insNodeIndex= class(tTSTCTC_CORE_inkLLs)
  protected
    procedure _TEST_(index:integer);
  published
    procedure insNodeIndex_OVER;
  end;

implementation

procedure tTSTCTC_inkLLs_A3_insNodeIndex.insNodeIndex_OVER;
var tmp:pointer;
    cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    tmp:=_node_CRT(222,nil);
    //--
    inkLLs_insNodeIndex(LIST,tmp,999);
    inc(cnt);
    AssertEquals (cnt,TST_LIST_Count);
    AssertSame   (tmp,inkLLs_getNode(LIST,cnt-1));
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_inkLLs_A3_insNodeIndex._TEST_(index:integer);
var tmp:pointer;
    cnt:NativeUint;
begin
    cnt:=TST_LIST_Count;
    tmp:=_node_CRT(222,nil);
    //--
    inkLLs_insNodeIndex(LIST,tmp,index);
    //--
    inc(cnt);
    AssertEquals (cnt,TST_LIST_Count);
    AssertSame   (tmp,inkLLs_getNode(LIST,index));
end;

end.

