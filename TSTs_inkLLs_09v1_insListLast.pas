unit TSTs_inkLLs_09v1_insListLast;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_09v1_insListLast=class(tTSTCTC_CORE_inkLLs)
  published
    procedure insListLast_One_Nil;
    procedure insListLast_Two_Nil;
    procedure insListLast_SiX_Nil;
  published
    procedure insListLast_One_One;
    procedure insListLast_Two_One;
    procedure insListLast_SiX_One;
  published
    procedure insListLast_One_Two;
    procedure insListLast_Two_Two;
    procedure insListLast_SiX_Two;
  published
    procedure insListLast_One_SiX;
    procedure insListLast_Two_SiX;
    procedure insListLast_SiX_SiX;
  end;

implementation

procedure tTests_inkLLs_09v1_insListLast.insListLast_One_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong new First' ,LIST=tmq);
    AssertTrue  ('wrong last Node' ,lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',1  ,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_Two_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong new First' ,LIST=tmq);
    AssertTrue  ('wrong last Node' ,lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2  ,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_SiX_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong new First' ,LIST=tmq);
    AssertTrue  ('wrong last Node' ,lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',6  ,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_09v1_insListLast.insListLast_One_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One;
    tmq:=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_Two_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_SiX_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_09v1_insListLast.insListLast_One_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two;
    tmq:=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_Two_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',4,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_SiX_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',8,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_09v1_insListLast.insListLast_One_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six;
    tmq:=TST_list_crt_One(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_Two_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six;
    tmq:=TST_list_crt_Two(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',8,TST_LIST_Count);
end;

procedure tTests_inkLLs_09v1_insListLast.insListLast_SiX_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six;
    tmq:=TST_list_crt_Six(lst);
    //--
    inkLLs_insListLast(LIST,tmq);
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',12,TST_LIST_Count);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_09v1_insListLast);
end.

