unit TSTs_inkLLs_A3_insNodeIndex_listONE;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_A3_insNodeIndex;

type

 tTests_inkLLs_A3_insNodeIndex_ListONE= class(tTSTCTC_inkLLs_A3_insNodeIndex)
  protected
    procedure SetUp; override;
  published
    procedure insNodeIndex_0;
    procedure insNodeIndex_1;
  end;

implementation

procedure tTests_inkLLs_A3_insNodeIndex_ListONE.SetUp;
begin
    inherited;
    LIST:=TST_list_crt_One;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_A3_insNodeIndex_ListONE.insNodeIndex_0;
begin
   _TEST_(0);
end;

procedure tTests_inkLLs_A3_insNodeIndex_ListONE.insNodeIndex_1;
begin
   _TEST_(1);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A3_insNodeIndex_ListONE);
end.

