%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Elastic Inference public APIs.
-module(aws_elastic_inference).

-export([describe_accelerator_offerings/2,
         describe_accelerator_offerings/3,
         describe_accelerator_types/1,
         describe_accelerator_types/3,
         describe_accelerator_types/4,
         describe_accelerators/2,
         describe_accelerators/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% accelerator_type() :: #{
%%   <<"acceleratorTypeName">> => string(),
%%   <<"memoryInfo">> => memory_info(),
%%   <<"throughputInfo">> => list(key_value_pair()())
%% }
-type accelerator_type() :: #{binary() => any()}.


%% Example:
%% accelerator_type_offering() :: #{
%%   <<"acceleratorType">> => string(),
%%   <<"location">> => string(),
%%   <<"locationType">> => list(any())
%% }
-type accelerator_type_offering() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% describe_accelerator_offerings_request() :: #{
%%   <<"acceleratorTypes">> => list(string()()),
%%   <<"locationType">> := list(any())
%% }
-type describe_accelerator_offerings_request() :: #{binary() => any()}.


%% Example:
%% describe_accelerator_offerings_response() :: #{
%%   <<"acceleratorTypeOfferings">> => list(accelerator_type_offering()())
%% }
-type describe_accelerator_offerings_response() :: #{binary() => any()}.

%% Example:
%% describe_accelerator_types_request() :: #{}
-type describe_accelerator_types_request() :: #{}.


%% Example:
%% describe_accelerator_types_response() :: #{
%%   <<"acceleratorTypes">> => list(accelerator_type()())
%% }
-type describe_accelerator_types_response() :: #{binary() => any()}.


%% Example:
%% describe_accelerators_request() :: #{
%%   <<"acceleratorIds">> => list(string()()),
%%   <<"filters">> => list(filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_accelerators_request() :: #{binary() => any()}.


%% Example:
%% describe_accelerators_response() :: #{
%%   <<"acceleratorSet">> => list(elastic_inference_accelerator()()),
%%   <<"nextToken">> => string()
%% }
-type describe_accelerators_response() :: #{binary() => any()}.


%% Example:
%% elastic_inference_accelerator() :: #{
%%   <<"acceleratorHealth">> => elastic_inference_accelerator_health(),
%%   <<"acceleratorId">> => string(),
%%   <<"acceleratorType">> => string(),
%%   <<"attachedResource">> => string(),
%%   <<"availabilityZone">> => string()
%% }
-type elastic_inference_accelerator() :: #{binary() => any()}.


%% Example:
%% elastic_inference_accelerator_health() :: #{
%%   <<"status">> => string()
%% }
-type elastic_inference_accelerator_health() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% key_value_pair() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => integer()
%% }
-type key_value_pair() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.


%% Example:
%% memory_info() :: #{
%%   <<"sizeInMiB">> => integer()
%% }
-type memory_info() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{}
-type tag_resource_result() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{}
-type untag_resource_result() :: #{}.

-type describe_accelerator_offerings_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception().

-type describe_accelerator_types_errors() ::
    internal_server_exception().

-type describe_accelerators_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception().

-type tag_resource_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception().

-type untag_resource_errors() ::
    resource_not_found_exception() | 
    internal_server_exception() | 
    bad_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Describes the locations in which a given accelerator type or set of types
%% is present in a given region.
-spec describe_accelerator_offerings(aws_client:aws_client(), describe_accelerator_offerings_request()) ->
    {ok, describe_accelerator_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_offerings_errors(), tuple()}.
describe_accelerator_offerings(Client, Input) ->
    describe_accelerator_offerings(Client, Input, []).

-spec describe_accelerator_offerings(aws_client:aws_client(), describe_accelerator_offerings_request(), proplists:proplist()) ->
    {ok, describe_accelerator_offerings_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_offerings_errors(), tuple()}.
describe_accelerator_offerings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-accelerator-offerings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Describes the accelerator types available in a given region, as well as
%% their characteristics, such as memory and throughput.
-spec describe_accelerator_types(aws_client:aws_client()) ->
    {ok, describe_accelerator_types_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_types_errors(), tuple()}.
describe_accelerator_types(Client)
  when is_map(Client) ->
    describe_accelerator_types(Client, #{}, #{}).

-spec describe_accelerator_types(aws_client:aws_client(), map(), map()) ->
    {ok, describe_accelerator_types_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_types_errors(), tuple()}.
describe_accelerator_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_accelerator_types(Client, QueryMap, HeadersMap, []).

-spec describe_accelerator_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_accelerator_types_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerator_types_errors(), tuple()}.
describe_accelerator_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/describe-accelerator-types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Describes information over a provided set of accelerators belonging to an
%% account.
-spec describe_accelerators(aws_client:aws_client(), describe_accelerators_request()) ->
    {ok, describe_accelerators_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerators_errors(), tuple()}.
describe_accelerators(Client, Input) ->
    describe_accelerators(Client, Input, []).

-spec describe_accelerators(aws_client:aws_client(), describe_accelerators_request(), proplists:proplist()) ->
    {ok, describe_accelerators_response(), tuple()} |
    {error, any()} |
    {error, describe_accelerators_errors(), tuple()}.
describe_accelerators(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-accelerators"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Returns all tags of an Elastic Inference Accelerator.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Adds the specified tags to an Elastic Inference Accelerator.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Amazon Elastic Inference is no longer available.
%%
%% Removes the specified tags from an Elastic Inference Accelerator.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"elastic-inference">>},
    Host = build_host(<<"api.elastic-inference">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
