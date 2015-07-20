%%
%% Autogenerated by Thrift Compiler (0.9.2)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(adbt_thrift).
-behaviour(thrift_service).


-include("adbt_thrift.hrl").

-export([struct_info/1, function_info/2]).

struct_info(_) -> erlang:error(function_clause).
%%% interface
% protocolVersion(This)
function_info('protocolVersion', params_type) ->
  {struct, []}
;
function_info('protocolVersion', reply_type) ->
  string;
function_info('protocolVersion', exceptions) ->
  {struct, []}
;
% login(This, Username, Password)
function_info('login', params_type) ->
  {struct, [{1, string},
          {2, string}]}
;
function_info('login', reply_type) ->
  {struct, {'adbt_types', 'LoginResult'}};
function_info('login', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_config(This, Sql)
function_info('exec_config', params_type) ->
  {struct, [{1, string}]}
;
function_info('exec_config', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_config', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_single(This, Actorname, Actortype, Sql, Flags)
function_info('exec_single', params_type) ->
  {struct, [{1, string},
          {2, string},
          {3, string},
          {4, {list, string}}]}
;
function_info('exec_single', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_single', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_single_prepare(This, Actorname, Actortype, Sql, Flags, Bindingvals)
function_info('exec_single_prepare', params_type) ->
  {struct, [{1, string},
          {2, string},
          {3, string},
          {4, {list, string}},
          {5, {list, {list, {struct, {'adbt_types', 'Val'}}}}}]}
;
function_info('exec_single_prepare', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_single_prepare', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_multi(This, Actors, Actortype, Sql, Flags)
function_info('exec_multi', params_type) ->
  {struct, [{1, {list, string}},
          {2, string},
          {3, string},
          {4, {list, string}}]}
;
function_info('exec_multi', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_multi', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_multi_prepare(This, Actors, Actortype, Sql, Flags, Bindingvals)
function_info('exec_multi_prepare', params_type) ->
  {struct, [{1, {list, string}},
          {2, string},
          {3, string},
          {4, {list, string}},
          {5, {list, {list, {struct, {'adbt_types', 'Val'}}}}}]}
;
function_info('exec_multi_prepare', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_multi_prepare', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_all(This, Actortype, Sql, Flags)
function_info('exec_all', params_type) ->
  {struct, [{1, string},
          {2, string},
          {3, {list, string}}]}
;
function_info('exec_all', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_all', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_all_prepare(This, Actortype, Sql, Flags, Bindingvals)
function_info('exec_all_prepare', params_type) ->
  {struct, [{1, string},
          {2, string},
          {3, {list, string}},
          {4, {list, {list, {struct, {'adbt_types', 'Val'}}}}}]}
;
function_info('exec_all_prepare', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_all_prepare', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_sql(This, Sql)
function_info('exec_sql', params_type) ->
  {struct, [{1, string}]}
;
function_info('exec_sql', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_sql', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
% exec_sql_prepare(This, Sql, Bindingvals)
function_info('exec_sql_prepare', params_type) ->
  {struct, [{1, string},
          {2, {list, {list, {struct, {'adbt_types', 'Val'}}}}}]}
;
function_info('exec_sql_prepare', reply_type) ->
  {struct, {'adbt_types', 'Result'}};
function_info('exec_sql_prepare', exceptions) ->
  {struct, [{1, {struct, {'adbt_types', 'InvalidRequestException'}}}]}
;
function_info(_Func, _Info) -> erlang:error(function_clause).

