%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Transcribe streaming offers three main types of real-time
%% transcription:
%% Standard, Medical, and
%% Call Analytics.
%%
%% Standard transcriptions are the most common option. Refer
%% to for details.
%%
%% Medical transcriptions are tailored to medical professionals
%% and incorporate medical terms. A common use case for this service is
%% transcribing doctor-patient
%% dialogue in real time, so doctors can focus on their patient instead of
%% taking notes. Refer to
%% for details.
%%
%% Call Analytics transcriptions are designed for use with call
%% center audio on two different channels; if you're looking for insight
%% into customer service calls, use this
%% option. Refer to for details.
-module(aws_transcribe_streaming).

-export([start_call_analytics_stream_transcription/2,
         start_call_analytics_stream_transcription/3,
         start_medical_stream_transcription/2,
         start_medical_stream_transcription/3,
         start_stream_transcription/2,
         start_stream_transcription/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% issue_detected() :: #{
%%   <<"CharacterOffsets">> => character_offsets()
%% }
-type issue_detected() :: #{binary() => any()}.


%% Example:
%% start_medical_stream_transcription_request() :: #{
%%   <<"AudioStream">> := list(),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"EnableChannelIdentification">> => boolean(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"MediaEncoding">> := list(any()),
%%   <<"MediaSampleRateHertz">> := integer(),
%%   <<"NumberOfChannels">> => integer(),
%%   <<"SessionId">> => string(),
%%   <<"ShowSpeakerLabel">> => boolean(),
%%   <<"Specialty">> := list(any()),
%%   <<"Type">> := list(any()),
%%   <<"VocabularyName">> => string()
%% }
-type start_medical_stream_transcription_request() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% points_of_interest() :: #{
%%   <<"TimestampRanges">> => list(timestamp_range()())
%% }
-type points_of_interest() :: #{binary() => any()}.


%% Example:
%% entity() :: #{
%%   <<"Category">> => string(),
%%   <<"Confidence">> => float(),
%%   <<"Content">> => string(),
%%   <<"EndTime">> => float(),
%%   <<"StartTime">> => float(),
%%   <<"Type">> => string()
%% }
-type entity() :: #{binary() => any()}.


%% Example:
%% character_offsets() :: #{
%%   <<"Begin">> => integer(),
%%   <<"End">> => integer()
%% }
-type character_offsets() :: #{binary() => any()}.


%% Example:
%% audio_event() :: #{
%%   <<"AudioChunk">> => binary()
%% }
-type audio_event() :: #{binary() => any()}.


%% Example:
%% medical_alternative() :: #{
%%   <<"Entities">> => list(medical_entity()()),
%%   <<"Items">> => list(medical_item()()),
%%   <<"Transcript">> => string()
%% }
-type medical_alternative() :: #{binary() => any()}.


%% Example:
%% category_event() :: #{
%%   <<"MatchedCategories">> => list(string()()),
%%   <<"MatchedDetails">> => map()
%% }
-type category_event() :: #{binary() => any()}.


%% Example:
%% language_with_score() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"Score">> => float()
%% }
-type language_with_score() :: #{binary() => any()}.


%% Example:
%% transcript() :: #{
%%   <<"Results">> => list(result()())
%% }
-type transcript() :: #{binary() => any()}.


%% Example:
%% medical_entity() :: #{
%%   <<"Category">> => string(),
%%   <<"Confidence">> => float(),
%%   <<"Content">> => string(),
%%   <<"EndTime">> => float(),
%%   <<"StartTime">> => float()
%% }
-type medical_entity() :: #{binary() => any()}.


%% Example:
%% medical_transcript() :: #{
%%   <<"Results">> => list(medical_result()())
%% }
-type medical_transcript() :: #{binary() => any()}.


%% Example:
%% start_call_analytics_stream_transcription_response() :: #{
%%   <<"CallAnalyticsTranscriptResultStream">> => list(),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"MediaEncoding">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type start_call_analytics_stream_transcription_response() :: #{binary() => any()}.


%% Example:
%% item() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Content">> => string(),
%%   <<"EndTime">> => float(),
%%   <<"Speaker">> => string(),
%%   <<"Stable">> => boolean(),
%%   <<"StartTime">> => float(),
%%   <<"Type">> => list(any()),
%%   <<"VocabularyFilterMatch">> => boolean()
%% }
-type item() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% start_medical_stream_transcription_response() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"EnableChannelIdentification">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"MediaEncoding">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"NumberOfChannels">> => integer(),
%%   <<"RequestId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"ShowSpeakerLabel">> => boolean(),
%%   <<"Specialty">> => list(any()),
%%   <<"TranscriptResultStream">> => list(),
%%   <<"Type">> => list(any()),
%%   <<"VocabularyName">> => string()
%% }
-type start_medical_stream_transcription_response() :: #{binary() => any()}.


%% Example:
%% call_analytics_item() :: #{
%%   <<"BeginOffsetMillis">> => float(),
%%   <<"Confidence">> => float(),
%%   <<"Content">> => string(),
%%   <<"EndOffsetMillis">> => float(),
%%   <<"Stable">> => boolean(),
%%   <<"Type">> => list(any()),
%%   <<"VocabularyFilterMatch">> => boolean()
%% }
-type call_analytics_item() :: #{binary() => any()}.


%% Example:
%% channel_definition() :: #{
%%   <<"ChannelId">> => integer(),
%%   <<"ParticipantRole">> => list(any())
%% }
-type channel_definition() :: #{binary() => any()}.


%% Example:
%% result() :: #{
%%   <<"Alternatives">> => list(alternative()()),
%%   <<"ChannelId">> => string(),
%%   <<"EndTime">> => float(),
%%   <<"IsPartial">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageIdentification">> => list(language_with_score()()),
%%   <<"ResultId">> => string(),
%%   <<"StartTime">> => float()
%% }
-type result() :: #{binary() => any()}.


%% Example:
%% post_call_analytics_settings() :: #{
%%   <<"ContentRedactionOutput">> => list(any()),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"OutputEncryptionKMSKeyId">> => string(),
%%   <<"OutputLocation">> => string()
%% }
-type post_call_analytics_settings() :: #{binary() => any()}.


%% Example:
%% call_analytics_entity() :: #{
%%   <<"BeginOffsetMillis">> => float(),
%%   <<"Category">> => string(),
%%   <<"Confidence">> => float(),
%%   <<"Content">> => string(),
%%   <<"EndOffsetMillis">> => float(),
%%   <<"Type">> => string()
%% }
-type call_analytics_entity() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% start_stream_transcription_response() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnableChannelIdentification">> => boolean(),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"IdentifyMultipleLanguages">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"LanguageOptions">> => string(),
%%   <<"MediaEncoding">> => list(any()),
%%   <<"MediaSampleRateHertz">> => integer(),
%%   <<"NumberOfChannels">> => integer(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"PreferredLanguage">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"ShowSpeakerLabel">> => boolean(),
%%   <<"TranscriptResultStream">> => list(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyFilterNames">> => string(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyNames">> => string()
%% }
-type start_stream_transcription_response() :: #{binary() => any()}.


%% Example:
%% medical_transcript_event() :: #{
%%   <<"Transcript">> => medical_transcript()
%% }
-type medical_transcript_event() :: #{binary() => any()}.


%% Example:
%% start_stream_transcription_request() :: #{
%%   <<"AudioStream">> := list(),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnableChannelIdentification">> => boolean(),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"IdentifyMultipleLanguages">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"LanguageOptions">> => string(),
%%   <<"MediaEncoding">> := list(any()),
%%   <<"MediaSampleRateHertz">> := integer(),
%%   <<"NumberOfChannels">> => integer(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"PreferredLanguage">> => list(any()),
%%   <<"SessionId">> => string(),
%%   <<"ShowSpeakerLabel">> => boolean(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyFilterNames">> => string(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyNames">> => string()
%% }
-type start_stream_transcription_request() :: #{binary() => any()}.


%% Example:
%% medical_result() :: #{
%%   <<"Alternatives">> => list(medical_alternative()()),
%%   <<"ChannelId">> => string(),
%%   <<"EndTime">> => float(),
%%   <<"IsPartial">> => boolean(),
%%   <<"ResultId">> => string(),
%%   <<"StartTime">> => float()
%% }
-type medical_result() :: #{binary() => any()}.


%% Example:
%% start_call_analytics_stream_transcription_request() :: #{
%%   <<"AudioStream">> := list(),
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"LanguageCode">> := list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"MediaEncoding">> := list(any()),
%%   <<"MediaSampleRateHertz">> := integer(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyName">> => string()
%% }
-type start_call_analytics_stream_transcription_request() :: #{binary() => any()}.


%% Example:
%% timestamp_range() :: #{
%%   <<"BeginOffsetMillis">> => float(),
%%   <<"EndOffsetMillis">> => float()
%% }
-type timestamp_range() :: #{binary() => any()}.


%% Example:
%% configuration_event() :: #{
%%   <<"ChannelDefinitions">> => list(channel_definition()()),
%%   <<"PostCallAnalyticsSettings">> => post_call_analytics_settings()
%% }
-type configuration_event() :: #{binary() => any()}.


%% Example:
%% utterance_event() :: #{
%%   <<"BeginOffsetMillis">> => float(),
%%   <<"EndOffsetMillis">> => float(),
%%   <<"Entities">> => list(call_analytics_entity()()),
%%   <<"IsPartial">> => boolean(),
%%   <<"IssuesDetected">> => list(issue_detected()()),
%%   <<"Items">> => list(call_analytics_item()()),
%%   <<"ParticipantRole">> => list(any()),
%%   <<"Sentiment">> => list(any()),
%%   <<"Transcript">> => string(),
%%   <<"UtteranceId">> => string()
%% }
-type utterance_event() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% medical_item() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Content">> => string(),
%%   <<"EndTime">> => float(),
%%   <<"Speaker">> => string(),
%%   <<"StartTime">> => float(),
%%   <<"Type">> => list(any())
%% }
-type medical_item() :: #{binary() => any()}.


%% Example:
%% transcript_event() :: #{
%%   <<"Transcript">> => transcript()
%% }
-type transcript_event() :: #{binary() => any()}.


%% Example:
%% alternative() :: #{
%%   <<"Entities">> => list(entity()()),
%%   <<"Items">> => list(item()()),
%%   <<"Transcript">> => string()
%% }
-type alternative() :: #{binary() => any()}.

-type start_call_analytics_stream_transcription_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type start_medical_stream_transcription_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type start_stream_transcription_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Starts a bidirectional HTTP/2 or WebSocket stream where audio is
%% streamed to
%% Amazon Transcribe and the transcription results are streamed to your
%% application.
%%
%% Use this operation
%% for Call Analytics:
%% https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html
%% transcriptions.
%%
%% The following parameters are required:
%%
%% `language-code'
%%
%% `media-encoding'
%%
%% `sample-rate'
%%
%% For more information on streaming with Amazon Transcribe, see Transcribing
%% streaming audio:
%% https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html.
-spec start_call_analytics_stream_transcription(aws_client:aws_client(), start_call_analytics_stream_transcription_request()) ->
    {ok, start_call_analytics_stream_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_call_analytics_stream_transcription_errors(), tuple()}.
start_call_analytics_stream_transcription(Client, Input) ->
    start_call_analytics_stream_transcription(Client, Input, []).

-spec start_call_analytics_stream_transcription(aws_client:aws_client(), start_call_analytics_stream_transcription_request(), proplists:proplist()) ->
    {ok, start_call_analytics_stream_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_call_analytics_stream_transcription_errors(), tuple()}.
start_call_analytics_stream_transcription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/call-analytics-stream-transcription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
                       {<<"x-amzn-transcribe-content-redaction-type">>, <<"ContentRedactionType">>},
                       {<<"x-amzn-transcribe-enable-partial-results-stabilization">>, <<"EnablePartialResultsStabilization">>},
                       {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
                       {<<"x-amzn-transcribe-language-model-name">>, <<"LanguageModelName">>},
                       {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
                       {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
                       {<<"x-amzn-transcribe-partial-results-stability">>, <<"PartialResultsStability">>},
                       {<<"x-amzn-transcribe-pii-entity-types">>, <<"PiiEntityTypes">>},
                       {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
                       {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
            {<<"x-amzn-transcribe-content-redaction-type">>, <<"ContentRedactionType">>},
            {<<"x-amzn-transcribe-enable-partial-results-stabilization">>, <<"EnablePartialResultsStabilization">>},
            {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
            {<<"x-amzn-transcribe-language-model-name">>, <<"LanguageModelName">>},
            {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
            {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
            {<<"x-amzn-transcribe-partial-results-stability">>, <<"PartialResultsStability">>},
            {<<"x-amzn-transcribe-pii-entity-types">>, <<"PiiEntityTypes">>},
            {<<"x-amzn-request-id">>, <<"RequestId">>},
            {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
            {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
            {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
            {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Starts a bidirectional HTTP/2 or WebSocket stream where audio is
%% streamed to
%% Amazon Transcribe Medical and the transcription results are streamed to
%% your
%% application.
%%
%% The following parameters are required:
%%
%% `language-code'
%%
%% `media-encoding'
%%
%% `sample-rate'
%%
%% For more information on streaming with Amazon Transcribe Medical, see
%% Transcribing
%% streaming audio:
%% https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html.
-spec start_medical_stream_transcription(aws_client:aws_client(), start_medical_stream_transcription_request()) ->
    {ok, start_medical_stream_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_medical_stream_transcription_errors(), tuple()}.
start_medical_stream_transcription(Client, Input) ->
    start_medical_stream_transcription(Client, Input, []).

-spec start_medical_stream_transcription(aws_client:aws_client(), start_medical_stream_transcription_request(), proplists:proplist()) ->
    {ok, start_medical_stream_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_medical_stream_transcription_errors(), tuple()}.
start_medical_stream_transcription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/medical-stream-transcription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
                       {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
                       {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
                       {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
                       {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
                       {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
                       {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
                       {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
                       {<<"x-amzn-transcribe-specialty">>, <<"Specialty">>},
                       {<<"x-amzn-transcribe-type">>, <<"Type">>},
                       {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
            {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
            {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
            {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
            {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
            {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
            {<<"x-amzn-request-id">>, <<"RequestId">>},
            {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
            {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
            {<<"x-amzn-transcribe-specialty">>, <<"Specialty">>},
            {<<"x-amzn-transcribe-type">>, <<"Type">>},
            {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Starts a bidirectional HTTP/2 or WebSocket stream where audio is
%% streamed to
%% Amazon Transcribe and the transcription results are streamed to your
%% application.
%%
%% The following parameters are required:
%%
%% `language-code' or `identify-language' or
%% `identify-multiple-language'
%%
%% `media-encoding'
%%
%% `sample-rate'
%%
%% For more information on streaming with Amazon Transcribe, see Transcribing
%% streaming audio:
%% https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html.
-spec start_stream_transcription(aws_client:aws_client(), start_stream_transcription_request()) ->
    {ok, start_stream_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_stream_transcription_errors(), tuple()}.
start_stream_transcription(Client, Input) ->
    start_stream_transcription(Client, Input, []).

-spec start_stream_transcription(aws_client:aws_client(), start_stream_transcription_request(), proplists:proplist()) ->
    {ok, start_stream_transcription_response(), tuple()} |
    {error, any()} |
    {error, start_stream_transcription_errors(), tuple()}.
start_stream_transcription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stream-transcription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
                       {<<"x-amzn-transcribe-content-redaction-type">>, <<"ContentRedactionType">>},
                       {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
                       {<<"x-amzn-transcribe-enable-partial-results-stabilization">>, <<"EnablePartialResultsStabilization">>},
                       {<<"x-amzn-transcribe-identify-language">>, <<"IdentifyLanguage">>},
                       {<<"x-amzn-transcribe-identify-multiple-languages">>, <<"IdentifyMultipleLanguages">>},
                       {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
                       {<<"x-amzn-transcribe-language-model-name">>, <<"LanguageModelName">>},
                       {<<"x-amzn-transcribe-language-options">>, <<"LanguageOptions">>},
                       {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
                       {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
                       {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
                       {<<"x-amzn-transcribe-partial-results-stability">>, <<"PartialResultsStability">>},
                       {<<"x-amzn-transcribe-pii-entity-types">>, <<"PiiEntityTypes">>},
                       {<<"x-amzn-transcribe-preferred-language">>, <<"PreferredLanguage">>},
                       {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
                       {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-names">>, <<"VocabularyFilterNames">>},
                       {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>},
                       {<<"x-amzn-transcribe-vocabulary-names">>, <<"VocabularyNames">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
            {<<"x-amzn-transcribe-content-redaction-type">>, <<"ContentRedactionType">>},
            {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
            {<<"x-amzn-transcribe-enable-partial-results-stabilization">>, <<"EnablePartialResultsStabilization">>},
            {<<"x-amzn-transcribe-identify-language">>, <<"IdentifyLanguage">>},
            {<<"x-amzn-transcribe-identify-multiple-languages">>, <<"IdentifyMultipleLanguages">>},
            {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
            {<<"x-amzn-transcribe-language-model-name">>, <<"LanguageModelName">>},
            {<<"x-amzn-transcribe-language-options">>, <<"LanguageOptions">>},
            {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
            {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
            {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
            {<<"x-amzn-transcribe-partial-results-stability">>, <<"PartialResultsStability">>},
            {<<"x-amzn-transcribe-pii-entity-types">>, <<"PiiEntityTypes">>},
            {<<"x-amzn-transcribe-preferred-language">>, <<"PreferredLanguage">>},
            {<<"x-amzn-request-id">>, <<"RequestId">>},
            {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
            {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
            {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
            {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
            {<<"x-amzn-transcribe-vocabulary-filter-names">>, <<"VocabularyFilterNames">>},
            {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>},
            {<<"x-amzn-transcribe-vocabulary-names">>, <<"VocabularyNames">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

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
    Client1 = Client#{service => <<"transcribe">>},
    Host = build_host(<<"transcribestreaming">>, Client1),
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
