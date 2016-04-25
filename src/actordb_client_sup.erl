-module(actordb_client_sup).

-behaviour(supervisor).

%% API
-export([start_link/0, start_children/1]).

%% Supervisor callbacks
-export([init/1]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
	supervisor:start_link({local, ?MODULE}, ?MODULE, []).

start_children(Pools) ->
	PoolSpecs = lists:map(fun({Name, SizeArgs, WorkerArgs}) ->
		PoolArgs = [{name, {local, Name}},
			{worker_module, actordb_client}] ++ SizeArgs,
		poolboy:child_spec(Name, PoolArgs, WorkerArgs)
	end, Pools),
	[case supervisor:start_child(?MODULE, C) of
		{ok,_} ->
			ok;
		{error,{already_started,_}} ->
			ok
	end || C <- PoolSpecs].

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
	{ok, { {one_for_one, 5, 10}, []} }.

