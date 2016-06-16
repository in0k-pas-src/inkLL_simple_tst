unit TSTs_inkLLs_C0v1_cutNode_listTwo;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_C0v1_cutNode;

type

 tTests_inkLLs_C0v1_cutNode_ListTwo=class(tTSTCTC_inkLLs_C0v1_cutNode)
  protected
    procedure SetUp; override;
  published
    procedure cutNodeIndex_0;
    procedure cutNodeIndex_1;
  end;

implementation

procedure tTests_inkLLs_C0v1_cutNode_ListTwo.SetUp;
begin
   inherited;
   LIST:=TST_list_crt_Two;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_C0v1_cutNode_ListTwo.cutNodeIndex_0;
begin
   _TEST_(0);
end;

procedure tTests_inkLLs_C0v1_cutNode_ListTwo.cutNodeIndex_1;
begin
   _TEST_(1);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_C0v1_cutNode_ListTwo);
end.

