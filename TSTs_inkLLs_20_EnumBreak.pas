unit TSTs_inkLLs_20_EnumBreak;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 rTests_EnumDATA=record
    owner:tTSTCTC_CORE_inkLLs;
    nbrk :integer;
  end;
 pTests_EnumDATA=^rTests_EnumDATA;

 tTests_inkLLs_20_EnumBreak= class(tTSTCTC_CORE_inkLLs)
  published
    procedure Enumerate_One;
    procedure Enumerate_Two_first;
    procedure Enumerate_Two_last;
    procedure Enumerate_SiX_first;
    procedure Enumerate_SiX_middle;
    procedure Enumerate_SiX_last;
  end;

implementation

function _Enum_FNK_(const Data:pointer; const NODE:pointer):boolean;
begin
    with pTests_EnumDATA(DATA)^ do begin
      result:= nbrk<>owner.TST_node_Namber(NODE);
    end;
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_20_EnumBreak.Enumerate_One;
var lst:pointer;
    bbb:integer;
    ddd:rTests_EnumDATA;
begin
    LIST:=TST_list_crt_One(lst);
    bbb :=0;
    ddd.owner :=SELF;
    ddd.nbrk  :=bbb;
    //--
    lst:=inkLLs_Enumerate(LIST,@ddd,@_Enum_FNK_);
    //--
    AssertNOTNull('wrong enum stop' , lst);
    AssertEquals ('wrong enum count', TST_node_Namber(lst), bbb);
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

procedure tTests_inkLLs_20_EnumBreak.Enumerate_Two_first;
var lst:pointer;
    bbb:integer;
    ddd:rTests_EnumDATA;
begin
    LIST:=TST_list_crt_Two(lst);
    bbb :=0;
    ddd.owner :=SELF;
    ddd.nbrk  :=bbb;
    //--
    lst:=inkLLs_Enumerate(LIST,@ddd,@_Enum_FNK_);
    //--
    AssertNOTNull('wrong enum stop' , lst);
    AssertEquals ('wrong enum count', TST_node_Namber(lst), bbb);
end;

procedure tTests_inkLLs_20_EnumBreak.Enumerate_Two_last;
var lst:pointer;
    bbb:integer;
    ddd:rTests_EnumDATA;
begin
    LIST:=TST_list_crt_Two(lst);
    bbb :=1;
    ddd.owner :=SELF;
    ddd.nbrk  :=bbb;
    //--
    lst:=inkLLs_Enumerate(LIST,@ddd,@_Enum_FNK_);
    //--
    AssertNOTNull('wrong enum stop' , lst);
    AssertEquals ('wrong enum count', TST_node_Namber(lst), bbb);
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

procedure tTests_inkLLs_20_EnumBreak.Enumerate_SiX_first;
var lst:pointer;
    bbb:integer;
    ddd:rTests_EnumDATA;
begin
    LIST:=TST_list_crt_Six(lst);
    bbb :=0;
    ddd.owner :=SELF;
    ddd.nbrk  :=bbb;
    //--
    lst:=inkLLs_Enumerate(LIST,@ddd,@_Enum_FNK_);
    //--
    AssertNOTNull('wrong enum stop' , lst);
    AssertEquals ('wrong enum count', TST_node_Namber(lst), bbb);
end;

procedure tTests_inkLLs_20_EnumBreak.Enumerate_SiX_middle;
var lst:pointer;
    bbb:integer;
    ddd:rTests_EnumDATA;
begin
    LIST:=TST_list_crt_Six(lst);
    bbb :=3;
    ddd.owner :=SELF;
    ddd.nbrk  :=bbb;
    //--
    lst:=inkLLs_Enumerate(LIST,@ddd,@_Enum_FNK_);
    //--
    AssertNOTNull('wrong enum stop' , lst);
    AssertEquals ('wrong enum count', TST_node_Namber(lst), bbb);
end;

procedure tTests_inkLLs_20_EnumBreak.Enumerate_SiX_last;
var lst:pointer;
    bbb:integer;
    ddd:rTests_EnumDATA;
begin
    LIST:=TST_list_crt_Six(lst);
    bbb :=TST_LIST_Count-1;
    ddd.owner :=SELF;
    ddd.nbrk  :=bbb;
    //--
    lst:=inkLLs_Enumerate(LIST,@ddd,@_Enum_FNK_);
    //--
    AssertNOTNull('wrong enum stop' , lst);
    AssertEquals ('wrong enum count', TST_node_Namber(lst), bbb);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_20_EnumBreak);
end.

