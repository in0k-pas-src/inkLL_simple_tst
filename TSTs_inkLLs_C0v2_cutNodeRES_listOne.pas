unit TSTs_inkLLs_C0v2_cutNodeRES_listOne;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_C0v2_cutNode;

type

 tTests_inkLLs_C0v2_cutNodeRES_ListOne=class(tTSTCTC_inkLLs_C0v2_cutNode)
  protected
    procedure SetUp; override;
  published
    procedure cutNodeIndex_0;
  end;

implementation

procedure tTests_inkLLs_C0v2_cutNodeRES_ListOne.SetUp;
begin
   inherited;
   LIST:=TST_list_crt_One;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_C0v2_cutNodeRES_ListOne.cutNodeIndex_0;
begin
   _TEST_(0);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_C0v2_cutNodeRES_ListOne);
end.

