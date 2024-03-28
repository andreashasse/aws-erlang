%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Entity Resolution API Reference.
%%
%% Entity Resolution is an Amazon Web Services service that provides
%% pre-configured entity
%% resolution capabilities that enable developers and analysts at advertising
%% and marketing
%% companies to build an accurate and complete view of their consumers.
%%
%% With Entity Resolution, you can match source records containing consumer
%% identifiers,
%% such as name, email address, and phone number. This is true even when
%% these records have
%% incomplete or conflicting identifiers. For example, Entity Resolution can
%% effectively match
%% a source record from a customer relationship management (CRM) system with
%% a source record
%% from a marketing system containing campaign information.
%%
%% To learn more about Entity Resolution concepts, procedures, and best
%% practices, see the
%% Entity Resolution User Guide:
%% https://docs.aws.amazon.com/entityresolution/latest/userguide/what-is-service.html.
-module(aws_entityresolution).

-export([create_id_mapping_workflow/2,
         create_id_mapping_workflow/3,
         create_matching_workflow/2,
         create_matching_workflow/3,
         create_schema_mapping/2,
         create_schema_mapping/3,
         delete_id_mapping_workflow/3,
         delete_id_mapping_workflow/4,
         delete_matching_workflow/3,
         delete_matching_workflow/4,
         delete_schema_mapping/3,
         delete_schema_mapping/4,
         get_id_mapping_job/3,
         get_id_mapping_job/5,
         get_id_mapping_job/6,
         get_id_mapping_workflow/2,
         get_id_mapping_workflow/4,
         get_id_mapping_workflow/5,
         get_match_id/3,
         get_match_id/4,
         get_matching_job/3,
         get_matching_job/5,
         get_matching_job/6,
         get_matching_workflow/2,
         get_matching_workflow/4,
         get_matching_workflow/5,
         get_provider_service/3,
         get_provider_service/5,
         get_provider_service/6,
         get_schema_mapping/2,
         get_schema_mapping/4,
         get_schema_mapping/5,
         list_id_mapping_jobs/2,
         list_id_mapping_jobs/4,
         list_id_mapping_jobs/5,
         list_id_mapping_workflows/1,
         list_id_mapping_workflows/3,
         list_id_mapping_workflows/4,
         list_matching_jobs/2,
         list_matching_jobs/4,
         list_matching_jobs/5,
         list_matching_workflows/1,
         list_matching_workflows/3,
         list_matching_workflows/4,
         list_provider_services/1,
         list_provider_services/3,
         list_provider_services/4,
         list_schema_mappings/1,
         list_schema_mappings/3,
         list_schema_mappings/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_id_mapping_job/3,
         start_id_mapping_job/4,
         start_matching_job/3,
         start_matching_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_id_mapping_workflow/3,
         update_id_mapping_workflow/4,
         update_matching_workflow/3,
         update_matching_workflow/4,
         update_schema_mapping/3,
         update_schema_mapping/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_id_mapping_job_input() :: #{}
-type get_id_mapping_job_input() :: #{}.


%% Example:
%% list_provider_services_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"providerName">> => string()
%% }
-type list_provider_services_input() :: #{binary() => any()}.

%% Example:
%% start_matching_job_input() :: #{}
-type start_matching_job_input() :: #{}.


%% Example:
%% id_mapping_techniques() :: #{
%%   <<"idMappingType">> => list(any()),
%%   <<"providerProperties">> => provider_properties()
%% }
-type id_mapping_techniques() :: #{binary() => any()}.


%% Example:
%% input_source() :: #{
%%   <<"applyNormalization">> => [boolean()],
%%   <<"inputSourceARN">> => [string()],
%%   <<"schemaName">> => string()
%% }
-type input_source() :: #{binary() => any()}.

%% Example:
%% delete_matching_workflow_input() :: #{}
-type delete_matching_workflow_input() :: #{}.


%% Example:
%% get_match_id_output() :: #{
%%   <<"matchId">> => [string()]
%% }
-type get_match_id_output() :: #{binary() => any()}.


%% Example:
%% resolution_techniques() :: #{
%%   <<"providerProperties">> => provider_properties(),
%%   <<"resolutionType">> => list(any()),
%%   <<"ruleBasedProperties">> => rule_based_properties()
%% }
-type resolution_techniques() :: #{binary() => any()}.


%% Example:
%% update_schema_mapping_output() :: #{
%%   <<"description">> => string(),
%%   <<"mappedInputFields">> => list(schema_input_attribute()()),
%%   <<"schemaArn">> => string(),
%%   <<"schemaName">> => string()
%% }
-type update_schema_mapping_output() :: #{binary() => any()}.


%% Example:
%% delete_id_mapping_workflow_output() :: #{
%%   <<"message">> => [string()]
%% }
-type delete_id_mapping_workflow_output() :: #{binary() => any()}.


%% Example:
%% update_schema_mapping_input() :: #{
%%   <<"description">> => string(),
%%   <<"mappedInputFields">> := list(schema_input_attribute()())
%% }
-type update_schema_mapping_input() :: #{binary() => any()}.


%% Example:
%% update_matching_workflow_input() :: #{
%%   <<"description">> => string(),
%%   <<"incrementalRunConfig">> => incremental_run_config(),
%%   <<"inputSourceConfig">> := list(input_source()()),
%%   <<"outputSourceConfig">> := list(output_source()()),
%%   <<"resolutionTechniques">> := resolution_techniques(),
%%   <<"roleArn">> := [string()]
%% }
-type update_matching_workflow_input() :: #{binary() => any()}.


%% Example:
%% provider_service_summary() :: #{
%%   <<"providerName">> => string(),
%%   <<"providerServiceArn">> => string(),
%%   <<"providerServiceDisplayName">> => string(),
%%   <<"providerServiceName">> => string(),
%%   <<"providerServiceType">> => list(any())
%% }
-type provider_service_summary() :: #{binary() => any()}.


%% Example:
%% list_schema_mappings_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"schemaList">> => list(schema_mapping_summary()())
%% }
-type list_schema_mappings_output() :: #{binary() => any()}.


%% Example:
%% output_attribute() :: #{
%%   <<"hashed">> => [boolean()],
%%   <<"name">> => string()
%% }
-type output_attribute() :: #{binary() => any()}.


%% Example:
%% start_matching_job_output() :: #{
%%   <<"jobId">> => string()
%% }
-type start_matching_job_output() :: #{binary() => any()}.


%% Example:
%% exceeds_limit_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaName">> => [string()],
%%   <<"quotaValue">> => [integer()]
%% }
-type exceeds_limit_exception() :: #{binary() => any()}.

%% Example:
%% delete_schema_mapping_input() :: #{}
-type delete_schema_mapping_input() :: #{}.


%% Example:
%% list_id_mapping_jobs_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_id_mapping_jobs_input() :: #{binary() => any()}.

%% Example:
%% delete_id_mapping_workflow_input() :: #{}
-type delete_id_mapping_workflow_input() :: #{}.


%% Example:
%% create_schema_mapping_output() :: #{
%%   <<"description">> => string(),
%%   <<"mappedInputFields">> => list(schema_input_attribute()()),
%%   <<"schemaArn">> => string(),
%%   <<"schemaName">> => string()
%% }
-type create_schema_mapping_output() :: #{binary() => any()}.


%% Example:
%% update_matching_workflow_output() :: #{
%%   <<"description">> => string(),
%%   <<"incrementalRunConfig">> => incremental_run_config(),
%%   <<"inputSourceConfig">> => list(input_source()()),
%%   <<"outputSourceConfig">> => list(output_source()()),
%%   <<"resolutionTechniques">> => resolution_techniques(),
%%   <<"roleArn">> => [string()],
%%   <<"workflowName">> => string()
%% }
-type update_matching_workflow_output() :: #{binary() => any()}.


%% Example:
%% list_id_mapping_jobs_output() :: #{
%%   <<"jobs">> => list(job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_id_mapping_jobs_output() :: #{binary() => any()}.


%% Example:
%% job_metrics() :: #{
%%   <<"inputRecords">> => [integer()],
%%   <<"matchIDs">> => [integer()],
%%   <<"recordsNotProcessed">> => [integer()],
%%   <<"totalRecordsProcessed">> => [integer()]
%% }
-type job_metrics() :: #{binary() => any()}.


%% Example:
%% get_id_mapping_workflow_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"idMappingTechniques">> => id_mapping_techniques(),
%%   <<"inputSourceConfig">> => list(id_mapping_workflow_input_source()()),
%%   <<"outputSourceConfig">> => list(id_mapping_workflow_output_source()()),
%%   <<"roleArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type get_id_mapping_workflow_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% get_schema_mapping_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"hasWorkflows">> => [boolean()],
%%   <<"mappedInputFields">> => list(schema_input_attribute()()),
%%   <<"schemaArn">> => string(),
%%   <<"schemaName">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_schema_mapping_output() :: #{binary() => any()}.


%% Example:
%% list_matching_workflows_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_matching_workflows_input() :: #{binary() => any()}.


%% Example:
%% id_mapping_workflow_output_source() :: #{
%%   <<"KMSArn">> => string(),
%%   <<"outputS3Path">> => string()
%% }
-type id_mapping_workflow_output_source() :: #{binary() => any()}.


%% Example:
%% create_matching_workflow_output() :: #{
%%   <<"description">> => string(),
%%   <<"incrementalRunConfig">> => incremental_run_config(),
%%   <<"inputSourceConfig">> => list(input_source()()),
%%   <<"outputSourceConfig">> => list(output_source()()),
%%   <<"resolutionTechniques">> => resolution_techniques(),
%%   <<"roleArn">> => [string()],
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type create_matching_workflow_output() :: #{binary() => any()}.


%% Example:
%% job_summary() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"jobId">> => string(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type job_summary() :: #{binary() => any()}.

%% Example:
%% get_schema_mapping_input() :: #{}
-type get_schema_mapping_input() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% intermediate_source_configuration() :: #{
%%   <<"intermediateS3Path">> => string()
%% }
-type intermediate_source_configuration() :: #{binary() => any()}.


%% Example:
%% list_id_mapping_workflows_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowSummaries">> => list(id_mapping_workflow_summary()())
%% }
-type list_id_mapping_workflows_output() :: #{binary() => any()}.


%% Example:
%% id_mapping_job_metrics() :: #{
%%   <<"inputRecords">> => [integer()],
%%   <<"recordsNotProcessed">> => [integer()],
%%   <<"totalRecordsProcessed">> => [integer()]
%% }
-type id_mapping_job_metrics() :: #{binary() => any()}.


%% Example:
%% create_id_mapping_workflow_input() :: #{
%%   <<"description">> => string(),
%%   <<"idMappingTechniques">> := id_mapping_techniques(),
%%   <<"inputSourceConfig">> := list(id_mapping_workflow_input_source()()),
%%   <<"outputSourceConfig">> := list(id_mapping_workflow_output_source()()),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"workflowName">> := string()
%% }
-type create_id_mapping_workflow_input() :: #{binary() => any()}.


%% Example:
%% list_matching_workflows_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"workflowSummaries">> => list(matching_workflow_summary()())
%% }
-type list_matching_workflows_output() :: #{binary() => any()}.


%% Example:
%% create_matching_workflow_input() :: #{
%%   <<"description">> => string(),
%%   <<"incrementalRunConfig">> => incremental_run_config(),
%%   <<"inputSourceConfig">> := list(input_source()()),
%%   <<"outputSourceConfig">> := list(output_source()()),
%%   <<"resolutionTechniques">> := resolution_techniques(),
%%   <<"roleArn">> := [string()],
%%   <<"tags">> => map(),
%%   <<"workflowName">> := string()
%% }
-type create_matching_workflow_input() :: #{binary() => any()}.


%% Example:
%% error_details() :: #{
%%   <<"errorMessage">> => string()
%% }
-type error_details() :: #{binary() => any()}.


%% Example:
%% matching_workflow_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"resolutionType">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type matching_workflow_summary() :: #{binary() => any()}.


%% Example:
%% get_id_mapping_job_output() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"errorDetails">> => error_details(),
%%   <<"jobId">> => string(),
%%   <<"metrics">> => id_mapping_job_metrics(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type get_id_mapping_job_output() :: #{binary() => any()}.

%% Example:
%% start_id_mapping_job_input() :: #{}
-type start_id_mapping_job_input() :: #{}.


%% Example:
%% update_id_mapping_workflow_output() :: #{
%%   <<"description">> => string(),
%%   <<"idMappingTechniques">> => id_mapping_techniques(),
%%   <<"inputSourceConfig">> => list(id_mapping_workflow_input_source()()),
%%   <<"outputSourceConfig">> => list(id_mapping_workflow_output_source()()),
%%   <<"roleArn">> => string(),
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type update_id_mapping_workflow_output() :: #{binary() => any()}.

%% Example:
%% get_provider_service_input() :: #{}
-type get_provider_service_input() :: #{}.


%% Example:
%% list_schema_mappings_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_schema_mappings_input() :: #{binary() => any()}.


%% Example:
%% list_matching_jobs_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_matching_jobs_input() :: #{binary() => any()}.

%% Example:
%% get_id_mapping_workflow_input() :: #{}
-type get_id_mapping_workflow_input() :: #{}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% rule() :: #{
%%   <<"matchingKeys">> => list(string()()),
%%   <<"ruleName">> => [string()]
%% }
-type rule() :: #{binary() => any()}.


%% Example:
%% delete_matching_workflow_output() :: #{
%%   <<"message">> => [string()]
%% }
-type delete_matching_workflow_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_id_mapping_workflows_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_id_mapping_workflows_input() :: #{binary() => any()}.


%% Example:
%% create_id_mapping_workflow_output() :: #{
%%   <<"description">> => string(),
%%   <<"idMappingTechniques">> => id_mapping_techniques(),
%%   <<"inputSourceConfig">> => list(id_mapping_workflow_input_source()()),
%%   <<"outputSourceConfig">> => list(id_mapping_workflow_output_source()()),
%%   <<"roleArn">> => string(),
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type create_id_mapping_workflow_output() :: #{binary() => any()}.


%% Example:
%% update_id_mapping_workflow_input() :: #{
%%   <<"description">> => string(),
%%   <<"idMappingTechniques">> := id_mapping_techniques(),
%%   <<"inputSourceConfig">> := list(id_mapping_workflow_input_source()()),
%%   <<"outputSourceConfig">> := list(id_mapping_workflow_output_source()()),
%%   <<"roleArn">> := string()
%% }
-type update_id_mapping_workflow_input() :: #{binary() => any()}.


%% Example:
%% schema_mapping_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"hasWorkflows">> => [boolean()],
%%   <<"schemaArn">> => string(),
%%   <<"schemaName">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type schema_mapping_summary() :: #{binary() => any()}.


%% Example:
%% create_schema_mapping_input() :: #{
%%   <<"description">> => string(),
%%   <<"mappedInputFields">> := list(schema_input_attribute()()),
%%   <<"schemaName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_schema_mapping_input() :: #{binary() => any()}.


%% Example:
%% provider_intermediate_data_access_configuration() :: #{
%%   <<"awsAccountIds">> => list(string()()),
%%   <<"requiredBucketActions">> => list([string()]())
%% }
-type provider_intermediate_data_access_configuration() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% get_matching_job_input() :: #{}
-type get_matching_job_input() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% get_provider_service_output() :: #{
%%   <<"anonymizedOutput">> => [boolean()],
%%   <<"providerConfigurationDefinition">> => [any()],
%%   <<"providerEndpointConfiguration">> => list(),
%%   <<"providerEntityOutputDefinition">> => [any()],
%%   <<"providerIntermediateDataAccessConfiguration">> => provider_intermediate_data_access_configuration(),
%%   <<"providerName">> => string(),
%%   <<"providerServiceArn">> => string(),
%%   <<"providerServiceDisplayName">> => string(),
%%   <<"providerServiceName">> => string(),
%%   <<"providerServiceType">> => list(any())
%% }
-type get_provider_service_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% id_mapping_workflow_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type id_mapping_workflow_summary() :: #{binary() => any()}.


%% Example:
%% output_source() :: #{
%%   <<"KMSArn">> => string(),
%%   <<"applyNormalization">> => [boolean()],
%%   <<"output">> => list(output_attribute()()),
%%   <<"outputS3Path">> => string()
%% }
-type output_source() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% provider_properties() :: #{
%%   <<"intermediateSourceConfiguration">> => intermediate_source_configuration(),
%%   <<"providerConfiguration">> => [any()],
%%   <<"providerServiceArn">> => string()
%% }
-type provider_properties() :: #{binary() => any()}.


%% Example:
%% delete_schema_mapping_output() :: #{
%%   <<"message">> => [string()]
%% }
-type delete_schema_mapping_output() :: #{binary() => any()}.


%% Example:
%% start_id_mapping_job_output() :: #{
%%   <<"jobId">> => string()
%% }
-type start_id_mapping_job_output() :: #{binary() => any()}.


%% Example:
%% get_matching_workflow_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"incrementalRunConfig">> => incremental_run_config(),
%%   <<"inputSourceConfig">> => list(input_source()()),
%%   <<"outputSourceConfig">> => list(output_source()()),
%%   <<"resolutionTechniques">> => resolution_techniques(),
%%   <<"roleArn">> => [string()],
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"workflowArn">> => string(),
%%   <<"workflowName">> => string()
%% }
-type get_matching_workflow_output() :: #{binary() => any()}.


%% Example:
%% schema_input_attribute() :: #{
%%   <<"fieldName">> => string(),
%%   <<"groupName">> => string(),
%%   <<"matchKey">> => string(),
%%   <<"subType">> => string(),
%%   <<"type">> => list(any())
%% }
-type schema_input_attribute() :: #{binary() => any()}.


%% Example:
%% provider_marketplace_configuration() :: #{
%%   <<"assetId">> => [string()],
%%   <<"dataSetId">> => [string()],
%%   <<"listingId">> => [string()],
%%   <<"revisionId">> => [string()]
%% }
-type provider_marketplace_configuration() :: #{binary() => any()}.


%% Example:
%% get_matching_job_output() :: #{
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"errorDetails">> => error_details(),
%%   <<"jobId">> => string(),
%%   <<"metrics">> => job_metrics(),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type get_matching_job_output() :: #{binary() => any()}.


%% Example:
%% rule_based_properties() :: #{
%%   <<"attributeMatchingModel">> => list(any()),
%%   <<"rules">> => list(rule()())
%% }
-type rule_based_properties() :: #{binary() => any()}.


%% Example:
%% id_mapping_workflow_input_source() :: #{
%%   <<"inputSourceARN">> => [string()],
%%   <<"schemaName">> => string()
%% }
-type id_mapping_workflow_input_source() :: #{binary() => any()}.


%% Example:
%% get_match_id_input() :: #{
%%   <<"record">> := map()
%% }
-type get_match_id_input() :: #{binary() => any()}.


%% Example:
%% incremental_run_config() :: #{
%%   <<"incrementalRunType">> => list(any())
%% }
-type incremental_run_config() :: #{binary() => any()}.

%% Example:
%% get_matching_workflow_input() :: #{}
-type get_matching_workflow_input() :: #{}.


%% Example:
%% list_matching_jobs_output() :: #{
%%   <<"jobs">> => list(job_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_matching_jobs_output() :: #{binary() => any()}.


%% Example:
%% list_provider_services_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"providerServiceSummaries">> => list(provider_service_summary()())
%% }
-type list_provider_services_output() :: #{binary() => any()}.

-type create_id_mapping_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    exceeds_limit_exception().

-type create_matching_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    exceeds_limit_exception().

-type create_schema_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    exceeds_limit_exception().

-type delete_id_mapping_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_matching_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_schema_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_id_mapping_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_id_mapping_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_match_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_matching_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_matching_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_provider_service_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_schema_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_id_mapping_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_id_mapping_workflows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_matching_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_matching_workflows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_provider_services_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_schema_mappings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_id_mapping_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    exceeds_limit_exception().

-type start_matching_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    exceeds_limit_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type update_id_mapping_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_matching_workflow_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_schema_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an `IdMappingWorkflow' object which stores the
%% configuration of the
%% data processing job to be run.
%%
%% Each `IdMappingWorkflow' must have a unique
%% workflow name. To modify an existing workflow, use the
%% `UpdateIdMappingWorkflow'
%% API.
-spec create_id_mapping_workflow(aws_client:aws_client(), create_id_mapping_workflow_input()) ->
    {ok, create_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, create_id_mapping_workflow_errors(), tuple()}.
create_id_mapping_workflow(Client, Input) ->
    create_id_mapping_workflow(Client, Input, []).

-spec create_id_mapping_workflow(aws_client:aws_client(), create_id_mapping_workflow_input(), proplists:proplist()) ->
    {ok, create_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, create_id_mapping_workflow_errors(), tuple()}.
create_id_mapping_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/idmappingworkflows"],
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

%% @doc Creates a `MatchingWorkflow' object which stores the
%% configuration of the
%% data processing job to be run.
%%
%% It is important to note that there should not be a
%% pre-existing `MatchingWorkflow' with the same name. To modify an
%% existing
%% workflow, utilize the `UpdateMatchingWorkflow' API.
-spec create_matching_workflow(aws_client:aws_client(), create_matching_workflow_input()) ->
    {ok, create_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, create_matching_workflow_errors(), tuple()}.
create_matching_workflow(Client, Input) ->
    create_matching_workflow(Client, Input, []).

-spec create_matching_workflow(aws_client:aws_client(), create_matching_workflow_input(), proplists:proplist()) ->
    {ok, create_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, create_matching_workflow_errors(), tuple()}.
create_matching_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/matchingworkflows"],
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

%% @doc Creates a schema mapping, which defines the schema of the input
%% customer records table.
%%
%% The `SchemaMapping' also provides Entity Resolution with some metadata
%% about the
%% table, such as the attribute types of the columns and which columns to
%% match on.
-spec create_schema_mapping(aws_client:aws_client(), create_schema_mapping_input()) ->
    {ok, create_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, create_schema_mapping_errors(), tuple()}.
create_schema_mapping(Client, Input) ->
    create_schema_mapping(Client, Input, []).

-spec create_schema_mapping(aws_client:aws_client(), create_schema_mapping_input(), proplists:proplist()) ->
    {ok, create_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, create_schema_mapping_errors(), tuple()}.
create_schema_mapping(Client, Input0, Options0) ->
    Method = post,
    Path = ["/schemas"],
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

%% @doc Deletes the `IdMappingWorkflow' with a given name.
%%
%% This operation will
%% succeed even if a workflow with the given name does not exist.
-spec delete_id_mapping_workflow(aws_client:aws_client(), binary() | list(), delete_id_mapping_workflow_input()) ->
    {ok, delete_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, delete_id_mapping_workflow_errors(), tuple()}.
delete_id_mapping_workflow(Client, WorkflowName, Input) ->
    delete_id_mapping_workflow(Client, WorkflowName, Input, []).

-spec delete_id_mapping_workflow(aws_client:aws_client(), binary() | list(), delete_id_mapping_workflow_input(), proplists:proplist()) ->
    {ok, delete_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, delete_id_mapping_workflow_errors(), tuple()}.
delete_id_mapping_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = delete,
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), ""],
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

%% @doc Deletes the `MatchingWorkflow' with a given name.
%%
%% This operation will succeed
%% even if a workflow with the given name does not exist.
-spec delete_matching_workflow(aws_client:aws_client(), binary() | list(), delete_matching_workflow_input()) ->
    {ok, delete_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, delete_matching_workflow_errors(), tuple()}.
delete_matching_workflow(Client, WorkflowName, Input) ->
    delete_matching_workflow(Client, WorkflowName, Input, []).

-spec delete_matching_workflow(aws_client:aws_client(), binary() | list(), delete_matching_workflow_input(), proplists:proplist()) ->
    {ok, delete_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, delete_matching_workflow_errors(), tuple()}.
delete_matching_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = delete,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), ""],
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

%% @doc Deletes the `SchemaMapping' with a given name.
%%
%% This operation will succeed
%% even if a schema with the given name does not exist. This operation will
%% fail if there is a
%% `MatchingWorkflow' object that references the `SchemaMapping' in
%% the workflow's `InputSourceConfig'.
-spec delete_schema_mapping(aws_client:aws_client(), binary() | list(), delete_schema_mapping_input()) ->
    {ok, delete_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, delete_schema_mapping_errors(), tuple()}.
delete_schema_mapping(Client, SchemaName, Input) ->
    delete_schema_mapping(Client, SchemaName, Input, []).

-spec delete_schema_mapping(aws_client:aws_client(), binary() | list(), delete_schema_mapping_input(), proplists:proplist()) ->
    {ok, delete_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, delete_schema_mapping_errors(), tuple()}.
delete_schema_mapping(Client, SchemaName, Input0, Options0) ->
    Method = delete,
    Path = ["/schemas/", aws_util:encode_uri(SchemaName), ""],
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

%% @doc Gets the status, metrics, and errors (if there are any) that are
%% associated with a
%% job.
-spec get_id_mapping_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_id_mapping_job_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_job_errors(), tuple()}.
get_id_mapping_job(Client, JobId, WorkflowName)
  when is_map(Client) ->
    get_id_mapping_job(Client, JobId, WorkflowName, #{}, #{}).

-spec get_id_mapping_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_id_mapping_job_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_job_errors(), tuple()}.
get_id_mapping_job(Client, JobId, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_id_mapping_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, []).

-spec get_id_mapping_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_id_mapping_job_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_job_errors(), tuple()}.
get_id_mapping_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `IdMappingWorkflow' with a given name, if it exists.
-spec get_id_mapping_workflow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_workflow_errors(), tuple()}.
get_id_mapping_workflow(Client, WorkflowName)
  when is_map(Client) ->
    get_id_mapping_workflow(Client, WorkflowName, #{}, #{}).

-spec get_id_mapping_workflow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_workflow_errors(), tuple()}.
get_id_mapping_workflow(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_id_mapping_workflow(Client, WorkflowName, QueryMap, HeadersMap, []).

-spec get_id_mapping_workflow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_workflow_errors(), tuple()}.
get_id_mapping_workflow(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the corresponding Match ID of a customer record if the record
%% has been
%% processed.
-spec get_match_id(aws_client:aws_client(), binary() | list(), get_match_id_input()) ->
    {ok, get_match_id_output(), tuple()} |
    {error, any()} |
    {error, get_match_id_errors(), tuple()}.
get_match_id(Client, WorkflowName, Input) ->
    get_match_id(Client, WorkflowName, Input, []).

-spec get_match_id(aws_client:aws_client(), binary() | list(), get_match_id_input(), proplists:proplist()) ->
    {ok, get_match_id_output(), tuple()} |
    {error, any()} |
    {error, get_match_id_errors(), tuple()}.
get_match_id(Client, WorkflowName, Input0, Options0) ->
    Method = post,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/matches"],
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

%% @doc Gets the status, metrics, and errors (if there are any) that are
%% associated with a
%% job.
-spec get_matching_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_matching_job_output(), tuple()} |
    {error, any()} |
    {error, get_matching_job_errors(), tuple()}.
get_matching_job(Client, JobId, WorkflowName)
  when is_map(Client) ->
    get_matching_job(Client, JobId, WorkflowName, #{}, #{}).

-spec get_matching_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_matching_job_output(), tuple()} |
    {error, any()} |
    {error, get_matching_job_errors(), tuple()}.
get_matching_job(Client, JobId, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_matching_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, []).

-spec get_matching_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_matching_job_output(), tuple()} |
    {error, any()} |
    {error, get_matching_job_errors(), tuple()}.
get_matching_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `MatchingWorkflow' with a given name, if it exists.
-spec get_matching_workflow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, get_matching_workflow_errors(), tuple()}.
get_matching_workflow(Client, WorkflowName)
  when is_map(Client) ->
    get_matching_workflow(Client, WorkflowName, #{}, #{}).

-spec get_matching_workflow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, get_matching_workflow_errors(), tuple()}.
get_matching_workflow(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_matching_workflow(Client, WorkflowName, QueryMap, HeadersMap, []).

-spec get_matching_workflow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, get_matching_workflow_errors(), tuple()}.
get_matching_workflow(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `ProviderService' of a given name.
-spec get_provider_service(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_provider_service_output(), tuple()} |
    {error, any()} |
    {error, get_provider_service_errors(), tuple()}.
get_provider_service(Client, ProviderName, ProviderServiceName)
  when is_map(Client) ->
    get_provider_service(Client, ProviderName, ProviderServiceName, #{}, #{}).

-spec get_provider_service(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_provider_service_output(), tuple()} |
    {error, any()} |
    {error, get_provider_service_errors(), tuple()}.
get_provider_service(Client, ProviderName, ProviderServiceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provider_service(Client, ProviderName, ProviderServiceName, QueryMap, HeadersMap, []).

-spec get_provider_service(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_provider_service_output(), tuple()} |
    {error, any()} |
    {error, get_provider_service_errors(), tuple()}.
get_provider_service(Client, ProviderName, ProviderServiceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/providerservices/", aws_util:encode_uri(ProviderName), "/", aws_util:encode_uri(ProviderServiceName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the SchemaMapping of a given name.
-spec get_schema_mapping(aws_client:aws_client(), binary() | list()) ->
    {ok, get_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, get_schema_mapping_errors(), tuple()}.
get_schema_mapping(Client, SchemaName)
  when is_map(Client) ->
    get_schema_mapping(Client, SchemaName, #{}, #{}).

-spec get_schema_mapping(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, get_schema_mapping_errors(), tuple()}.
get_schema_mapping(Client, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_mapping(Client, SchemaName, QueryMap, HeadersMap, []).

-spec get_schema_mapping(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, get_schema_mapping_errors(), tuple()}.
get_schema_mapping(Client, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schemas/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all ID mapping jobs for a given workflow.
-spec list_id_mapping_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_id_mapping_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_jobs_errors(), tuple()}.
list_id_mapping_jobs(Client, WorkflowName)
  when is_map(Client) ->
    list_id_mapping_jobs(Client, WorkflowName, #{}, #{}).

-spec list_id_mapping_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_id_mapping_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_jobs_errors(), tuple()}.
list_id_mapping_jobs(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_id_mapping_jobs(Client, WorkflowName, QueryMap, HeadersMap, []).

-spec list_id_mapping_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_id_mapping_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_jobs_errors(), tuple()}.
list_id_mapping_jobs(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
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

%% @doc Returns a list of all the `IdMappingWorkflows' that have been
%% created for an
%% Amazon Web Services account.
-spec list_id_mapping_workflows(aws_client:aws_client()) ->
    {ok, list_id_mapping_workflows_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_workflows_errors(), tuple()}.
list_id_mapping_workflows(Client)
  when is_map(Client) ->
    list_id_mapping_workflows(Client, #{}, #{}).

-spec list_id_mapping_workflows(aws_client:aws_client(), map(), map()) ->
    {ok, list_id_mapping_workflows_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_workflows_errors(), tuple()}.
list_id_mapping_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_id_mapping_workflows(Client, QueryMap, HeadersMap, []).

-spec list_id_mapping_workflows(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_id_mapping_workflows_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_workflows_errors(), tuple()}.
list_id_mapping_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows"],
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

%% @doc Lists all jobs for a given workflow.
-spec list_matching_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_matching_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_matching_jobs_errors(), tuple()}.
list_matching_jobs(Client, WorkflowName)
  when is_map(Client) ->
    list_matching_jobs(Client, WorkflowName, #{}, #{}).

-spec list_matching_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_matching_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_matching_jobs_errors(), tuple()}.
list_matching_jobs(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_matching_jobs(Client, WorkflowName, QueryMap, HeadersMap, []).

-spec list_matching_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_matching_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_matching_jobs_errors(), tuple()}.
list_matching_jobs(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
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

%% @doc Returns a list of all the `MatchingWorkflows' that have been
%% created for an
%% Amazon Web Services account.
-spec list_matching_workflows(aws_client:aws_client()) ->
    {ok, list_matching_workflows_output(), tuple()} |
    {error, any()} |
    {error, list_matching_workflows_errors(), tuple()}.
list_matching_workflows(Client)
  when is_map(Client) ->
    list_matching_workflows(Client, #{}, #{}).

-spec list_matching_workflows(aws_client:aws_client(), map(), map()) ->
    {ok, list_matching_workflows_output(), tuple()} |
    {error, any()} |
    {error, list_matching_workflows_errors(), tuple()}.
list_matching_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_matching_workflows(Client, QueryMap, HeadersMap, []).

-spec list_matching_workflows(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_matching_workflows_output(), tuple()} |
    {error, any()} |
    {error, list_matching_workflows_errors(), tuple()}.
list_matching_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows"],
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

%% @doc Returns a list of all the `ProviderServices' that are available
%% in this
%% Amazon Web Services Region.
-spec list_provider_services(aws_client:aws_client()) ->
    {ok, list_provider_services_output(), tuple()} |
    {error, any()} |
    {error, list_provider_services_errors(), tuple()}.
list_provider_services(Client)
  when is_map(Client) ->
    list_provider_services(Client, #{}, #{}).

-spec list_provider_services(aws_client:aws_client(), map(), map()) ->
    {ok, list_provider_services_output(), tuple()} |
    {error, any()} |
    {error, list_provider_services_errors(), tuple()}.
list_provider_services(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provider_services(Client, QueryMap, HeadersMap, []).

-spec list_provider_services(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_provider_services_output(), tuple()} |
    {error, any()} |
    {error, list_provider_services_errors(), tuple()}.
list_provider_services(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/providerservices"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"providerName">>, maps:get(<<"providerName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the `SchemaMappings' that have been created
%% for an
%% Amazon Web Services account.
-spec list_schema_mappings(aws_client:aws_client()) ->
    {ok, list_schema_mappings_output(), tuple()} |
    {error, any()} |
    {error, list_schema_mappings_errors(), tuple()}.
list_schema_mappings(Client)
  when is_map(Client) ->
    list_schema_mappings(Client, #{}, #{}).

-spec list_schema_mappings(aws_client:aws_client(), map(), map()) ->
    {ok, list_schema_mappings_output(), tuple()} |
    {error, any()} |
    {error, list_schema_mappings_errors(), tuple()}.
list_schema_mappings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schema_mappings(Client, QueryMap, HeadersMap, []).

-spec list_schema_mappings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_schema_mappings_output(), tuple()} |
    {error, any()} |
    {error, list_schema_mappings_errors(), tuple()}.
list_schema_mappings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schemas"],
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

%% @doc Displays the tags associated with an Entity Resolution resource.
%%
%% In Entity Resolution,
%% `SchemaMapping', and `MatchingWorkflow' can be tagged.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Starts the `IdMappingJob' of a workflow.
%%
%% The workflow must have previously
%% been created using the `CreateIdMappingWorkflow' endpoint.
-spec start_id_mapping_job(aws_client:aws_client(), binary() | list(), start_id_mapping_job_input()) ->
    {ok, start_id_mapping_job_output(), tuple()} |
    {error, any()} |
    {error, start_id_mapping_job_errors(), tuple()}.
start_id_mapping_job(Client, WorkflowName, Input) ->
    start_id_mapping_job(Client, WorkflowName, Input, []).

-spec start_id_mapping_job(aws_client:aws_client(), binary() | list(), start_id_mapping_job_input(), proplists:proplist()) ->
    {ok, start_id_mapping_job_output(), tuple()} |
    {error, any()} |
    {error, start_id_mapping_job_errors(), tuple()}.
start_id_mapping_job(Client, WorkflowName, Input0, Options0) ->
    Method = post,
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
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

%% @doc Starts the `MatchingJob' of a workflow.
%%
%% The workflow must have previously
%% been created using the `CreateMatchingWorkflow' endpoint.
-spec start_matching_job(aws_client:aws_client(), binary() | list(), start_matching_job_input()) ->
    {ok, start_matching_job_output(), tuple()} |
    {error, any()} |
    {error, start_matching_job_errors(), tuple()}.
start_matching_job(Client, WorkflowName, Input) ->
    start_matching_job(Client, WorkflowName, Input, []).

-spec start_matching_job(aws_client:aws_client(), binary() | list(), start_matching_job_input(), proplists:proplist()) ->
    {ok, start_matching_job_output(), tuple()} |
    {error, any()} |
    {error, start_matching_job_errors(), tuple()}.
start_matching_job(Client, WorkflowName, Input0, Options0) ->
    Method = post,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified Entity
%% Resolution resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope
%% user permissions by granting a user permission to access or change only
%% resources with
%% certain tag values. In Entity Resolution, `SchemaMapping' and
%% `MatchingWorkflow' can be tagged. Tags don't have any semantic
%% meaning to
%% Amazon Web Services and are interpreted strictly as strings of characters.
%% You can use
%% the `TagResource' action with a resource that already has tags. If you
%% specify a
%% new tag key, this tag is appended to the list of tags associated with the
%% resource. If you
%% specify a tag key that is already associated with the resource, the new
%% tag value that you
%% specify replaces the previous value for that tag.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Removes one or more tags from the specified Entity Resolution
%% resource.
%%
%% In Entity Resolution, `SchemaMapping', and `MatchingWorkflow' can
%% be
%% tagged.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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

%% @doc Updates an existing `IdMappingWorkflow'.
%%
%% This method is identical to
%% `CreateIdMappingWorkflow', except it uses an HTTP `PUT' request
%% instead of a `POST' request, and the `IdMappingWorkflow' must
%% already
%% exist for the method to succeed.
-spec update_id_mapping_workflow(aws_client:aws_client(), binary() | list(), update_id_mapping_workflow_input()) ->
    {ok, update_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, update_id_mapping_workflow_errors(), tuple()}.
update_id_mapping_workflow(Client, WorkflowName, Input) ->
    update_id_mapping_workflow(Client, WorkflowName, Input, []).

-spec update_id_mapping_workflow(aws_client:aws_client(), binary() | list(), update_id_mapping_workflow_input(), proplists:proplist()) ->
    {ok, update_id_mapping_workflow_output(), tuple()} |
    {error, any()} |
    {error, update_id_mapping_workflow_errors(), tuple()}.
update_id_mapping_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = put,
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), ""],
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

%% @doc Updates an existing `MatchingWorkflow'.
%%
%% This method is identical to
%% `CreateMatchingWorkflow', except it uses an HTTP `PUT' request
%% instead of a `POST' request, and the `MatchingWorkflow' must
%% already
%% exist for the method to succeed.
-spec update_matching_workflow(aws_client:aws_client(), binary() | list(), update_matching_workflow_input()) ->
    {ok, update_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, update_matching_workflow_errors(), tuple()}.
update_matching_workflow(Client, WorkflowName, Input) ->
    update_matching_workflow(Client, WorkflowName, Input, []).

-spec update_matching_workflow(aws_client:aws_client(), binary() | list(), update_matching_workflow_input(), proplists:proplist()) ->
    {ok, update_matching_workflow_output(), tuple()} |
    {error, any()} |
    {error, update_matching_workflow_errors(), tuple()}.
update_matching_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = put,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), ""],
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

%% @doc Updates a schema mapping.
%%
%% A schema is immutable if it is being used by a workflow. Therefore, you
%% can't update
%% a schema mapping if it's associated with a workflow.
-spec update_schema_mapping(aws_client:aws_client(), binary() | list(), update_schema_mapping_input()) ->
    {ok, update_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, update_schema_mapping_errors(), tuple()}.
update_schema_mapping(Client, SchemaName, Input) ->
    update_schema_mapping(Client, SchemaName, Input, []).

-spec update_schema_mapping(aws_client:aws_client(), binary() | list(), update_schema_mapping_input(), proplists:proplist()) ->
    {ok, update_schema_mapping_output(), tuple()} |
    {error, any()} |
    {error, update_schema_mapping_errors(), tuple()}.
update_schema_mapping(Client, SchemaName, Input0, Options0) ->
    Method = put,
    Path = ["/schemas/", aws_util:encode_uri(SchemaName), ""],
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
    Client1 = Client#{service => <<"entityresolution">>},
    Host = build_host(<<"entityresolution">>, Client1),
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
