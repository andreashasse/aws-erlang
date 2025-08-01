%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Bedrock Data Automation Runtime
-module(aws_bedrock_data_automation_runtime).

-export([get_data_automation_status/2,
         get_data_automation_status/3,
         invoke_data_automation_async/2,
         invoke_data_automation_async/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% asset_processing_configuration() :: #{
%%   <<"video">> => video_asset_processing_configuration()
%% }
-type asset_processing_configuration() :: #{binary() => any()}.

%% Example:
%% blueprint() :: #{
%%   <<"blueprintArn">> => string(),
%%   <<"stage">> => list(any()),
%%   <<"version">> => string()
%% }
-type blueprint() :: #{binary() => any()}.

%% Example:
%% data_automation_configuration() :: #{
%%   <<"dataAutomationProjectArn">> => string(),
%%   <<"stage">> => list(any())
%% }
-type data_automation_configuration() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsEncryptionContext">> => map(),
%%   <<"kmsKeyId">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% event_bridge_configuration() :: #{
%%   <<"eventBridgeEnabled">> => [boolean()]
%% }
-type event_bridge_configuration() :: #{binary() => any()}.

%% Example:
%% get_data_automation_status_request() :: #{

%% }
-type get_data_automation_status_request() :: #{binary() => any()}.

%% Example:
%% get_data_automation_status_response() :: #{
%%   <<"errorMessage">> => [string()],
%%   <<"errorType">> => [string()],
%%   <<"outputConfiguration">> => output_configuration(),
%%   <<"status">> => list(any())
%% }
-type get_data_automation_status_response() :: #{binary() => any()}.

%% Example:
%% input_configuration() :: #{
%%   <<"assetProcessingConfiguration">> => asset_processing_configuration(),
%%   <<"s3Uri">> => string()
%% }
-type input_configuration() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% invoke_data_automation_async_request() :: #{
%%   <<"blueprints">> => list(blueprint()),
%%   <<"clientToken">> => string(),
%%   <<"dataAutomationConfiguration">> => data_automation_configuration(),
%%   <<"dataAutomationProfileArn">> := string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"inputConfiguration">> := input_configuration(),
%%   <<"notificationConfiguration">> => notification_configuration(),
%%   <<"outputConfiguration">> := output_configuration(),
%%   <<"tags">> => list(tag())
%% }
-type invoke_data_automation_async_request() :: #{binary() => any()}.

%% Example:
%% invoke_data_automation_async_response() :: #{
%%   <<"invocationArn">> => string()
%% }
-type invoke_data_automation_async_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"eventBridgeConfiguration">> => event_bridge_configuration()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% output_configuration() :: #{
%%   <<"s3Uri">> => string()
%% }
-type output_configuration() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% timestamp_segment() :: #{
%%   <<"endTimeMillis">> => [float()],
%%   <<"startTimeMillis">> => [float()]
%% }
-type timestamp_segment() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% video_asset_processing_configuration() :: #{
%%   <<"segmentConfiguration">> => list()
%% }
-type video_asset_processing_configuration() :: #{binary() => any()}.

-type get_data_automation_status_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type invoke_data_automation_async_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc API used to get data automation status.
-spec get_data_automation_status(aws_client:aws_client(), get_data_automation_status_request()) ->
    {ok, get_data_automation_status_response(), tuple()} |
    {error, any()} |
    {error, get_data_automation_status_errors(), tuple()}.
get_data_automation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_automation_status(Client, Input, []).

-spec get_data_automation_status(aws_client:aws_client(), get_data_automation_status_request(), proplists:proplist()) ->
    {ok, get_data_automation_status_response(), tuple()} |
    {error, any()} |
    {error, get_data_automation_status_errors(), tuple()}.
get_data_automation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataAutomationStatus">>, Input, Options).

%% @doc Async API: Invoke data automation.
-spec invoke_data_automation_async(aws_client:aws_client(), invoke_data_automation_async_request()) ->
    {ok, invoke_data_automation_async_response(), tuple()} |
    {error, any()} |
    {error, invoke_data_automation_async_errors(), tuple()}.
invoke_data_automation_async(Client, Input)
  when is_map(Client), is_map(Input) ->
    invoke_data_automation_async(Client, Input, []).

-spec invoke_data_automation_async(aws_client:aws_client(), invoke_data_automation_async_request(), proplists:proplist()) ->
    {ok, invoke_data_automation_async_response(), tuple()} |
    {error, any()} |
    {error, invoke_data_automation_async_errors(), tuple()}.
invoke_data_automation_async(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InvokeDataAutomationAsync">>, Input, Options).

%% @doc List tags for an Amazon Bedrock Data Automation resource
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Tag an Amazon Bedrock Data Automation resource
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Untag an Amazon Bedrock Data Automation resource
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock-data-automation-runtime">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonBedrockKeystoneRuntimeService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload, [{uri_encode_path, true}]),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
