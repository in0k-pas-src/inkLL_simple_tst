unit TSTs_inkLLs_A3_insNodeIndex_listNIL;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_A3_insNodeIndex;

type

 tTests_inkLLs_A3_insNodeIndex_ListNIL= class(tTSTCTC_inkLLs_A3_insNodeIndex)
  published
    procedure insNodeIndex_0;
  end;

implementation

procedure tTests_inkLLs_A3_insNodeIndex_ListNIL.insNodeIndex_0;
begin
   _TEST_(0);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A3_insNodeIndex_ListNIL);
end.

