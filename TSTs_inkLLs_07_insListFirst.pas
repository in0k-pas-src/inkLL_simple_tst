unit TSTs_inkLLs_07_insListFirst;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses testregistry,
    uTST_CORE_inkLLs,
     inkLL_simple;

type

 tTests_inkLLs_07_insListFirst= class(tTSTCTC_CORE_inkLLs)
  published
    procedure insListFirst_One_Nil;
    procedure insListFirst_Two_Nil;
    procedure insListFirst_SiX_Nil;
  published
    procedure insListFirst_One_One;
    procedure insListFirst_Two_One;
    procedure insListFirst_SiX_One;
  published
    procedure insListFirst_One_Two;
    procedure insListFirst_Two_Two;
    procedure insListFirst_SiX_Two;
  published
    procedure insListFirst_One_SiX;
    procedure insListFirst_Two_SiX;
    procedure insListFirst_SiX_SiX;
  end;

implementation

procedure tTests_inkLLs_07_insListFirst.insListFirst_One_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_One(lst);
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',1,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_Two_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_Two(lst);
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_SiX_Nil;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_NIL;
    tmq :=TST_list_crt_Six(lst);
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',6,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_07_insListFirst.insListFirst_One_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    tmq :=TST_list_crt_One;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',2,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_Two_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    tmq :=TST_list_crt_Two;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_SiX_One;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_One(lst);
    tmq :=TST_list_crt_Six;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_07_insListFirst.insListFirst_One_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    tmq :=TST_list_crt_One;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',3,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_Two_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    tmq :=TST_list_crt_Two;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',4,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_SiX_Two;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Two(lst);
    tmq :=TST_list_crt_Six;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',8,TST_LIST_Count);
end;

//------------------------------------------------------------------------------

procedure tTests_inkLLs_07_insListFirst.insListFirst_One_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    tmq :=TST_list_crt_One;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',7,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_Two_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    tmq :=TST_list_crt_Two;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',8,TST_LIST_Count);
end;

procedure tTests_inkLLs_07_insListFirst.insListFirst_SiX_SiX;
var tmq:pointer;
    lst:pointer;
begin
    LIST:=TST_list_crt_Six(lst);
    tmq :=TST_list_crt_Six;
    //--
    inkLLs_insListFirst(LIST,tmq );
    //--
    AssertTrue  ('wrong last Node', lst=inkLLs_getLast(LIST));
    AssertEquals('wrong last count',12,TST_LIST_Count);
end;

initialization
    RegisterTest(cTestSuitePath__inkLLs,tTests_inkLLs_07_insListFirst);
end.

