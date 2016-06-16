unit TSTs_inkLLs_A5v1_cutNodeIndex_listONE;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
    uTST_inkLLs_A5_cutNodeIndex,
     inkLL_simple;

type

 tTests_inkLLs_A5v1_insNodeIndex_ListONE=class(tTSTCTC_inkLLs_A5_cutNodeIndex)
  protected
    procedure SetUp; override;
  published
    procedure cutNodeIndex_0;
  end;

implementation

procedure tTests_inkLLs_A5v1_insNodeIndex_ListONE.SetUp;
begin
   inherited;
   LIST:=TST_list_crt_One;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_A5v1_insNodeIndex_ListONE.cutNodeIndex_0;
var tmp:pointer;
begin
    tmp  :=inkLLs_getNode(LIST,0);
    //--
    cuted:=inkLLs_cutNodeIndex(LIST,0);
    //--
    AssertNull   (LIST);
    AssertNotNull(cuted);
    AssertSame   (tmp,cuted);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_A5v1_insNodeIndex_ListONE);
end.

