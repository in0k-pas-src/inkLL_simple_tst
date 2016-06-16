unit uTST_CORE_inkLLs;
(*$define testCase -- пометка для gitExtensions-Statickics что это файл ТЕСТ
  [Test
*)
{$mode objfpc}{$H+}
interface

uses uTST_CORE_inkLL_node;

const
 cTestSuitePath__inkLLs='ink Linked List Single';

type

  {[Type TeST Core Test Case] САМ РОДОначальник тестов}
 tTSTCTC_CORE_inkLLs=class(tTSTCTC_CORE_inkLL)
  protected
    procedure _list_DESTOY  (var   lst:pTST_inkLL_Node);                                           override;
    function  _list_Create  (const Count:NativeInt;     out last:pTST_inkLL_Node):pTST_inkLL_Node; override;
    function  _list_clcCount(const lst:pTST_inkLL_Node; out last:pTST_inkLL_Node):NativeInt;       override;
  protected
    function  TST_list_crt_NIL(out last:pointer):pointer;   overload;
    function  TST_list_crt_One(out last:pointer):pointer;   overload;
    function  TST_list_crt_Two(out last:pointer):pointer;   overload;
    function  TST_list_crt_Six(out last:pointer):pointer;   overload;
    function  TST_list_crt_NIL:pointer;                     overload;
    function  TST_list_crt_One:pointer;                     overload;
    function  TST_list_crt_Two:pointer;                     overload;
    function  TST_list_crt_Six:pointer;                     overload;
  protected
    function  TST_list_clcCount(const lst:pTST_inkLL_Node):NativeInt;
    function  TST_LIST_Count:NativeInt;
  protected
    procedure SetUp;    override;
    procedure TearDown; override;
  end;

implementation

procedure tTSTCTC_CORE_inkLLs.SetUp;
begin
    inherited;
end;

procedure tTSTCTC_CORE_inkLLs.TearDown;
begin
    inherited;
end;

//------------------------------------------------------------------------------

procedure tTSTCTC_CORE_inkLLs._list_DESTOY(var lst:pTST_inkLL_Node);
var tmp:pTST_inkLL_Node;
begin
    if lst<>nil then begin
        tmp:=lst;
        while tmp<>nil do begin
          lst:=tmp^.next;
         _node_DST(tmp);
          //--
          tmp:=lst;
        end;
    end;
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function tTSTCTC_CORE_inkLLs._list_Create(const Count:NativeInt; out last:pTST_inkLL_Node):pTST_inkLL_Node;
var i:NativeInt;
begin
    result:=NIL;
    last  :=NIL;
    if Count>0 then begin;
        last  :=_node_CRT(Count-1,NIL);
        result:=last;
        if Count>1 then begin
            for i:= (Count-2) downto (0) do begin
               result:=_node_CRT(i,result);
            end;
        end;
    end;
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function tTSTCTC_CORE_inkLLs._list_clcCount(const lst:pTST_inkLL_Node; out last:pTST_inkLL_Node):NativeInt;
begin
    result:=0;
    last  :=nil;
    if lst<>nil then begin
        result:=1;
        last  :=lst;
        while pTST_inkLL_Node(last)^.next<>nil do begin
            inc (result);
            last:=pTST_inkLL_Node(last)^.next;
        end;
    end;
end;

//------------------------------------------------------------------------------

function tTSTCTC_CORE_inkLLs.TST_list_crt_NIL(out last:pointer):pointer;
begin
    result:=_list_Create(0,last);
end;

function tTSTCTC_CORE_inkLLs.TST_list_crt_One(out last:pointer):pointer;
begin
    result:=_list_Create(1,last);
end;

function tTSTCTC_CORE_inkLLs.TST_list_crt_Two(out last:pointer):pointer;
begin
    result:=_list_Create(2,last);
end;

function tTSTCTC_CORE_inkLLs.TST_list_crt_Six(out last:pointer):pointer;
begin
    result:=_list_Create(6,last);
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function tTSTCTC_CORE_inkLLs.TST_list_crt_NIL:pointer;
var lst:pointer;
begin
    result:=TST_list_crt_NIL(lst);
end;

function tTSTCTC_CORE_inkLLs.TST_list_crt_One:pointer;
var lst:pointer;
begin
    result:=TST_list_crt_One(lst);
end;

function tTSTCTC_CORE_inkLLs.TST_list_crt_Two:pointer;
var lst:pointer;
begin
    result:=TST_list_crt_Two(lst);
end;

function tTSTCTC_CORE_inkLLs.TST_list_crt_Six:pointer;
var lst:pointer;
begin
    result:=TST_list_crt_Six(lst);
end;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function tTSTCTC_CORE_inkLLs.TST_list_clcCount(const lst:pTST_inkLL_Node):NativeInt;
var l:pointer;
begin
    result:=_list_clcCount(lst,l);
end;

function tTSTCTC_CORE_inkLLs.TST_LIST_Count:NativeInt;
var l:pointer;
begin
    result:=_list_clcCount(LIST,l);
end;

end.

