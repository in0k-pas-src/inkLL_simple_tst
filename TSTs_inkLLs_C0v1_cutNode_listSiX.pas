unit TSTs_inkLLs_C0v1_cutNode_listSiX;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_C0v1_cutNode;

type

 tTests_inkLLs_C0v1_cutNode_ListSiX=class(tTSTCTC_inkLLs_C0v1_cutNode)
  protected
    procedure SetUp; override;
  published
    procedure cutNodeIndex_0;
    procedure cutNodeIndex_1;
    procedure cutNodeIndex_4;
    procedure cutNodeIndex_5;
  end;

implementation

procedure tTests_inkLLs_C0v1_cutNode_ListSiX.SetUp;
begin
   inherited;
   LIST:=TST_list_crt_Six;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_C0v1_cutNode_ListSiX.cutNodeIndex_0;
begin
   _TEST_(0);
end;

procedure tTests_inkLLs_C0v1_cutNode_ListSiX.cutNodeIndex_1;
begin
   _TEST_(1);
end;

procedure tTests_inkLLs_C0v1_cutNode_ListSiX.cutNodeIndex_4;
begin
   _TEST_(4);
end;

procedure tTests_inkLLs_C0v1_cutNode_ListSiX.cutNodeIndex_5;
begin
   _TEST_(5);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_C0v1_cutNode_ListSiX);
end.

