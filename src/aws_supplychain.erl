%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% AWS Supply Chain is a cloud-based application that works with your
%% enterprise resource planning (ERP) and supply chain management systems.
%%
%% Using AWS Supply Chain, you can connect and extract your inventory,
%% supply, and demand related data from existing ERP or supply chain systems
%% into a single data model.
%%
%% The AWS Supply Chain API supports configuration data import for Supply
%% Planning.
%%
%% All AWS Supply chain API operations are Amazon-authenticated and
%% certificate-signed. They not only require the use of the AWS SDK, but also
%% allow for the exclusive use of AWS Identity and Access Management users
%% and roles to help facilitate access, trust, and permission policies.
-module(aws_supplychain).

-export([create_bill_of_materials_import_job/3,
         create_bill_of_materials_import_job/4,
         create_data_integration_flow/4,
         create_data_integration_flow/5,
         create_data_lake_dataset/5,
         create_data_lake_dataset/6,
         delete_data_integration_flow/4,
         delete_data_integration_flow/5,
         delete_data_lake_dataset/5,
         delete_data_lake_dataset/6,
         get_bill_of_materials_import_job/3,
         get_bill_of_materials_import_job/5,
         get_bill_of_materials_import_job/6,
         get_data_integration_flow/3,
         get_data_integration_flow/5,
         get_data_integration_flow/6,
         get_data_lake_dataset/4,
         get_data_lake_dataset/6,
         get_data_lake_dataset/7,
         list_data_integration_flows/2,
         list_data_integration_flows/4,
         list_data_integration_flows/5,
         list_data_lake_datasets/3,
         list_data_lake_datasets/5,
         list_data_lake_datasets/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         send_data_integration_event/3,
         send_data_integration_event/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_data_integration_flow/4,
         update_data_integration_flow/5,
         update_data_lake_dataset/5,
         update_data_lake_dataset/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% data_integration_flow_source() :: #{
%%   <<"datasetSource">> => data_integration_flow_dataset_source_configuration(),
%%   <<"s3Source">> => data_integration_flow_s3_source_configuration(),
%%   <<"sourceName">> => string(),
%%   <<"sourceType">> => list(any())
%% }
-type data_integration_flow_source() :: #{binary() => any()}.

%% Example:
%% delete_data_lake_dataset_request() :: #{}
-type delete_data_lake_dataset_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% data_integration_flow_s3_target_configuration() :: #{
%%   <<"bucketName">> => string(),
%%   <<"options">> => data_integration_flow_s3_options(),
%%   <<"prefix">> => string()
%% }
-type data_integration_flow_s3_target_configuration() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_s3_options() :: #{
%%   <<"fileType">> => list(any())
%% }
-type data_integration_flow_s3_options() :: #{binary() => any()}.


%% Example:
%% get_data_lake_dataset_response() :: #{
%%   <<"dataset">> => data_lake_dataset()
%% }
-type get_data_lake_dataset_response() :: #{binary() => any()}.


%% Example:
%% list_data_lake_datasets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_lake_datasets_request() :: #{binary() => any()}.

%% Example:
%% delete_data_integration_flow_request() :: #{}
-type delete_data_integration_flow_request() :: #{}.


%% Example:
%% update_data_lake_dataset_request() :: #{
%%   <<"description">> => string()
%% }
-type update_data_lake_dataset_request() :: #{binary() => any()}.


%% Example:
%% create_data_lake_dataset_request() :: #{
%%   <<"description">> => string(),
%%   <<"schema">> => data_lake_dataset_schema(),
%%   <<"tags">> => map()
%% }
-type create_data_lake_dataset_request() :: #{binary() => any()}.


%% Example:
%% delete_data_integration_flow_response() :: #{
%%   <<"instanceId">> => string(),
%%   <<"name">> => string()
%% }
-type delete_data_integration_flow_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_data_integration_flow_request() :: #{
%%   <<"sources">> := list(data_integration_flow_source()()),
%%   <<"tags">> => map(),
%%   <<"target">> := data_integration_flow_target(),
%%   <<"transformation">> := data_integration_flow_transformation()
%% }
-type create_data_integration_flow_request() :: #{binary() => any()}.


%% Example:
%% data_integration_flow() :: #{
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"instanceId">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"sources">> => list(data_integration_flow_source()()),
%%   <<"target">> => data_integration_flow_target(),
%%   <<"transformation">> => data_integration_flow_transformation()
%% }
-type data_integration_flow() :: #{binary() => any()}.


%% Example:
%% update_data_integration_flow_response() :: #{
%%   <<"flow">> => data_integration_flow()
%% }
-type update_data_integration_flow_response() :: #{binary() => any()}.


%% Example:
%% create_bill_of_materials_import_job_response() :: #{
%%   <<"jobId">> => string()
%% }
-type create_bill_of_materials_import_job_response() :: #{binary() => any()}.


%% Example:
%% data_lake_dataset_schema_field() :: #{
%%   <<"isRequired">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type data_lake_dataset_schema_field() :: #{binary() => any()}.


%% Example:
%% get_bill_of_materials_import_job_response() :: #{
%%   <<"job">> => bill_of_materials_import_job()
%% }
-type get_bill_of_materials_import_job_response() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_s_q_l_transformation_configuration() :: #{
%%   <<"query">> => string()
%% }
-type data_integration_flow_s_q_l_transformation_configuration() :: #{binary() => any()}.


%% Example:
%% create_data_integration_flow_response() :: #{
%%   <<"instanceId">> => string(),
%%   <<"name">> => string()
%% }
-type create_data_integration_flow_response() :: #{binary() => any()}.


%% Example:
%% list_data_lake_datasets_response() :: #{
%%   <<"datasets">> => list(data_lake_dataset()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_lake_datasets_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_bill_of_materials_import_job_request() :: #{}
-type get_bill_of_materials_import_job_request() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_dataset_options() :: #{
%%   <<"dedupeRecords">> => [boolean()],
%%   <<"loadType">> => list(any())
%% }
-type data_integration_flow_dataset_options() :: #{binary() => any()}.

%% Example:
%% get_data_integration_flow_request() :: #{}
-type get_data_integration_flow_request() :: #{}.


%% Example:
%% data_lake_dataset_schema() :: #{
%%   <<"fields">> => list(data_lake_dataset_schema_field()()),
%%   <<"name">> => string()
%% }
-type data_lake_dataset_schema() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_dataset_target_configuration() :: #{
%%   <<"datasetIdentifier">> => string(),
%%   <<"options">> => data_integration_flow_dataset_options()
%% }
-type data_integration_flow_dataset_target_configuration() :: #{binary() => any()}.


%% Example:
%% create_bill_of_materials_import_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"s3uri">> := string()
%% }
-type create_bill_of_materials_import_job_request() :: #{binary() => any()}.


%% Example:
%% create_data_lake_dataset_response() :: #{
%%   <<"dataset">> => data_lake_dataset()
%% }
-type create_data_lake_dataset_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_transformation() :: #{
%%   <<"sqlTransformation">> => data_integration_flow_s_q_l_transformation_configuration(),
%%   <<"transformationType">> => list(any())
%% }
-type data_integration_flow_transformation() :: #{binary() => any()}.


%% Example:
%% get_data_integration_flow_response() :: #{
%%   <<"flow">> => data_integration_flow()
%% }
-type get_data_integration_flow_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% send_data_integration_event_response() :: #{
%%   <<"eventId">> => string()
%% }
-type send_data_integration_event_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_data_integration_flows_response() :: #{
%%   <<"flows">> => list(data_integration_flow()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_integration_flows_response() :: #{binary() => any()}.


%% Example:
%% send_data_integration_event_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"data">> := string(),
%%   <<"eventGroupId">> := string(),
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"eventType">> := list(any())
%% }
-type send_data_integration_event_request() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_s3_source_configuration() :: #{
%%   <<"bucketName">> => string(),
%%   <<"options">> => data_integration_flow_s3_options(),
%%   <<"prefix">> => string()
%% }
-type data_integration_flow_s3_source_configuration() :: #{binary() => any()}.

%% Example:
%% get_data_lake_dataset_request() :: #{}
-type get_data_lake_dataset_request() :: #{}.


%% Example:
%% data_integration_flow_target() :: #{
%%   <<"datasetTarget">> => data_integration_flow_dataset_target_configuration(),
%%   <<"s3Target">> => data_integration_flow_s3_target_configuration(),
%%   <<"targetType">> => list(any())
%% }
-type data_integration_flow_target() :: #{binary() => any()}.


%% Example:
%% list_data_integration_flows_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_integration_flows_request() :: #{binary() => any()}.


%% Example:
%% update_data_integration_flow_request() :: #{
%%   <<"sources">> => list(data_integration_flow_source()()),
%%   <<"target">> => data_integration_flow_target(),
%%   <<"transformation">> => data_integration_flow_transformation()
%% }
-type update_data_integration_flow_request() :: #{binary() => any()}.


%% Example:
%% data_integration_flow_dataset_source_configuration() :: #{
%%   <<"datasetIdentifier">> => string(),
%%   <<"options">> => data_integration_flow_dataset_options()
%% }
-type data_integration_flow_dataset_source_configuration() :: #{binary() => any()}.


%% Example:
%% bill_of_materials_import_job() :: #{
%%   <<"instanceId">> => string(),
%%   <<"jobId">> => string(),
%%   <<"message">> => [string()],
%%   <<"s3uri">> => string(),
%%   <<"status">> => list(any())
%% }
-type bill_of_materials_import_job() :: #{binary() => any()}.


%% Example:
%% data_lake_dataset() :: #{
%%   <<"arn">> => string(),
%%   <<"createdTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"instanceId">> => string(),
%%   <<"lastModifiedTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"namespace">> => string(),
%%   <<"schema">> => data_lake_dataset_schema()
%% }
-type data_lake_dataset() :: #{binary() => any()}.


%% Example:
%% delete_data_lake_dataset_response() :: #{
%%   <<"instanceId">> => string(),
%%   <<"name">> => string(),
%%   <<"namespace">> => string()
%% }
-type delete_data_lake_dataset_response() :: #{binary() => any()}.


%% Example:
%% update_data_lake_dataset_response() :: #{
%%   <<"dataset">> => data_lake_dataset()
%% }
-type update_data_lake_dataset_response() :: #{binary() => any()}.

-type create_bill_of_materials_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_data_integration_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_data_lake_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_data_integration_flow_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_data_lake_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_bill_of_materials_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_integration_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_lake_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_integration_flows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_data_lake_datasets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_data_integration_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_data_integration_flow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_data_lake_dataset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc CreateBillOfMaterialsImportJob creates an import job for the Product
%% Bill Of Materials (BOM) entity.
%%
%% For information on the product_bom entity, see the AWS Supply Chain User
%% Guide.
%%
%% The CSV file must be located in an Amazon S3 location accessible to AWS
%% Supply Chain. It is recommended to use the same Amazon S3 bucket created
%% during your AWS Supply Chain instance creation.
-spec create_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), create_bill_of_materials_import_job_request()) ->
    {ok, create_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_bill_of_materials_import_job_errors(), tuple()}.
create_bill_of_materials_import_job(Client, InstanceId, Input) ->
    create_bill_of_materials_import_job(Client, InstanceId, Input, []).

-spec create_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), create_bill_of_materials_import_job_request(), proplists:proplist()) ->
    {ok, create_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_bill_of_materials_import_job_errors(), tuple()}.
create_bill_of_materials_import_job(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/api/configuration/instances/", aws_util:encode_uri(InstanceId), "/bill-of-materials-import-jobs"],
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

%% @doc Create DataIntegrationFlow to map one or more different sources to
%% one target using the SQL transformation query.
-spec create_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), create_data_integration_flow_request()) ->
    {ok, create_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, create_data_integration_flow_errors(), tuple()}.
create_data_integration_flow(Client, InstanceId, Name, Input) ->
    create_data_integration_flow(Client, InstanceId, Name, Input, []).

-spec create_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), create_data_integration_flow_request(), proplists:proplist()) ->
    {ok, create_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, create_data_integration_flow_errors(), tuple()}.
create_data_integration_flow(Client, InstanceId, Name, Input0, Options0) ->
    Method = put,
    Path = ["/api/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-flows/", aws_util:encode_uri(Name), ""],
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

%% @doc Create a data lake dataset.
-spec create_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_data_lake_dataset_request()) ->
    {ok, create_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_dataset_errors(), tuple()}.
create_data_lake_dataset(Client, InstanceId, Name, Namespace, Input) ->
    create_data_lake_dataset(Client, InstanceId, Name, Namespace, Input, []).

-spec create_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_data_lake_dataset_request(), proplists:proplist()) ->
    {ok, create_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_dataset_errors(), tuple()}.
create_data_lake_dataset(Client, InstanceId, Name, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/api/datalake/instance/", aws_util:encode_uri(InstanceId), "/namespaces/", aws_util:encode_uri(Namespace), "/datasets/", aws_util:encode_uri(Name), ""],
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

%% @doc Delete the DataIntegrationFlow.
-spec delete_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_integration_flow_request()) ->
    {ok, delete_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_data_integration_flow_errors(), tuple()}.
delete_data_integration_flow(Client, InstanceId, Name, Input) ->
    delete_data_integration_flow(Client, InstanceId, Name, Input, []).

-spec delete_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_integration_flow_request(), proplists:proplist()) ->
    {ok, delete_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, delete_data_integration_flow_errors(), tuple()}.
delete_data_integration_flow(Client, InstanceId, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/api/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-flows/", aws_util:encode_uri(Name), ""],
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

%% @doc Delete a data lake dataset.
-spec delete_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_data_lake_dataset_request()) ->
    {ok, delete_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_dataset_errors(), tuple()}.
delete_data_lake_dataset(Client, InstanceId, Name, Namespace, Input) ->
    delete_data_lake_dataset(Client, InstanceId, Name, Namespace, Input, []).

-spec delete_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_data_lake_dataset_request(), proplists:proplist()) ->
    {ok, delete_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_dataset_errors(), tuple()}.
delete_data_lake_dataset(Client, InstanceId, Name, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/api/datalake/instance/", aws_util:encode_uri(InstanceId), "/namespaces/", aws_util:encode_uri(Namespace), "/datasets/", aws_util:encode_uri(Name), ""],
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

%% @doc Get status and details of a BillOfMaterialsImportJob.
-spec get_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_bill_of_materials_import_job_errors(), tuple()}.
get_bill_of_materials_import_job(Client, InstanceId, JobId)
  when is_map(Client) ->
    get_bill_of_materials_import_job(Client, InstanceId, JobId, #{}, #{}).

-spec get_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_bill_of_materials_import_job_errors(), tuple()}.
get_bill_of_materials_import_job(Client, InstanceId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_bill_of_materials_import_job(Client, InstanceId, JobId, QueryMap, HeadersMap, []).

-spec get_bill_of_materials_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_bill_of_materials_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_bill_of_materials_import_job_errors(), tuple()}.
get_bill_of_materials_import_job(Client, InstanceId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/configuration/instances/", aws_util:encode_uri(InstanceId), "/bill-of-materials-import-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc View the DataIntegrationFlow details.
-spec get_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, get_data_integration_flow_errors(), tuple()}.
get_data_integration_flow(Client, InstanceId, Name)
  when is_map(Client) ->
    get_data_integration_flow(Client, InstanceId, Name, #{}, #{}).

-spec get_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, get_data_integration_flow_errors(), tuple()}.
get_data_integration_flow(Client, InstanceId, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_integration_flow(Client, InstanceId, Name, QueryMap, HeadersMap, []).

-spec get_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, get_data_integration_flow_errors(), tuple()}.
get_data_integration_flow(Client, InstanceId, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-flows/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a data lake dataset.
-spec get_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_dataset_errors(), tuple()}.
get_data_lake_dataset(Client, InstanceId, Name, Namespace)
  when is_map(Client) ->
    get_data_lake_dataset(Client, InstanceId, Name, Namespace, #{}, #{}).

-spec get_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_dataset_errors(), tuple()}.
get_data_lake_dataset(Client, InstanceId, Name, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_lake_dataset(Client, InstanceId, Name, Namespace, QueryMap, HeadersMap, []).

-spec get_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_dataset_errors(), tuple()}.
get_data_lake_dataset(Client, InstanceId, Name, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/datalake/instance/", aws_util:encode_uri(InstanceId), "/namespaces/", aws_util:encode_uri(Namespace), "/datasets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the DataIntegrationFlows in a paginated way.
-spec list_data_integration_flows(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_integration_flows_response(), tuple()} |
    {error, any()} |
    {error, list_data_integration_flows_errors(), tuple()}.
list_data_integration_flows(Client, InstanceId)
  when is_map(Client) ->
    list_data_integration_flows(Client, InstanceId, #{}, #{}).

-spec list_data_integration_flows(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_integration_flows_response(), tuple()} |
    {error, any()} |
    {error, list_data_integration_flows_errors(), tuple()}.
list_data_integration_flows(Client, InstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_integration_flows(Client, InstanceId, QueryMap, HeadersMap, []).

-spec list_data_integration_flows(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_integration_flows_response(), tuple()} |
    {error, any()} |
    {error, list_data_integration_flows_errors(), tuple()}.
list_data_integration_flows(Client, InstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-flows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the data lake datasets for a specific instance and name space.
-spec list_data_lake_datasets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_data_lake_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_data_lake_datasets_errors(), tuple()}.
list_data_lake_datasets(Client, InstanceId, Namespace)
  when is_map(Client) ->
    list_data_lake_datasets(Client, InstanceId, Namespace, #{}, #{}).

-spec list_data_lake_datasets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_lake_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_data_lake_datasets_errors(), tuple()}.
list_data_lake_datasets(Client, InstanceId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_lake_datasets(Client, InstanceId, Namespace, QueryMap, HeadersMap, []).

-spec list_data_lake_datasets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_lake_datasets_response(), tuple()} |
    {error, any()} |
    {error, list_data_lake_datasets_errors(), tuple()}.
list_data_lake_datasets(Client, InstanceId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/datalake/instance/", aws_util:encode_uri(InstanceId), "/namespaces/", aws_util:encode_uri(Namespace), "/datasets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the tags for an Amazon Web ServicesSupply Chain resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Send the transactional data payload for the event with real-time data
%% for analysis or monitoring.
%%
%% The real-time data events are stored in an Amazon Web Services service
%% before being processed and stored in data lake.
%% New data events are synced with data lake at 5 PM GMT everyday. The
%% updated transactional data is available in data lake after ingestion.
-spec send_data_integration_event(aws_client:aws_client(), binary() | list(), send_data_integration_event_request()) ->
    {ok, send_data_integration_event_response(), tuple()} |
    {error, any()} |
    {error, send_data_integration_event_errors(), tuple()}.
send_data_integration_event(Client, InstanceId, Input) ->
    send_data_integration_event(Client, InstanceId, Input, []).

-spec send_data_integration_event(aws_client:aws_client(), binary() | list(), send_data_integration_event_request(), proplists:proplist()) ->
    {ok, send_data_integration_event_response(), tuple()} |
    {error, any()} |
    {error, send_data_integration_event_errors(), tuple()}.
send_data_integration_event(Client, InstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/api-data/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-events"],
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

%% @doc Create tags for an Amazon Web Services Supply chain resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/api/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Delete tags for an Amazon Web Services Supply chain resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/api/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Update the DataIntegrationFlow.
-spec update_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_integration_flow_request()) ->
    {ok, update_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, update_data_integration_flow_errors(), tuple()}.
update_data_integration_flow(Client, InstanceId, Name, Input) ->
    update_data_integration_flow(Client, InstanceId, Name, Input, []).

-spec update_data_integration_flow(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_integration_flow_request(), proplists:proplist()) ->
    {ok, update_data_integration_flow_response(), tuple()} |
    {error, any()} |
    {error, update_data_integration_flow_errors(), tuple()}.
update_data_integration_flow(Client, InstanceId, Name, Input0, Options0) ->
    Method = patch,
    Path = ["/api/data-integration/instance/", aws_util:encode_uri(InstanceId), "/data-integration-flows/", aws_util:encode_uri(Name), ""],
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

%% @doc Update a data lake dataset.
-spec update_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_data_lake_dataset_request()) ->
    {ok, update_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_data_lake_dataset_errors(), tuple()}.
update_data_lake_dataset(Client, InstanceId, Name, Namespace, Input) ->
    update_data_lake_dataset(Client, InstanceId, Name, Namespace, Input, []).

-spec update_data_lake_dataset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_data_lake_dataset_request(), proplists:proplist()) ->
    {ok, update_data_lake_dataset_response(), tuple()} |
    {error, any()} |
    {error, update_data_lake_dataset_errors(), tuple()}.
update_data_lake_dataset(Client, InstanceId, Name, Namespace, Input0, Options0) ->
    Method = patch,
    Path = ["/api/datalake/instance/", aws_util:encode_uri(InstanceId), "/namespaces/", aws_util:encode_uri(Namespace), "/datasets/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"scn">>},
    Host = build_host(<<"scn">>, Client1),
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
