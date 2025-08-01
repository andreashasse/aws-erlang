%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc DataSync
%%
%% DataSync is an online data movement service that simplifies data
%% migration and helps you quickly, easily, and securely transfer your file
%% or object data to,
%% from, and between Amazon Web Services storage services.
%%
%% This API interface reference includes documentation for using DataSync
%% programmatically. For complete information, see the
%% DataSync User
%% Guide:
%% https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html
%% .
-module(aws_datasync).

-export([cancel_task_execution/2,
         cancel_task_execution/3,
         create_agent/2,
         create_agent/3,
         create_location_azure_blob/2,
         create_location_azure_blob/3,
         create_location_efs/2,
         create_location_efs/3,
         create_location_fsx_lustre/2,
         create_location_fsx_lustre/3,
         create_location_fsx_ontap/2,
         create_location_fsx_ontap/3,
         create_location_fsx_open_zfs/2,
         create_location_fsx_open_zfs/3,
         create_location_fsx_windows/2,
         create_location_fsx_windows/3,
         create_location_hdfs/2,
         create_location_hdfs/3,
         create_location_nfs/2,
         create_location_nfs/3,
         create_location_object_storage/2,
         create_location_object_storage/3,
         create_location_s3/2,
         create_location_s3/3,
         create_location_smb/2,
         create_location_smb/3,
         create_task/2,
         create_task/3,
         delete_agent/2,
         delete_agent/3,
         delete_location/2,
         delete_location/3,
         delete_task/2,
         delete_task/3,
         describe_agent/2,
         describe_agent/3,
         describe_location_azure_blob/2,
         describe_location_azure_blob/3,
         describe_location_efs/2,
         describe_location_efs/3,
         describe_location_fsx_lustre/2,
         describe_location_fsx_lustre/3,
         describe_location_fsx_ontap/2,
         describe_location_fsx_ontap/3,
         describe_location_fsx_open_zfs/2,
         describe_location_fsx_open_zfs/3,
         describe_location_fsx_windows/2,
         describe_location_fsx_windows/3,
         describe_location_hdfs/2,
         describe_location_hdfs/3,
         describe_location_nfs/2,
         describe_location_nfs/3,
         describe_location_object_storage/2,
         describe_location_object_storage/3,
         describe_location_s3/2,
         describe_location_s3/3,
         describe_location_smb/2,
         describe_location_smb/3,
         describe_task/2,
         describe_task/3,
         describe_task_execution/2,
         describe_task_execution/3,
         list_agents/2,
         list_agents/3,
         list_locations/2,
         list_locations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_executions/2,
         list_task_executions/3,
         list_tasks/2,
         list_tasks/3,
         start_task_execution/2,
         start_task_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_agent/2,
         update_agent/3,
         update_location_azure_blob/2,
         update_location_azure_blob/3,
         update_location_efs/2,
         update_location_efs/3,
         update_location_fsx_lustre/2,
         update_location_fsx_lustre/3,
         update_location_fsx_ontap/2,
         update_location_fsx_ontap/3,
         update_location_fsx_open_zfs/2,
         update_location_fsx_open_zfs/3,
         update_location_fsx_windows/2,
         update_location_fsx_windows/3,
         update_location_hdfs/2,
         update_location_hdfs/3,
         update_location_nfs/2,
         update_location_nfs/3,
         update_location_object_storage/2,
         update_location_object_storage/3,
         update_location_s3/2,
         update_location_s3/3,
         update_location_smb/2,
         update_location_smb/3,
         update_task/2,
         update_task/3,
         update_task_execution/2,
         update_task_execution/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_location_azure_blob_request() :: #{
%%   <<"AccessTier">> => list(any()),
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"BlobType">> => list(any()),
%%   <<"CmkSecretConfig">> => cmk_secret_config(),
%%   <<"CustomSecretConfig">> => custom_secret_config(),
%%   <<"LocationArn">> := string(),
%%   <<"SasConfiguration">> => azure_blob_sas_configuration(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_azure_blob_request() :: #{binary() => any()}.

%% Example:
%% start_task_execution_response() :: #{
%%   <<"TaskExecutionArn">> => string()
%% }
-type start_task_execution_response() :: #{binary() => any()}.

%% Example:
%% private_link_config() :: #{
%%   <<"PrivateLinkEndpoint">> => string(),
%%   <<"SecurityGroupArns">> => list(string()),
%%   <<"SubnetArns">> => list(string()),
%%   <<"VpcEndpointId">> => string()
%% }
-type private_link_config() :: #{binary() => any()}.

%% Example:
%% create_location_object_storage_request() :: #{
%%   <<"AccessKey">> => string(),
%%   <<"AgentArns">> => list(string()),
%%   <<"BucketName">> := string(),
%%   <<"CmkSecretConfig">> => cmk_secret_config(),
%%   <<"CustomSecretConfig">> => custom_secret_config(),
%%   <<"SecretKey">> => string(),
%%   <<"ServerCertificate">> => binary(),
%%   <<"ServerHostname">> := string(),
%%   <<"ServerPort">> => integer(),
%%   <<"ServerProtocol">> => list(any()),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_object_storage_request() :: #{binary() => any()}.

%% Example:
%% task_execution_files_failed_detail() :: #{
%%   <<"Delete">> => float(),
%%   <<"Prepare">> => float(),
%%   <<"Transfer">> => float(),
%%   <<"Verify">> => float()
%% }
-type task_execution_files_failed_detail() :: #{binary() => any()}.

%% Example:
%% fsx_protocol_nfs() :: #{
%%   <<"MountOptions">> => nfs_mount_options()
%% }
-type fsx_protocol_nfs() :: #{binary() => any()}.

%% Example:
%% task_schedule_details() :: #{
%%   <<"DisabledBy">> => list(any()),
%%   <<"DisabledReason">> => string(),
%%   <<"StatusUpdateTime">> => non_neg_integer()
%% }
-type task_schedule_details() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag_list_entry())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_open_zfs_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_fsx_open_zfs_request() :: #{binary() => any()}.

%% Example:
%% describe_task_request() :: #{
%%   <<"TaskArn">> := string()
%% }
-type describe_task_request() :: #{binary() => any()}.

%% Example:
%% cancel_task_execution_request() :: #{
%%   <<"TaskExecutionArn">> := string()
%% }
-type cancel_task_execution_request() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_ontap_request() :: #{
%%   <<"LocationArn">> := string(),
%%   <<"Protocol">> => fsx_update_protocol(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_fsx_ontap_request() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_lustre_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_fsx_lustre_response() :: #{binary() => any()}.

%% Example:
%% list_agents_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_agents_request() :: #{binary() => any()}.

%% Example:
%% nfs_mount_options() :: #{
%%   <<"Version">> => list(any())
%% }
-type nfs_mount_options() :: #{binary() => any()}.

%% Example:
%% fsx_update_protocol() :: #{
%%   <<"NFS">> => fsx_protocol_nfs(),
%%   <<"SMB">> => fsx_update_protocol_smb()
%% }
-type fsx_update_protocol() :: #{binary() => any()}.

%% Example:
%% update_task_execution_request() :: #{
%%   <<"Options">> := options(),
%%   <<"TaskExecutionArn">> := string()
%% }
-type update_task_execution_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_windows_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Domain">> => string(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"SecurityGroupArns">> => list(string()),
%%   <<"User">> => string()
%% }
-type describe_location_fsx_windows_response() :: #{binary() => any()}.

%% Example:
%% describe_location_nfs_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_nfs_request() :: #{binary() => any()}.

%% Example:
%% cmk_secret_config() :: #{
%%   <<"KmsKeyArn">> => string(),
%%   <<"SecretArn">> => string()
%% }
-type cmk_secret_config() :: #{binary() => any()}.

%% Example:
%% list_agents_response() :: #{
%%   <<"Agents">> => list(agent_list_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_agents_response() :: #{binary() => any()}.

%% Example:
%% filter_rule() :: #{
%%   <<"FilterType">> => list(any()),
%%   <<"Value">> => string()
%% }
-type filter_rule() :: #{binary() => any()}.

%% Example:
%% create_agent_request() :: #{
%%   <<"ActivationKey">> := string(),
%%   <<"AgentName">> => string(),
%%   <<"SecurityGroupArns">> => list(string()),
%%   <<"SubnetArns">> => list(string()),
%%   <<"Tags">> => list(tag_list_entry()),
%%   <<"VpcEndpointId">> => string()
%% }
-type create_agent_request() :: #{binary() => any()}.

%% Example:
%% report_destination() :: #{
%%   <<"S3">> => report_destination_s3()
%% }
-type report_destination() :: #{binary() => any()}.

%% Example:
%% create_location_nfs_request() :: #{
%%   <<"MountOptions">> => nfs_mount_options(),
%%   <<"OnPremConfig">> := on_prem_config(),
%%   <<"ServerHostname">> := string(),
%%   <<"Subdirectory">> := string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_nfs_request() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_ontap_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_fsx_ontap_request() :: #{binary() => any()}.

%% Example:
%% update_location_hdfs_request() :: #{
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"BlockSize">> => integer(),
%%   <<"KerberosKeytab">> => binary(),
%%   <<"KerberosKrb5Conf">> => binary(),
%%   <<"KerberosPrincipal">> => string(),
%%   <<"KmsKeyProviderUri">> => string(),
%%   <<"LocationArn">> := string(),
%%   <<"NameNodes">> => list(hdfs_name_node()),
%%   <<"QopConfiguration">> => qop_configuration(),
%%   <<"ReplicationFactor">> => integer(),
%%   <<"SimpleUser">> => string(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_hdfs_request() :: #{binary() => any()}.

%% Example:
%% location_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type location_filter() :: #{binary() => any()}.

%% Example:
%% create_task_request() :: #{
%%   <<"CloudWatchLogGroupArn">> => string(),
%%   <<"DestinationLocationArn">> := string(),
%%   <<"Excludes">> => list(filter_rule()),
%%   <<"Includes">> => list(filter_rule()),
%%   <<"ManifestConfig">> => manifest_config(),
%%   <<"Name">> => string(),
%%   <<"Options">> => options(),
%%   <<"Schedule">> => task_schedule(),
%%   <<"SourceLocationArn">> := string(),
%%   <<"Tags">> => list(tag_list_entry()),
%%   <<"TaskMode">> => list(any()),
%%   <<"TaskReportConfig">> => task_report_config()
%% }
-type create_task_request() :: #{binary() => any()}.

%% Example:
%% task_schedule() :: #{
%%   <<"ScheduleExpression">> => string(),
%%   <<"Status">> => list(any())
%% }
-type task_schedule() :: #{binary() => any()}.

%% Example:
%% report_result() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorDetail">> => string(),
%%   <<"Status">> => list(any())
%% }
-type report_result() :: #{binary() => any()}.

%% Example:
%% task_list_entry() :: #{
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskMode">> => list(any())
%% }
-type task_list_entry() :: #{binary() => any()}.

%% Example:
%% cancel_task_execution_response() :: #{

%% }
-type cancel_task_execution_response() :: #{binary() => any()}.

%% Example:
%% delete_location_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type delete_location_request() :: #{binary() => any()}.

%% Example:
%% describe_location_object_storage_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_object_storage_request() :: #{binary() => any()}.

%% Example:
%% update_location_nfs_response() :: #{

%% }
-type update_location_nfs_response() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_lustre_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"SecurityGroupArns">> => list(string())
%% }
-type describe_location_fsx_lustre_response() :: #{binary() => any()}.

%% Example:
%% task_execution_result_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorDetail">> => string(),
%%   <<"PrepareDuration">> => float(),
%%   <<"PrepareStatus">> => list(any()),
%%   <<"TotalDuration">> => float(),
%%   <<"TransferDuration">> => float(),
%%   <<"TransferStatus">> => list(any()),
%%   <<"VerifyDuration">> => float(),
%%   <<"VerifyStatus">> => list(any())
%% }
-type task_execution_result_detail() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"Keys">> := list(string()),
%%   <<"ResourceArn">> := string()
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_location_efs_response() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Ec2Config">> => ec2_config(),
%%   <<"FileSystemAccessRoleArn">> => string(),
%%   <<"InTransitEncryption">> => list(any()),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string()
%% }
-type describe_location_efs_response() :: #{binary() => any()}.

%% Example:
%% managed_secret_config() :: #{
%%   <<"SecretArn">> => string()
%% }
-type managed_secret_config() :: #{binary() => any()}.

%% Example:
%% qop_configuration() :: #{
%%   <<"DataTransferProtection">> => list(any()),
%%   <<"RpcProtection">> => list(any())
%% }
-type qop_configuration() :: #{binary() => any()}.

%% Example:
%% update_location_smb_response() :: #{

%% }
-type update_location_smb_response() :: #{binary() => any()}.

%% Example:
%% fsx_protocol() :: #{
%%   <<"NFS">> => fsx_protocol_nfs(),
%%   <<"SMB">> => fsx_protocol_smb()
%% }
-type fsx_protocol() :: #{binary() => any()}.

%% Example:
%% report_overrides() :: #{
%%   <<"Deleted">> => report_override(),
%%   <<"Skipped">> => report_override(),
%%   <<"Transferred">> => report_override(),
%%   <<"Verified">> => report_override()
%% }
-type report_overrides() :: #{binary() => any()}.

%% Example:
%% agent_list_entry() :: #{
%%   <<"AgentArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Platform">> => platform(),
%%   <<"Status">> => list(any())
%% }
-type agent_list_entry() :: #{binary() => any()}.

%% Example:
%% create_location_azure_blob_request() :: #{
%%   <<"AccessTier">> => list(any()),
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> := list(any()),
%%   <<"BlobType">> => list(any()),
%%   <<"CmkSecretConfig">> => cmk_secret_config(),
%%   <<"ContainerUrl">> := string(),
%%   <<"CustomSecretConfig">> => custom_secret_config(),
%%   <<"SasConfiguration">> => azure_blob_sas_configuration(),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_azure_blob_request() :: #{binary() => any()}.

%% Example:
%% describe_agent_response() :: #{
%%   <<"AgentArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointType">> => list(any()),
%%   <<"LastConnectionTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Platform">> => platform(),
%%   <<"PrivateLinkConfig">> => private_link_config(),
%%   <<"Status">> => list(any())
%% }
-type describe_agent_response() :: #{binary() => any()}.

%% Example:
%% options() :: #{
%%   <<"Atime">> => list(any()),
%%   <<"BytesPerSecond">> => float(),
%%   <<"Gid">> => list(any()),
%%   <<"LogLevel">> => list(any()),
%%   <<"Mtime">> => list(any()),
%%   <<"ObjectTags">> => list(any()),
%%   <<"OverwriteMode">> => list(any()),
%%   <<"PosixPermissions">> => list(any()),
%%   <<"PreserveDeletedFiles">> => list(any()),
%%   <<"PreserveDevices">> => list(any()),
%%   <<"SecurityDescriptorCopyFlags">> => list(any()),
%%   <<"TaskQueueing">> => list(any()),
%%   <<"TransferMode">> => list(any()),
%%   <<"Uid">> => list(any()),
%%   <<"VerifyMode">> => list(any())
%% }
-type options() :: #{binary() => any()}.

%% Example:
%% task_report_config() :: #{
%%   <<"Destination">> => report_destination(),
%%   <<"ObjectVersionIds">> => list(any()),
%%   <<"OutputType">> => list(any()),
%%   <<"Overrides">> => report_overrides(),
%%   <<"ReportLevel">> => list(any())
%% }
-type task_report_config() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_lustre_response() :: #{

%% }
-type update_location_fsx_lustre_response() :: #{binary() => any()}.

%% Example:
%% s3_manifest_config() :: #{
%%   <<"BucketAccessRoleArn">> => string(),
%%   <<"ManifestObjectPath">> => string(),
%%   <<"ManifestObjectVersionId">> => string(),
%%   <<"S3BucketArn">> => string()
%% }
-type s3_manifest_config() :: #{binary() => any()}.

%% Example:
%% update_location_smb_request() :: #{
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"DnsIpAddresses">> => list(string()),
%%   <<"Domain">> => string(),
%%   <<"KerberosKeytab">> => binary(),
%%   <<"KerberosKrb5Conf">> => binary(),
%%   <<"KerberosPrincipal">> => string(),
%%   <<"LocationArn">> := string(),
%%   <<"MountOptions">> => smb_mount_options(),
%%   <<"Password">> => string(),
%%   <<"ServerHostname">> => string(),
%%   <<"Subdirectory">> => string(),
%%   <<"User">> => string()
%% }
-type update_location_smb_request() :: #{binary() => any()}.

%% Example:
%% create_agent_response() :: #{
%%   <<"AgentArn">> => string()
%% }
-type create_agent_response() :: #{binary() => any()}.

%% Example:
%% create_location_azure_blob_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_azure_blob_response() :: #{binary() => any()}.

%% Example:
%% create_location_nfs_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_nfs_response() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_ontap_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FsxFilesystemArn">> => string(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"Protocol">> => fsx_protocol(),
%%   <<"SecurityGroupArns">> => list(string()),
%%   <<"StorageVirtualMachineArn">> => string()
%% }
-type describe_location_fsx_ontap_response() :: #{binary() => any()}.

%% Example:
%% tag_list_entry() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag_list_entry() :: #{binary() => any()}.

%% Example:
%% update_task_response() :: #{

%% }
-type update_task_response() :: #{binary() => any()}.

%% Example:
%% update_location_efs_response() :: #{

%% }
-type update_location_efs_response() :: #{binary() => any()}.

%% Example:
%% update_agent_response() :: #{

%% }
-type update_agent_response() :: #{binary() => any()}.

%% Example:
%% fsx_update_protocol_smb() :: #{
%%   <<"Domain">> => string(),
%%   <<"MountOptions">> => smb_mount_options(),
%%   <<"Password">> => string(),
%%   <<"User">> => string()
%% }
-type fsx_update_protocol_smb() :: #{binary() => any()}.

%% Example:
%% report_override() :: #{
%%   <<"ReportLevel">> => list(any())
%% }
-type report_override() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"datasyncErrorCode">> => string(),
%%   <<"errorCode">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% list_task_executions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TaskExecutions">> => list(task_execution_list_entry())
%% }
-type list_task_executions_response() :: #{binary() => any()}.

%% Example:
%% on_prem_config() :: #{
%%   <<"AgentArns">> => list(string())
%% }
-type on_prem_config() :: #{binary() => any()}.

%% Example:
%% platform() :: #{
%%   <<"Version">> => string()
%% }
-type platform() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_open_zfs_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_fsx_open_zfs_response() :: #{binary() => any()}.

%% Example:
%% s3_config() :: #{
%%   <<"BucketAccessRoleArn">> => string()
%% }
-type s3_config() :: #{binary() => any()}.

%% Example:
%% list_task_executions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TaskArn">> => string()
%% }
-type list_task_executions_request() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_ontap_request() :: #{
%%   <<"Protocol">> := fsx_protocol(),
%%   <<"SecurityGroupArns">> := list(string()),
%%   <<"StorageVirtualMachineArn">> := string(),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_fsx_ontap_request() :: #{binary() => any()}.

%% Example:
%% create_location_hdfs_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_hdfs_response() :: #{binary() => any()}.

%% Example:
%% describe_task_response() :: #{
%%   <<"CloudWatchLogGroupArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CurrentTaskExecutionArn">> => string(),
%%   <<"DestinationLocationArn">> => string(),
%%   <<"DestinationNetworkInterfaceArns">> => list(string()),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorDetail">> => string(),
%%   <<"Excludes">> => list(filter_rule()),
%%   <<"Includes">> => list(filter_rule()),
%%   <<"ManifestConfig">> => manifest_config(),
%%   <<"Name">> => string(),
%%   <<"Options">> => options(),
%%   <<"Schedule">> => task_schedule(),
%%   <<"ScheduleDetails">> => task_schedule_details(),
%%   <<"SourceLocationArn">> => string(),
%%   <<"SourceNetworkInterfaceArns">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"TaskArn">> => string(),
%%   <<"TaskMode">> => list(any()),
%%   <<"TaskReportConfig">> => task_report_config()
%% }
-type describe_task_response() :: #{binary() => any()}.

%% Example:
%% create_location_smb_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_smb_response() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_lustre_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_fsx_lustre_request() :: #{binary() => any()}.

%% Example:
%% create_location_s3_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_s3_response() :: #{binary() => any()}.

%% Example:
%% task_execution_list_entry() :: #{
%%   <<"Status">> => list(any()),
%%   <<"TaskExecutionArn">> => string(),
%%   <<"TaskMode">> => list(any())
%% }
-type task_execution_list_entry() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_open_zfs_response() :: #{

%% }
-type update_location_fsx_open_zfs_response() :: #{binary() => any()}.

%% Example:
%% update_location_object_storage_response() :: #{

%% }
-type update_location_object_storage_response() :: #{binary() => any()}.

%% Example:
%% describe_location_nfs_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"MountOptions">> => nfs_mount_options(),
%%   <<"OnPremConfig">> => on_prem_config()
%% }
-type describe_location_nfs_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_open_zfs_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"Protocol">> => fsx_protocol(),
%%   <<"SecurityGroupArns">> => list(string())
%% }
-type describe_location_fsx_open_zfs_response() :: #{binary() => any()}.

%% Example:
%% list_locations_request() :: #{
%%   <<"Filters">> => list(location_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_locations_request() :: #{binary() => any()}.

%% Example:
%% create_location_s3_request() :: #{
%%   <<"AgentArns">> => list(string()),
%%   <<"S3BucketArn">> := string(),
%%   <<"S3Config">> := s3_config(),
%%   <<"S3StorageClass">> => list(any()),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_s3_request() :: #{binary() => any()}.

%% Example:
%% create_location_efs_request() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"Ec2Config">> := ec2_config(),
%%   <<"EfsFilesystemArn">> := string(),
%%   <<"FileSystemAccessRoleArn">> => string(),
%%   <<"InTransitEncryption">> => list(any()),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_efs_request() :: #{binary() => any()}.

%% Example:
%% delete_agent_response() :: #{

%% }
-type delete_agent_response() :: #{binary() => any()}.

%% Example:
%% update_task_request() :: #{
%%   <<"CloudWatchLogGroupArn">> => string(),
%%   <<"Excludes">> => list(filter_rule()),
%%   <<"Includes">> => list(filter_rule()),
%%   <<"ManifestConfig">> => manifest_config(),
%%   <<"Name">> => string(),
%%   <<"Options">> => options(),
%%   <<"Schedule">> => task_schedule(),
%%   <<"TaskArn">> := string(),
%%   <<"TaskReportConfig">> => task_report_config()
%% }
-type update_task_request() :: #{binary() => any()}.

%% Example:
%% update_location_azure_blob_response() :: #{

%% }
-type update_location_azure_blob_response() :: #{binary() => any()}.

%% Example:
%% source_manifest_config() :: #{
%%   <<"S3">> => s3_manifest_config()
%% }
-type source_manifest_config() :: #{binary() => any()}.

%% Example:
%% task_execution_files_listed_detail() :: #{
%%   <<"AtDestinationForDelete">> => float(),
%%   <<"AtSource">> => float()
%% }
-type task_execution_files_listed_detail() :: #{binary() => any()}.

%% Example:
%% describe_location_smb_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_smb_request() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_open_zfs_request() :: #{
%%   <<"FsxFilesystemArn">> := string(),
%%   <<"Protocol">> := fsx_protocol(),
%%   <<"SecurityGroupArns">> := list(string()),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_fsx_open_zfs_request() :: #{binary() => any()}.

%% Example:
%% describe_task_execution_response() :: #{
%%   <<"BytesCompressed">> => float(),
%%   <<"BytesTransferred">> => float(),
%%   <<"BytesWritten">> => float(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EstimatedBytesToTransfer">> => float(),
%%   <<"EstimatedFilesToDelete">> => float(),
%%   <<"EstimatedFilesToTransfer">> => float(),
%%   <<"Excludes">> => list(filter_rule()),
%%   <<"FilesDeleted">> => float(),
%%   <<"FilesFailed">> => task_execution_files_failed_detail(),
%%   <<"FilesListed">> => task_execution_files_listed_detail(),
%%   <<"FilesPrepared">> => float(),
%%   <<"FilesSkipped">> => float(),
%%   <<"FilesTransferred">> => float(),
%%   <<"FilesVerified">> => float(),
%%   <<"Includes">> => list(filter_rule()),
%%   <<"LaunchTime">> => non_neg_integer(),
%%   <<"ManifestConfig">> => manifest_config(),
%%   <<"Options">> => options(),
%%   <<"ReportResult">> => report_result(),
%%   <<"Result">> => task_execution_result_detail(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskExecutionArn">> => string(),
%%   <<"TaskMode">> => list(any()),
%%   <<"TaskReportConfig">> => task_report_config()
%% }
-type describe_task_execution_response() :: #{binary() => any()}.

%% Example:
%% update_location_s3_response() :: #{

%% }
-type update_location_s3_response() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_windows_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_fsx_windows_response() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_windows_request() :: #{
%%   <<"Domain">> => string(),
%%   <<"FsxFilesystemArn">> := string(),
%%   <<"Password">> := string(),
%%   <<"SecurityGroupArns">> := list(string()),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry()),
%%   <<"User">> := string()
%% }
-type create_location_fsx_windows_request() :: #{binary() => any()}.

%% Example:
%% update_task_execution_response() :: #{

%% }
-type update_task_execution_response() :: #{binary() => any()}.

%% Example:
%% create_location_smb_request() :: #{
%%   <<"AgentArns">> := list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"DnsIpAddresses">> => list(string()),
%%   <<"Domain">> => string(),
%%   <<"KerberosKeytab">> => binary(),
%%   <<"KerberosKrb5Conf">> => binary(),
%%   <<"KerberosPrincipal">> => string(),
%%   <<"MountOptions">> => smb_mount_options(),
%%   <<"Password">> => string(),
%%   <<"ServerHostname">> := string(),
%%   <<"Subdirectory">> := string(),
%%   <<"Tags">> => list(tag_list_entry()),
%%   <<"User">> => string()
%% }
-type create_location_smb_request() :: #{binary() => any()}.

%% Example:
%% delete_location_response() :: #{

%% }
-type delete_location_response() :: #{binary() => any()}.

%% Example:
%% describe_agent_request() :: #{
%%   <<"AgentArn">> := string()
%% }
-type describe_agent_request() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_lustre_request() :: #{
%%   <<"LocationArn">> := string(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_fsx_lustre_request() :: #{binary() => any()}.

%% Example:
%% report_destination_s3() :: #{
%%   <<"BucketAccessRoleArn">> => string(),
%%   <<"S3BucketArn">> => string(),
%%   <<"Subdirectory">> => string()
%% }
-type report_destination_s3() :: #{binary() => any()}.

%% Example:
%% update_location_efs_request() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"FileSystemAccessRoleArn">> => string(),
%%   <<"InTransitEncryption">> => list(any()),
%%   <<"LocationArn">> := string(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_efs_request() :: #{binary() => any()}.

%% Example:
%% describe_location_azure_blob_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_azure_blob_request() :: #{binary() => any()}.

%% Example:
%% azure_blob_sas_configuration() :: #{
%%   <<"Token">> => string()
%% }
-type azure_blob_sas_configuration() :: #{binary() => any()}.

%% Example:
%% location_list_entry() :: #{
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string()
%% }
-type location_list_entry() :: #{binary() => any()}.

%% Example:
%% internal_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.

%% Example:
%% describe_location_s3_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_s3_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_location_hdfs_request() :: #{
%%   <<"AgentArns">> := list(string()),
%%   <<"AuthenticationType">> := list(any()),
%%   <<"BlockSize">> => integer(),
%%   <<"KerberosKeytab">> => binary(),
%%   <<"KerberosKrb5Conf">> => binary(),
%%   <<"KerberosPrincipal">> => string(),
%%   <<"KmsKeyProviderUri">> => string(),
%%   <<"NameNodes">> := list(hdfs_name_node()),
%%   <<"QopConfiguration">> => qop_configuration(),
%%   <<"ReplicationFactor">> => integer(),
%%   <<"SimpleUser">> => string(),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_hdfs_request() :: #{binary() => any()}.

%% Example:
%% update_location_hdfs_response() :: #{

%% }
-type update_location_hdfs_response() :: #{binary() => any()}.

%% Example:
%% update_agent_request() :: #{
%%   <<"AgentArn">> := string(),
%%   <<"Name">> => string()
%% }
-type update_agent_request() :: #{binary() => any()}.

%% Example:
%% delete_agent_request() :: #{
%%   <<"AgentArn">> := string()
%% }
-type delete_agent_request() :: #{binary() => any()}.

%% Example:
%% delete_task_request() :: #{
%%   <<"TaskArn">> := string()
%% }
-type delete_task_request() :: #{binary() => any()}.

%% Example:
%% update_location_nfs_request() :: #{
%%   <<"LocationArn">> := string(),
%%   <<"MountOptions">> => nfs_mount_options(),
%%   <<"OnPremConfig">> => on_prem_config(),
%%   <<"ServerHostname">> => string(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_nfs_request() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_lustre_request() :: #{
%%   <<"FsxFilesystemArn">> := string(),
%%   <<"SecurityGroupArns">> := list(string()),
%%   <<"Subdirectory">> => string(),
%%   <<"Tags">> => list(tag_list_entry())
%% }
-type create_location_fsx_lustre_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_ontap_response() :: #{

%% }
-type update_location_fsx_ontap_response() :: #{binary() => any()}.

%% Example:
%% create_task_response() :: #{
%%   <<"TaskArn">> => string()
%% }
-type create_task_response() :: #{binary() => any()}.

%% Example:
%% update_location_s3_request() :: #{
%%   <<"LocationArn">> := string(),
%%   <<"S3Config">> => s3_config(),
%%   <<"S3StorageClass">> => list(any()),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_s3_request() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_windows_request() :: #{
%%   <<"Domain">> => string(),
%%   <<"LocationArn">> := string(),
%%   <<"Password">> => string(),
%%   <<"Subdirectory">> => string(),
%%   <<"User">> => string()
%% }
-type update_location_fsx_windows_request() :: #{binary() => any()}.

%% Example:
%% update_location_object_storage_request() :: #{
%%   <<"AccessKey">> => string(),
%%   <<"AgentArns">> => list(string()),
%%   <<"CmkSecretConfig">> => cmk_secret_config(),
%%   <<"CustomSecretConfig">> => custom_secret_config(),
%%   <<"LocationArn">> := string(),
%%   <<"SecretKey">> => string(),
%%   <<"ServerCertificate">> => binary(),
%%   <<"ServerHostname">> => string(),
%%   <<"ServerPort">> => integer(),
%%   <<"ServerProtocol">> => list(any()),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_object_storage_request() :: #{binary() => any()}.

%% Example:
%% list_tasks_request() :: #{
%%   <<"Filters">> => list(task_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tasks_request() :: #{binary() => any()}.

%% Example:
%% fsx_protocol_smb() :: #{
%%   <<"Domain">> => string(),
%%   <<"MountOptions">> => smb_mount_options(),
%%   <<"Password">> => string(),
%%   <<"User">> => string()
%% }
-type fsx_protocol_smb() :: #{binary() => any()}.

%% Example:
%% describe_task_execution_request() :: #{
%%   <<"TaskExecutionArn">> := string()
%% }
-type describe_task_execution_request() :: #{binary() => any()}.

%% Example:
%% hdfs_name_node() :: #{
%%   <<"Hostname">> => string(),
%%   <<"Port">> => integer()
%% }
-type hdfs_name_node() :: #{binary() => any()}.

%% Example:
%% smb_mount_options() :: #{
%%   <<"Version">> => list(any())
%% }
-type smb_mount_options() :: #{binary() => any()}.

%% Example:
%% list_locations_response() :: #{
%%   <<"Locations">> => list(location_list_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_locations_response() :: #{binary() => any()}.

%% Example:
%% describe_location_hdfs_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_hdfs_request() :: #{binary() => any()}.

%% Example:
%% describe_location_efs_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_efs_request() :: #{binary() => any()}.

%% Example:
%% list_tasks_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tasks">> => list(task_list_entry())
%% }
-type list_tasks_response() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_windows_response() :: #{

%% }
-type update_location_fsx_windows_response() :: #{binary() => any()}.

%% Example:
%% describe_location_azure_blob_response() :: #{
%%   <<"AccessTier">> => list(any()),
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"BlobType">> => list(any()),
%%   <<"CmkSecretConfig">> => cmk_secret_config(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomSecretConfig">> => custom_secret_config(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"ManagedSecretConfig">> => managed_secret_config()
%% }
-type describe_location_azure_blob_response() :: #{binary() => any()}.

%% Example:
%% create_location_efs_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_efs_response() :: #{binary() => any()}.

%% Example:
%% task_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type task_filter() :: #{binary() => any()}.

%% Example:
%% update_location_fsx_open_zfs_request() :: #{
%%   <<"LocationArn">> := string(),
%%   <<"Protocol">> => fsx_protocol(),
%%   <<"Subdirectory">> => string()
%% }
-type update_location_fsx_open_zfs_request() :: #{binary() => any()}.

%% Example:
%% ec2_config() :: #{
%%   <<"SecurityGroupArns">> => list(string()),
%%   <<"SubnetArn">> => string()
%% }
-type ec2_config() :: #{binary() => any()}.

%% Example:
%% describe_location_hdfs_response() :: #{
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"BlockSize">> => integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"KerberosPrincipal">> => string(),
%%   <<"KmsKeyProviderUri">> => string(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"NameNodes">> => list(hdfs_name_node()),
%%   <<"QopConfiguration">> => qop_configuration(),
%%   <<"ReplicationFactor">> => integer(),
%%   <<"SimpleUser">> => string()
%% }
-type describe_location_hdfs_response() :: #{binary() => any()}.

%% Example:
%% describe_location_fsx_windows_request() :: #{
%%   <<"LocationArn">> := string()
%% }
-type describe_location_fsx_windows_request() :: #{binary() => any()}.

%% Example:
%% create_location_object_storage_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_object_storage_response() :: #{binary() => any()}.

%% Example:
%% describe_location_object_storage_response() :: #{
%%   <<"AccessKey">> => string(),
%%   <<"AgentArns">> => list(string()),
%%   <<"CmkSecretConfig">> => cmk_secret_config(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomSecretConfig">> => custom_secret_config(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"ManagedSecretConfig">> => managed_secret_config(),
%%   <<"ServerCertificate">> => binary(),
%%   <<"ServerPort">> => integer(),
%%   <<"ServerProtocol">> => list(any())
%% }
-type describe_location_object_storage_response() :: #{binary() => any()}.

%% Example:
%% describe_location_smb_response() :: #{
%%   <<"AgentArns">> => list(string()),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DnsIpAddresses">> => list(string()),
%%   <<"Domain">> => string(),
%%   <<"KerberosPrincipal">> => string(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"MountOptions">> => smb_mount_options(),
%%   <<"User">> => string()
%% }
-type describe_location_smb_response() :: #{binary() => any()}.

%% Example:
%% manifest_config() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"Source">> => source_manifest_config()
%% }
-type manifest_config() :: #{binary() => any()}.

%% Example:
%% delete_task_response() :: #{

%% }
-type delete_task_response() :: #{binary() => any()}.

%% Example:
%% custom_secret_config() :: #{
%%   <<"SecretAccessRoleArn">> => string(),
%%   <<"SecretArn">> => string()
%% }
-type custom_secret_config() :: #{binary() => any()}.

%% Example:
%% describe_location_s3_response() :: #{
%%   <<"AgentArns">> => list(string()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LocationArn">> => string(),
%%   <<"LocationUri">> => string(),
%%   <<"S3Config">> => s3_config(),
%%   <<"S3StorageClass">> => list(any())
%% }
-type describe_location_s3_response() :: #{binary() => any()}.

%% Example:
%% start_task_execution_request() :: #{
%%   <<"Excludes">> => list(filter_rule()),
%%   <<"Includes">> => list(filter_rule()),
%%   <<"ManifestConfig">> => manifest_config(),
%%   <<"OverrideOptions">> => options(),
%%   <<"Tags">> => list(tag_list_entry()),
%%   <<"TaskArn">> := string(),
%%   <<"TaskReportConfig">> => task_report_config()
%% }
-type start_task_execution_request() :: #{binary() => any()}.

%% Example:
%% create_location_fsx_ontap_response() :: #{
%%   <<"LocationArn">> => string()
%% }
-type create_location_fsx_ontap_response() :: #{binary() => any()}.

-type cancel_task_execution_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_agent_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_azure_blob_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_efs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_fsx_lustre_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_fsx_ontap_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_fsx_open_zfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_fsx_windows_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_hdfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_nfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_object_storage_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_s3_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_location_smb_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type create_task_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type delete_agent_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type delete_location_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type delete_task_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_agent_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_azure_blob_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_efs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_fsx_lustre_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_fsx_ontap_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_fsx_open_zfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_fsx_windows_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_hdfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_nfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_object_storage_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_s3_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_location_smb_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_task_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type describe_task_execution_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type list_agents_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type list_locations_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type list_task_executions_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type list_tasks_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type start_task_execution_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type tag_resource_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type untag_resource_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_agent_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_azure_blob_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_efs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_fsx_lustre_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_fsx_ontap_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_fsx_open_zfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_fsx_windows_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_hdfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_nfs_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_object_storage_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_s3_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_location_smb_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_task_errors() ::
    internal_exception() | 
    invalid_request_exception().

-type update_task_execution_errors() ::
    internal_exception() | 
    invalid_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Stops an DataSync task execution that's in progress.
%%
%% The transfer of some
%% files are abruptly interrupted. File contents that're transferred to
%% the destination might be
%% incomplete or inconsistent with the source files.
%%
%% However, if you start a new task execution using the same task and allow
%% it to finish,
%% file content on the destination will be complete and consistent. This
%% applies to other
%% unexpected failures that interrupt a task execution. In all of these
%% cases, DataSync
%% successfully completes the transfer when you start the next task
%% execution.
-spec cancel_task_execution(aws_client:aws_client(), cancel_task_execution_request()) ->
    {ok, cancel_task_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_task_execution_errors(), tuple()}.
cancel_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_task_execution(Client, Input, []).

-spec cancel_task_execution(aws_client:aws_client(), cancel_task_execution_request(), proplists:proplist()) ->
    {ok, cancel_task_execution_response(), tuple()} |
    {error, any()} |
    {error, cancel_task_execution_errors(), tuple()}.
cancel_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelTaskExecution">>, Input, Options).

%% @doc Activates an DataSync agent that you deploy in your storage
%% environment.
%%
%% The activation process associates the agent with your Amazon Web Services
%% account.
%%
%% If you haven't deployed an agent yet, see Do I need a DataSync
%% agent?:
%% https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html
-spec create_agent(aws_client:aws_client(), create_agent_request()) ->
    {ok, create_agent_response(), tuple()} |
    {error, any()} |
    {error, create_agent_errors(), tuple()}.
create_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_agent(Client, Input, []).

-spec create_agent(aws_client:aws_client(), create_agent_request(), proplists:proplist()) ->
    {ok, create_agent_response(), tuple()} |
    {error, any()} |
    {error, create_agent_errors(), tuple()}.
create_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAgent">>, Input, Options).

%% @doc Creates a transfer location for a Microsoft Azure Blob Storage
%% container.
%%
%% DataSync can use this location as a transfer source or destination.
%% You can make transfers with or without a DataSync agent:
%% https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-creating-agent
%% that connects to your
%% container.
%%
%% Before you begin, make sure you know how DataSync accesses Azure Blob
%% Storage:
%% https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access
%% and works with access tiers:
%% https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers
%% and blob types:
%% https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#blob-types.
-spec create_location_azure_blob(aws_client:aws_client(), create_location_azure_blob_request()) ->
    {ok, create_location_azure_blob_response(), tuple()} |
    {error, any()} |
    {error, create_location_azure_blob_errors(), tuple()}.
create_location_azure_blob(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_azure_blob(Client, Input, []).

-spec create_location_azure_blob(aws_client:aws_client(), create_location_azure_blob_request(), proplists:proplist()) ->
    {ok, create_location_azure_blob_response(), tuple()} |
    {error, any()} |
    {error, create_location_azure_blob_errors(), tuple()}.
create_location_azure_blob(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationAzureBlob">>, Input, Options).

%% @doc Creates a transfer location for an Amazon EFS file system.
%%
%% DataSync can use this location as a source or destination for transferring
%% data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses
%% Amazon EFS file systems:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-access.
-spec create_location_efs(aws_client:aws_client(), create_location_efs_request()) ->
    {ok, create_location_efs_response(), tuple()} |
    {error, any()} |
    {error, create_location_efs_errors(), tuple()}.
create_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_efs(Client, Input, []).

-spec create_location_efs(aws_client:aws_client(), create_location_efs_request(), proplists:proplist()) ->
    {ok, create_location_efs_response(), tuple()} |
    {error, any()} |
    {error, create_location_efs_errors(), tuple()}.
create_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationEfs">>, Input, Options).

%% @doc Creates a transfer location for an Amazon FSx for Lustre file
%% system.
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses FSx for Lustre file systems:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html#create-lustre-location-access.
-spec create_location_fsx_lustre(aws_client:aws_client(), create_location_fsx_lustre_request()) ->
    {ok, create_location_fsx_lustre_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_lustre_errors(), tuple()}.
create_location_fsx_lustre(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_lustre(Client, Input, []).

-spec create_location_fsx_lustre(aws_client:aws_client(), create_location_fsx_lustre_request(), proplists:proplist()) ->
    {ok, create_location_fsx_lustre_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_lustre_errors(), tuple()}.
create_location_fsx_lustre(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxLustre">>, Input, Options).

%% @doc Creates a transfer location for an Amazon FSx for NetApp ONTAP file
%% system.
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses FSx for ONTAP file systems:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access.
-spec create_location_fsx_ontap(aws_client:aws_client(), create_location_fsx_ontap_request()) ->
    {ok, create_location_fsx_ontap_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_ontap_errors(), tuple()}.
create_location_fsx_ontap(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_ontap(Client, Input, []).

-spec create_location_fsx_ontap(aws_client:aws_client(), create_location_fsx_ontap_request(), proplists:proplist()) ->
    {ok, create_location_fsx_ontap_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_ontap_errors(), tuple()}.
create_location_fsx_ontap(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxOntap">>, Input, Options).

%% @doc Creates a transfer location for an Amazon FSx for OpenZFS file
%% system.
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses
%% FSx for OpenZFS file systems:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html#create-openzfs-access.
%%
%% Request parameters related to `SMB' aren't supported with the
%% `CreateLocationFsxOpenZfs' operation.
-spec create_location_fsx_open_zfs(aws_client:aws_client(), create_location_fsx_open_zfs_request()) ->
    {ok, create_location_fsx_open_zfs_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_open_zfs_errors(), tuple()}.
create_location_fsx_open_zfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_open_zfs(Client, Input, []).

-spec create_location_fsx_open_zfs(aws_client:aws_client(), create_location_fsx_open_zfs_request(), proplists:proplist()) ->
    {ok, create_location_fsx_open_zfs_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_open_zfs_errors(), tuple()}.
create_location_fsx_open_zfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxOpenZfs">>, Input, Options).

%% @doc Creates a transfer location for an Amazon FSx for Windows File Server
%% file
%% system.
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses
%% FSx for Windows File Server file systems:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-location-access.
-spec create_location_fsx_windows(aws_client:aws_client(), create_location_fsx_windows_request()) ->
    {ok, create_location_fsx_windows_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_windows_errors(), tuple()}.
create_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_windows(Client, Input, []).

-spec create_location_fsx_windows(aws_client:aws_client(), create_location_fsx_windows_request(), proplists:proplist()) ->
    {ok, create_location_fsx_windows_response(), tuple()} |
    {error, any()} |
    {error, create_location_fsx_windows_errors(), tuple()}.
create_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxWindows">>, Input, Options).

%% @doc Creates a transfer location for a Hadoop Distributed File System
%% (HDFS).
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses HDFS
%% clusters:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html#accessing-hdfs.
-spec create_location_hdfs(aws_client:aws_client(), create_location_hdfs_request()) ->
    {ok, create_location_hdfs_response(), tuple()} |
    {error, any()} |
    {error, create_location_hdfs_errors(), tuple()}.
create_location_hdfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_hdfs(Client, Input, []).

-spec create_location_hdfs(aws_client:aws_client(), create_location_hdfs_request(), proplists:proplist()) ->
    {ok, create_location_hdfs_response(), tuple()} |
    {error, any()} |
    {error, create_location_hdfs_errors(), tuple()}.
create_location_hdfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationHdfs">>, Input, Options).

%% @doc Creates a transfer location for a Network File System (NFS) file
%% server.
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync
%% accesses NFS file
%% servers:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs.
-spec create_location_nfs(aws_client:aws_client(), create_location_nfs_request()) ->
    {ok, create_location_nfs_response(), tuple()} |
    {error, any()} |
    {error, create_location_nfs_errors(), tuple()}.
create_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_nfs(Client, Input, []).

-spec create_location_nfs(aws_client:aws_client(), create_location_nfs_request(), proplists:proplist()) ->
    {ok, create_location_nfs_response(), tuple()} |
    {error, any()} |
    {error, create_location_nfs_errors(), tuple()}.
create_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationNfs">>, Input, Options).

%% @doc Creates a transfer location for an object storage system.
%%
%% DataSync can use this location as a source or destination for transferring
%% data. You
%% can make transfers with or without a DataSync
%% agent:
%% https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#when-agent-required.
%%
%% Before you begin, make sure that you understand the prerequisites:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html#create-object-location-prerequisites
%% for DataSync to work with object storage systems.
-spec create_location_object_storage(aws_client:aws_client(), create_location_object_storage_request()) ->
    {ok, create_location_object_storage_response(), tuple()} |
    {error, any()} |
    {error, create_location_object_storage_errors(), tuple()}.
create_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_object_storage(Client, Input, []).

-spec create_location_object_storage(aws_client:aws_client(), create_location_object_storage_request(), proplists:proplist()) ->
    {ok, create_location_object_storage_response(), tuple()} |
    {error, any()} |
    {error, create_location_object_storage_errors(), tuple()}.
create_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationObjectStorage">>, Input, Options).

%% @doc Creates a transfer location for an Amazon S3 bucket.
%%
%% DataSync can use this location as a source or destination for transferring
%% data.
%%
%% Before you begin, make sure that you read the following topics:
%%
%% Storage
%% class considerations with Amazon S3 locations:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
%%
%% Evaluating S3 request costs when using DataSync:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
%%
%% For more information, see Configuring
%% transfers with Amazon S3:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html.
-spec create_location_s3(aws_client:aws_client(), create_location_s3_request()) ->
    {ok, create_location_s3_response(), tuple()} |
    {error, any()} |
    {error, create_location_s3_errors(), tuple()}.
create_location_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_s3(Client, Input, []).

-spec create_location_s3(aws_client:aws_client(), create_location_s3_request(), proplists:proplist()) ->
    {ok, create_location_s3_response(), tuple()} |
    {error, any()} |
    {error, create_location_s3_errors(), tuple()}.
create_location_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationS3">>, Input, Options).

%% @doc Creates a transfer location for a Server Message Block (SMB) file
%% server.
%%
%% DataSync can use this location as a source or destination for
%% transferring data.
%%
%% Before you begin, make sure that you understand how DataSync accesses SMB
%% file servers. For more information, see Providing DataSync access to SMB
%% file servers:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions.
-spec create_location_smb(aws_client:aws_client(), create_location_smb_request()) ->
    {ok, create_location_smb_response(), tuple()} |
    {error, any()} |
    {error, create_location_smb_errors(), tuple()}.
create_location_smb(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_smb(Client, Input, []).

-spec create_location_smb(aws_client:aws_client(), create_location_smb_request(), proplists:proplist()) ->
    {ok, create_location_smb_response(), tuple()} |
    {error, any()} |
    {error, create_location_smb_errors(), tuple()}.
create_location_smb(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationSmb">>, Input, Options).

%% @doc Configures a task, which defines where and how DataSync
%% transfers your data.
%%
%% A task includes a source location, destination location, and transfer
%% options (such as
%% bandwidth limits, scheduling, and more).
%%
%% If you're planning to transfer data to or from an Amazon S3 location,
%% review
%% how
%% DataSync can affect your S3 request charges:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
%% and the DataSync pricing page: http://aws.amazon.com/datasync/pricing/
%% before
%% you begin.
-spec create_task(aws_client:aws_client(), create_task_request()) ->
    {ok, create_task_response(), tuple()} |
    {error, any()} |
    {error, create_task_errors(), tuple()}.
create_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_task(Client, Input, []).

-spec create_task(aws_client:aws_client(), create_task_request(), proplists:proplist()) ->
    {ok, create_task_response(), tuple()} |
    {error, any()} |
    {error, create_task_errors(), tuple()}.
create_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTask">>, Input, Options).

%% @doc Removes an DataSync agent resource from your Amazon Web Services
%% account.
%%
%% Keep in mind that this operation (which can't be undone) doesn't
%% remove the agent's
%% virtual machine (VM) or Amazon EC2 instance from your storage environment.
%% For next
%% steps, you can delete the VM or instance from your storage environment or
%% reuse it to activate a new
%% agent:
%% https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html.
-spec delete_agent(aws_client:aws_client(), delete_agent_request()) ->
    {ok, delete_agent_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_errors(), tuple()}.
delete_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_agent(Client, Input, []).

-spec delete_agent(aws_client:aws_client(), delete_agent_request(), proplists:proplist()) ->
    {ok, delete_agent_response(), tuple()} |
    {error, any()} |
    {error, delete_agent_errors(), tuple()}.
delete_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAgent">>, Input, Options).

%% @doc Deletes a transfer location resource from DataSync.
-spec delete_location(aws_client:aws_client(), delete_location_request()) ->
    {ok, delete_location_response(), tuple()} |
    {error, any()} |
    {error, delete_location_errors(), tuple()}.
delete_location(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_location(Client, Input, []).

-spec delete_location(aws_client:aws_client(), delete_location_request(), proplists:proplist()) ->
    {ok, delete_location_response(), tuple()} |
    {error, any()} |
    {error, delete_location_errors(), tuple()}.
delete_location(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLocation">>, Input, Options).

%% @doc Deletes a transfer task resource from DataSync.
-spec delete_task(aws_client:aws_client(), delete_task_request()) ->
    {ok, delete_task_response(), tuple()} |
    {error, any()} |
    {error, delete_task_errors(), tuple()}.
delete_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task(Client, Input, []).

-spec delete_task(aws_client:aws_client(), delete_task_request(), proplists:proplist()) ->
    {ok, delete_task_response(), tuple()} |
    {error, any()} |
    {error, delete_task_errors(), tuple()}.
delete_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTask">>, Input, Options).

%% @doc Returns information about an DataSync agent, such as its name,
%% service
%% endpoint type, and status.
-spec describe_agent(aws_client:aws_client(), describe_agent_request()) ->
    {ok, describe_agent_response(), tuple()} |
    {error, any()} |
    {error, describe_agent_errors(), tuple()}.
describe_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent(Client, Input, []).

-spec describe_agent(aws_client:aws_client(), describe_agent_request(), proplists:proplist()) ->
    {ok, describe_agent_response(), tuple()} |
    {error, any()} |
    {error, describe_agent_errors(), tuple()}.
describe_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgent">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for
%% Microsoft Azure
%% Blob Storage is configured.
-spec describe_location_azure_blob(aws_client:aws_client(), describe_location_azure_blob_request()) ->
    {ok, describe_location_azure_blob_response(), tuple()} |
    {error, any()} |
    {error, describe_location_azure_blob_errors(), tuple()}.
describe_location_azure_blob(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_azure_blob(Client, Input, []).

-spec describe_location_azure_blob(aws_client:aws_client(), describe_location_azure_blob_request(), proplists:proplist()) ->
    {ok, describe_location_azure_blob_response(), tuple()} |
    {error, any()} |
    {error, describe_location_azure_blob_errors(), tuple()}.
describe_location_azure_blob(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationAzureBlob">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an
%% Amazon EFS file system is configured.
-spec describe_location_efs(aws_client:aws_client(), describe_location_efs_request()) ->
    {ok, describe_location_efs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_efs_errors(), tuple()}.
describe_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_efs(Client, Input, []).

-spec describe_location_efs(aws_client:aws_client(), describe_location_efs_request(), proplists:proplist()) ->
    {ok, describe_location_efs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_efs_errors(), tuple()}.
describe_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationEfs">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an
%% Amazon FSx for Lustre file system is configured.
-spec describe_location_fsx_lustre(aws_client:aws_client(), describe_location_fsx_lustre_request()) ->
    {ok, describe_location_fsx_lustre_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_lustre_errors(), tuple()}.
describe_location_fsx_lustre(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_lustre(Client, Input, []).

-spec describe_location_fsx_lustre(aws_client:aws_client(), describe_location_fsx_lustre_request(), proplists:proplist()) ->
    {ok, describe_location_fsx_lustre_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_lustre_errors(), tuple()}.
describe_location_fsx_lustre(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxLustre">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an
%% Amazon FSx for NetApp ONTAP file system is configured.
%%
%% If your location uses SMB, the `DescribeLocationFsxOntap' operation
%% doesn't
%% actually return a `Password'.
-spec describe_location_fsx_ontap(aws_client:aws_client(), describe_location_fsx_ontap_request()) ->
    {ok, describe_location_fsx_ontap_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_ontap_errors(), tuple()}.
describe_location_fsx_ontap(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_ontap(Client, Input, []).

-spec describe_location_fsx_ontap(aws_client:aws_client(), describe_location_fsx_ontap_request(), proplists:proplist()) ->
    {ok, describe_location_fsx_ontap_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_ontap_errors(), tuple()}.
describe_location_fsx_ontap(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxOntap">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an
%% Amazon FSx for OpenZFS file system is configured.
%%
%% Response elements related to `SMB' aren't supported with the
%% `DescribeLocationFsxOpenZfs' operation.
-spec describe_location_fsx_open_zfs(aws_client:aws_client(), describe_location_fsx_open_zfs_request()) ->
    {ok, describe_location_fsx_open_zfs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_open_zfs_errors(), tuple()}.
describe_location_fsx_open_zfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_open_zfs(Client, Input, []).

-spec describe_location_fsx_open_zfs(aws_client:aws_client(), describe_location_fsx_open_zfs_request(), proplists:proplist()) ->
    {ok, describe_location_fsx_open_zfs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_open_zfs_errors(), tuple()}.
describe_location_fsx_open_zfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxOpenZfs">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an
%% Amazon FSx for Windows File Server file system is configured.
-spec describe_location_fsx_windows(aws_client:aws_client(), describe_location_fsx_windows_request()) ->
    {ok, describe_location_fsx_windows_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_windows_errors(), tuple()}.
describe_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_windows(Client, Input, []).

-spec describe_location_fsx_windows(aws_client:aws_client(), describe_location_fsx_windows_request(), proplists:proplist()) ->
    {ok, describe_location_fsx_windows_response(), tuple()} |
    {error, any()} |
    {error, describe_location_fsx_windows_errors(), tuple()}.
describe_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxWindows">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for a Hadoop
%% Distributed File System (HDFS) is configured.
-spec describe_location_hdfs(aws_client:aws_client(), describe_location_hdfs_request()) ->
    {ok, describe_location_hdfs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_hdfs_errors(), tuple()}.
describe_location_hdfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_hdfs(Client, Input, []).

-spec describe_location_hdfs(aws_client:aws_client(), describe_location_hdfs_request(), proplists:proplist()) ->
    {ok, describe_location_hdfs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_hdfs_errors(), tuple()}.
describe_location_hdfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationHdfs">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for a
%% Network
%% File System (NFS) file server is configured.
-spec describe_location_nfs(aws_client:aws_client(), describe_location_nfs_request()) ->
    {ok, describe_location_nfs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_nfs_errors(), tuple()}.
describe_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_nfs(Client, Input, []).

-spec describe_location_nfs(aws_client:aws_client(), describe_location_nfs_request(), proplists:proplist()) ->
    {ok, describe_location_nfs_response(), tuple()} |
    {error, any()} |
    {error, describe_location_nfs_errors(), tuple()}.
describe_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationNfs">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an
%% object
%% storage system is configured.
-spec describe_location_object_storage(aws_client:aws_client(), describe_location_object_storage_request()) ->
    {ok, describe_location_object_storage_response(), tuple()} |
    {error, any()} |
    {error, describe_location_object_storage_errors(), tuple()}.
describe_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_object_storage(Client, Input, []).

-spec describe_location_object_storage(aws_client:aws_client(), describe_location_object_storage_request(), proplists:proplist()) ->
    {ok, describe_location_object_storage_response(), tuple()} |
    {error, any()} |
    {error, describe_location_object_storage_errors(), tuple()}.
describe_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationObjectStorage">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for an S3
%% bucket
%% is configured.
-spec describe_location_s3(aws_client:aws_client(), describe_location_s3_request()) ->
    {ok, describe_location_s3_response(), tuple()} |
    {error, any()} |
    {error, describe_location_s3_errors(), tuple()}.
describe_location_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_s3(Client, Input, []).

-spec describe_location_s3(aws_client:aws_client(), describe_location_s3_request(), proplists:proplist()) ->
    {ok, describe_location_s3_response(), tuple()} |
    {error, any()} |
    {error, describe_location_s3_errors(), tuple()}.
describe_location_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationS3">>, Input, Options).

%% @doc Provides details about how an DataSync transfer location for a Server
%% Message Block (SMB) file server is configured.
-spec describe_location_smb(aws_client:aws_client(), describe_location_smb_request()) ->
    {ok, describe_location_smb_response(), tuple()} |
    {error, any()} |
    {error, describe_location_smb_errors(), tuple()}.
describe_location_smb(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_smb(Client, Input, []).

-spec describe_location_smb(aws_client:aws_client(), describe_location_smb_request(), proplists:proplist()) ->
    {ok, describe_location_smb_response(), tuple()} |
    {error, any()} |
    {error, describe_location_smb_errors(), tuple()}.
describe_location_smb(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationSmb">>, Input, Options).

%% @doc Provides information about a task, which defines where and how
%% DataSync transfers your data.
-spec describe_task(aws_client:aws_client(), describe_task_request()) ->
    {ok, describe_task_response(), tuple()} |
    {error, any()} |
    {error, describe_task_errors(), tuple()}.
describe_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task(Client, Input, []).

-spec describe_task(aws_client:aws_client(), describe_task_request(), proplists:proplist()) ->
    {ok, describe_task_response(), tuple()} |
    {error, any()} |
    {error, describe_task_errors(), tuple()}.
describe_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTask">>, Input, Options).

%% @doc Provides information about an execution of your DataSync task.
%%
%% You can
%% use this operation to help monitor the progress of an ongoing data
%% transfer or check the
%% results of the transfer.
%%
%% Some `DescribeTaskExecution' response elements are only relevant to a
%% specific task mode. For information, see Understanding task mode
%% differences:
%% https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences
%% and Understanding data
%% transfer performance counters:
%% https://docs.aws.amazon.com/datasync/latest/userguide/transfer-performance-counters.html.
-spec describe_task_execution(aws_client:aws_client(), describe_task_execution_request()) ->
    {ok, describe_task_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_task_execution_errors(), tuple()}.
describe_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_execution(Client, Input, []).

-spec describe_task_execution(aws_client:aws_client(), describe_task_execution_request(), proplists:proplist()) ->
    {ok, describe_task_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_task_execution_errors(), tuple()}.
describe_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskExecution">>, Input, Options).

%% @doc Returns a list of DataSync agents that belong to an Amazon Web
%% Services account in the Amazon Web Services Region specified in the
%% request.
%%
%% With pagination, you can reduce the number of agents returned in a
%% response. If you get
%% a truncated list of agents in a response, the response contains a marker
%% that you can specify
%% in your next request to fetch the next page of agents.
%%
%% `ListAgents' is eventually consistent. This means the result of
%% running the
%% operation might not reflect that you just created or deleted an agent. For
%% example, if you
%% create an agent with CreateAgent:
%% https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html
%% and then
%% immediately run `ListAgents', that agent might not show up in the list
%% right away.
%% In situations like this, you can always confirm whether an agent has been
%% created (or deleted)
%% by using DescribeAgent:
%% https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html.
-spec list_agents(aws_client:aws_client(), list_agents_request()) ->
    {ok, list_agents_response(), tuple()} |
    {error, any()} |
    {error, list_agents_errors(), tuple()}.
list_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agents(Client, Input, []).

-spec list_agents(aws_client:aws_client(), list_agents_request(), proplists:proplist()) ->
    {ok, list_agents_response(), tuple()} |
    {error, any()} |
    {error, list_agents_errors(), tuple()}.
list_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgents">>, Input, Options).

%% @doc Returns a list of source and destination locations.
%%
%% If you have more locations than are returned in a response (that is, the
%% response
%% returns only a truncated list of your agents), the response contains a
%% token that you can
%% specify in your next request to fetch the next page of locations.
-spec list_locations(aws_client:aws_client(), list_locations_request()) ->
    {ok, list_locations_response(), tuple()} |
    {error, any()} |
    {error, list_locations_errors(), tuple()}.
list_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_locations(Client, Input, []).

-spec list_locations(aws_client:aws_client(), list_locations_request(), proplists:proplist()) ->
    {ok, list_locations_response(), tuple()} |
    {error, any()} |
    {error, list_locations_errors(), tuple()}.
list_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLocations">>, Input, Options).

%% @doc Returns all the tags associated with an Amazon Web Services resource.
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

%% @doc Returns a list of executions for an DataSync transfer task.
-spec list_task_executions(aws_client:aws_client(), list_task_executions_request()) ->
    {ok, list_task_executions_response(), tuple()} |
    {error, any()} |
    {error, list_task_executions_errors(), tuple()}.
list_task_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_executions(Client, Input, []).

-spec list_task_executions(aws_client:aws_client(), list_task_executions_request(), proplists:proplist()) ->
    {ok, list_task_executions_response(), tuple()} |
    {error, any()} |
    {error, list_task_executions_errors(), tuple()}.
list_task_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskExecutions">>, Input, Options).

%% @doc Returns a list of the DataSync tasks you created.
-spec list_tasks(aws_client:aws_client(), list_tasks_request()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).

-spec list_tasks(aws_client:aws_client(), list_tasks_request(), proplists:proplist()) ->
    {ok, list_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc Starts an DataSync transfer task.
%%
%% For each task, you can only run one task
%% execution at a time.
%%
%% There are several steps to a task execution. For more information, see
%% Task execution statuses:
%% https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses.
%%
%% If you're planning to transfer data to or from an Amazon S3 location,
%% review
%% how
%% DataSync can affect your S3 request charges:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
%% and the DataSync pricing page: http://aws.amazon.com/datasync/pricing/
%% before
%% you begin.
-spec start_task_execution(aws_client:aws_client(), start_task_execution_request()) ->
    {ok, start_task_execution_response(), tuple()} |
    {error, any()} |
    {error, start_task_execution_errors(), tuple()}.
start_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task_execution(Client, Input, []).

-spec start_task_execution(aws_client:aws_client(), start_task_execution_request(), proplists:proplist()) ->
    {ok, start_task_execution_response(), tuple()} |
    {error, any()} |
    {error, start_task_execution_errors(), tuple()}.
start_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTaskExecution">>, Input, Options).

%% @doc Applies a tag to an Amazon Web Services resource.
%%
%% Tags are
%% key-value pairs that can help you manage, filter, and search for your
%% resources.
%%
%% These include DataSync resources, such as locations, tasks, and task
%% executions.
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

%% @doc Removes tags from an Amazon Web Services resource.
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

%% @doc Updates the name of an DataSync agent.
-spec update_agent(aws_client:aws_client(), update_agent_request()) ->
    {ok, update_agent_response(), tuple()} |
    {error, any()} |
    {error, update_agent_errors(), tuple()}.
update_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_agent(Client, Input, []).

-spec update_agent(aws_client:aws_client(), update_agent_request(), proplists:proplist()) ->
    {ok, update_agent_response(), tuple()} |
    {error, any()} |
    {error, update_agent_errors(), tuple()}.
update_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAgent">>, Input, Options).

%% @doc Modifies the following configurations of the Microsoft Azure Blob
%% Storage transfer
%% location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync transfers with Azure Blob
%% Storage:
%% https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html.
-spec update_location_azure_blob(aws_client:aws_client(), update_location_azure_blob_request()) ->
    {ok, update_location_azure_blob_response(), tuple()} |
    {error, any()} |
    {error, update_location_azure_blob_errors(), tuple()}.
update_location_azure_blob(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_azure_blob(Client, Input, []).

-spec update_location_azure_blob(aws_client:aws_client(), update_location_azure_blob_request(), proplists:proplist()) ->
    {ok, update_location_azure_blob_response(), tuple()} |
    {error, any()} |
    {error, update_location_azure_blob_errors(), tuple()}.
update_location_azure_blob(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationAzureBlob">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Amazon EFS
%% transfer
%% location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with Amazon EFS:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html.
-spec update_location_efs(aws_client:aws_client(), update_location_efs_request()) ->
    {ok, update_location_efs_response(), tuple()} |
    {error, any()} |
    {error, update_location_efs_errors(), tuple()}.
update_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_efs(Client, Input, []).

-spec update_location_efs(aws_client:aws_client(), update_location_efs_request(), proplists:proplist()) ->
    {ok, update_location_efs_response(), tuple()} |
    {error, any()} |
    {error, update_location_efs_errors(), tuple()}.
update_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationEfs">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Amazon FSx for
%% Lustre
%% transfer location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with FSx for Lustre:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html.
-spec update_location_fsx_lustre(aws_client:aws_client(), update_location_fsx_lustre_request()) ->
    {ok, update_location_fsx_lustre_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_lustre_errors(), tuple()}.
update_location_fsx_lustre(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_fsx_lustre(Client, Input, []).

-spec update_location_fsx_lustre(aws_client:aws_client(), update_location_fsx_lustre_request(), proplists:proplist()) ->
    {ok, update_location_fsx_lustre_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_lustre_errors(), tuple()}.
update_location_fsx_lustre(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationFsxLustre">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Amazon FSx for
%% NetApp ONTAP
%% transfer location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with FSx for ONTAP:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html.
-spec update_location_fsx_ontap(aws_client:aws_client(), update_location_fsx_ontap_request()) ->
    {ok, update_location_fsx_ontap_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_ontap_errors(), tuple()}.
update_location_fsx_ontap(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_fsx_ontap(Client, Input, []).

-spec update_location_fsx_ontap(aws_client:aws_client(), update_location_fsx_ontap_request(), proplists:proplist()) ->
    {ok, update_location_fsx_ontap_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_ontap_errors(), tuple()}.
update_location_fsx_ontap(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationFsxOntap">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Amazon FSx for
%% OpenZFS
%% transfer location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with FSx for OpenZFS:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html.
%%
%% Request parameters related to `SMB' aren't supported with the
%% `UpdateLocationFsxOpenZfs' operation.
-spec update_location_fsx_open_zfs(aws_client:aws_client(), update_location_fsx_open_zfs_request()) ->
    {ok, update_location_fsx_open_zfs_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_open_zfs_errors(), tuple()}.
update_location_fsx_open_zfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_fsx_open_zfs(Client, Input, []).

-spec update_location_fsx_open_zfs(aws_client:aws_client(), update_location_fsx_open_zfs_request(), proplists:proplist()) ->
    {ok, update_location_fsx_open_zfs_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_open_zfs_errors(), tuple()}.
update_location_fsx_open_zfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationFsxOpenZfs">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Amazon FSx for
%% Windows File Server
%% transfer location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with FSx for Windows File Server:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html.
-spec update_location_fsx_windows(aws_client:aws_client(), update_location_fsx_windows_request()) ->
    {ok, update_location_fsx_windows_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_windows_errors(), tuple()}.
update_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_fsx_windows(Client, Input, []).

-spec update_location_fsx_windows(aws_client:aws_client(), update_location_fsx_windows_request(), proplists:proplist()) ->
    {ok, update_location_fsx_windows_response(), tuple()} |
    {error, any()} |
    {error, update_location_fsx_windows_errors(), tuple()}.
update_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationFsxWindows">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Hadoop
%% Distributed File System
%% (HDFS) transfer location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with an HDFS cluster:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html.
-spec update_location_hdfs(aws_client:aws_client(), update_location_hdfs_request()) ->
    {ok, update_location_hdfs_response(), tuple()} |
    {error, any()} |
    {error, update_location_hdfs_errors(), tuple()}.
update_location_hdfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_hdfs(Client, Input, []).

-spec update_location_hdfs(aws_client:aws_client(), update_location_hdfs_request(), proplists:proplist()) ->
    {ok, update_location_hdfs_response(), tuple()} |
    {error, any()} |
    {error, update_location_hdfs_errors(), tuple()}.
update_location_hdfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationHdfs">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Network File
%% System (NFS) transfer
%% location that you're using with DataSync.
%%
%% For more information, see Configuring transfers with an NFS
%% file server:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html.
-spec update_location_nfs(aws_client:aws_client(), update_location_nfs_request()) ->
    {ok, update_location_nfs_response(), tuple()} |
    {error, any()} |
    {error, update_location_nfs_errors(), tuple()}.
update_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_nfs(Client, Input, []).

-spec update_location_nfs(aws_client:aws_client(), update_location_nfs_request(), proplists:proplist()) ->
    {ok, update_location_nfs_response(), tuple()} |
    {error, any()} |
    {error, update_location_nfs_errors(), tuple()}.
update_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationNfs">>, Input, Options).

%% @doc Modifies the following configuration parameters of the object storage
%% transfer location
%% that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with an object storage system:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html.
-spec update_location_object_storage(aws_client:aws_client(), update_location_object_storage_request()) ->
    {ok, update_location_object_storage_response(), tuple()} |
    {error, any()} |
    {error, update_location_object_storage_errors(), tuple()}.
update_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_object_storage(Client, Input, []).

-spec update_location_object_storage(aws_client:aws_client(), update_location_object_storage_request(), proplists:proplist()) ->
    {ok, update_location_object_storage_response(), tuple()} |
    {error, any()} |
    {error, update_location_object_storage_errors(), tuple()}.
update_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationObjectStorage">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Amazon S3
%% transfer location
%% that you're using with DataSync.
%%
%% Before you begin, make sure that you read the following topics:
%%
%% Storage
%% class considerations with Amazon S3 locations:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes
%%
%% Evaluating S3 request costs when using DataSync:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests
-spec update_location_s3(aws_client:aws_client(), update_location_s3_request()) ->
    {ok, update_location_s3_response(), tuple()} |
    {error, any()} |
    {error, update_location_s3_errors(), tuple()}.
update_location_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_s3(Client, Input, []).

-spec update_location_s3(aws_client:aws_client(), update_location_s3_request(), proplists:proplist()) ->
    {ok, update_location_s3_response(), tuple()} |
    {error, any()} |
    {error, update_location_s3_errors(), tuple()}.
update_location_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationS3">>, Input, Options).

%% @doc Modifies the following configuration parameters of the Server Message
%% Block (SMB) transfer
%% location that you're using with DataSync.
%%
%% For more information, see Configuring DataSync
%% transfers with an SMB file server:
%% https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html.
-spec update_location_smb(aws_client:aws_client(), update_location_smb_request()) ->
    {ok, update_location_smb_response(), tuple()} |
    {error, any()} |
    {error, update_location_smb_errors(), tuple()}.
update_location_smb(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_smb(Client, Input, []).

-spec update_location_smb(aws_client:aws_client(), update_location_smb_request(), proplists:proplist()) ->
    {ok, update_location_smb_response(), tuple()} |
    {error, any()} |
    {error, update_location_smb_errors(), tuple()}.
update_location_smb(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationSmb">>, Input, Options).

%% @doc Updates the configuration of a task, which defines where and how
%% DataSync transfers your data.
-spec update_task(aws_client:aws_client(), update_task_request()) ->
    {ok, update_task_response(), tuple()} |
    {error, any()} |
    {error, update_task_errors(), tuple()}.
update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task(Client, Input, []).

-spec update_task(aws_client:aws_client(), update_task_request(), proplists:proplist()) ->
    {ok, update_task_response(), tuple()} |
    {error, any()} |
    {error, update_task_errors(), tuple()}.
update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTask">>, Input, Options).

%% @doc Updates the configuration of a running DataSync task execution.
%%
%% Currently, the only `Option' that you can modify with
%% `UpdateTaskExecution' is
%% ```
%% BytesPerSecond:
%% https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond
%% ''', which throttles bandwidth for a running or queued task
%% execution.
-spec update_task_execution(aws_client:aws_client(), update_task_execution_request()) ->
    {ok, update_task_execution_response(), tuple()} |
    {error, any()} |
    {error, update_task_execution_errors(), tuple()}.
update_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_execution(Client, Input, []).

-spec update_task_execution(aws_client:aws_client(), update_task_execution_request(), proplists:proplist()) ->
    {ok, update_task_execution_response(), tuple()} |
    {error, any()} |
    {error, update_task_execution_errors(), tuple()}.
update_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskExecution">>, Input, Options).

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
    Client1 = Client#{service => <<"datasync">>},
    Host = build_host(<<"datasync">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"FmrsService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
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
