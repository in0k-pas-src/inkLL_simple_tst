unit TSTs_inkLLs_09v2_insListLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_09v2_insListLast=class(tTSTCTC_CORE_inkLLs)
  published
    procedure insListLastCount_One_Nil;
    procedure insListLastCount_Two_Nil;
    procedure insListLastCount_SiX_Nil;
  published
    procedure insListLastCount_One_One;
    procedure insListLastCount_Two_One;
    procedure insListLastCount_SiX_One;
  published
    procedure insListLastCount_One_Two;
    procedure insListLastCount_Two_Two;
    procedure insListLastCount_SiX_Two;
  published
    procedure insListLastCount_One_SiX;
    procedure insListLastCount_Two_SiX;
    procedure insListLastCount_SiX_SiX;
  end;

implementation

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_One_Nil;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong new First' ,LIST=tmq);
    AssertTrue  ('wrong last Node' ,lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',1  ,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_Two_Nil;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong new First' ,LIST=tmq);
    AssertTrue  ('wrong last Node' ,lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2  ,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_SiX_Nil;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong new First' ,LIST=tmq);
    AssertTrue  ('wrong last Node' ,lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',6  ,cnt);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_One_One;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_One;
    tmq :=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_Two_One;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_One;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_SiX_One;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_One;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,cnt);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_One_Two;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Two;
    tmq:=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_Two_Two;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Two;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',4,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_SiX_Two;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Two;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',8,cnt);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_One_SiX;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Six;
    tmq:=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_Two_SiX;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Six;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',8,cnt);
end;

procedure tTests_inkLLs_09v2_insListLast.insListLastCount_SiX_SiX;
var tmq:pointer;
    lst:pointer;
    cnt:NativeUint;
begin
    LIST:=TST_list_crt_Six;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq,cnt);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',12,cnt);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_09v2_insListLast);
end.

