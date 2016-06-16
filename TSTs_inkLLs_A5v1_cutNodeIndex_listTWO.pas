unit TSTs_inkLLs_A5v1_cutNodeIndex_listTWO;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_A5_cutNodeIndex;

type

 tTests_inkLLs_A5v1_insNodeIndex_ListTWO= class(tTSTCTC_inkLLs_A5_cutNodeIndex)
  protected
    procedure SetUp; override;
  published
    procedure cutNodeIndex_0;
    procedure cutNodeIndex_1;
  end;

implementation

procedure tTests_inkLLs_A5v1_insNodeIndex_ListTWO.SetUp;
begin
   inherited;
   LIST:=TST_list_crt_Two;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_A5v1_insNodeIndex_ListTWO.cutNodeIndex_0;
begin
   _TEST_(0);
end;

procedure tTests_inkLLs_A5v1_insNodeIndex_ListTWO.cutNodeIndex_1;
begin
   _TEST_(1);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A5v1_insNodeIndex_ListTWO);
end.

