unit TSTs_inkLLs_A3_insNodeIndex_listSiX;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_A3_insNodeIndex;

type

 tTests_inkLLs_A3_insNodeIndex_ListSiX= class(tTSTCTC_inkLLs_A3_insNodeIndex)
  protected
    procedure SetUp; override;
  published
    procedure insNodeIndex_0;
    procedure insNodeIndex_1;
    procedure insNodeIndex_4;
    procedure insNodeIndex_5;
  end;

implementation

procedure tTests_inkLLs_A3_insNodeIndex_ListSiX.SetUp;
begin
    inherited;
    LIST:=TST_list_crt_Six;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_A3_insNodeIndex_ListSiX.insNodeIndex_0;
begin
   _TEST_(0);
end;

procedure tTests_inkLLs_A3_insNodeIndex_ListSiX.insNodeIndex_1;
begin
   _TEST_(1);
end;

procedure tTests_inkLLs_A3_insNodeIndex_ListSiX.insNodeIndex_4;
begin
   _TEST_(4);
end;

procedure tTests_inkLLs_A3_insNodeIndex_ListSiX.insNodeIndex_5;
begin
   _TEST_(5);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A3_insNodeIndex_ListSiX);
end.

