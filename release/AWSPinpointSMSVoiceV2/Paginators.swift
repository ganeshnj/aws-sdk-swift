// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeAccountAttributesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeAccountAttributesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeAccountAttributesOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeAccountAttributesPaginated(input: DescribeAccountAttributesInput) -> ClientRuntime.PaginatorSequence<DescribeAccountAttributesInput, DescribeAccountAttributesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAccountAttributesInput, DescribeAccountAttributesOutputResponse>(input: input, inputKey: \DescribeAccountAttributesInput.nextToken, outputKey: \DescribeAccountAttributesOutputResponse.nextToken, paginationFunction: self.describeAccountAttributes(input:))
    }
}

extension DescribeAccountAttributesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAccountAttributesInput {
        return DescribeAccountAttributesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeAccountAttributesPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.AccountAttribute]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.AccountAttribute]`
extension PaginatorSequence where Input == DescribeAccountAttributesInput, Output == DescribeAccountAttributesOutputResponse {
    public func accountAttributes() async throws -> [PinpointSMSVoiceV2ClientTypes.AccountAttribute] {
        return try await self.asyncCompactMap { item in item.accountAttributes }
    }
}

/// Paginate over `[DescribeAccountLimitsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeAccountLimitsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeAccountLimitsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeAccountLimitsPaginated(input: DescribeAccountLimitsInput) -> ClientRuntime.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutputResponse>(input: input, inputKey: \DescribeAccountLimitsInput.nextToken, outputKey: \DescribeAccountLimitsOutputResponse.nextToken, paginationFunction: self.describeAccountLimits(input:))
    }
}

extension DescribeAccountLimitsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAccountLimitsInput {
        return DescribeAccountLimitsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeAccountLimitsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.AccountLimit]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.AccountLimit]`
extension PaginatorSequence where Input == DescribeAccountLimitsInput, Output == DescribeAccountLimitsOutputResponse {
    public func accountLimits() async throws -> [PinpointSMSVoiceV2ClientTypes.AccountLimit] {
        return try await self.asyncCompactMap { item in item.accountLimits }
    }
}

/// Paginate over `[DescribeConfigurationSetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeConfigurationSetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeConfigurationSetsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeConfigurationSetsPaginated(input: DescribeConfigurationSetsInput) -> ClientRuntime.PaginatorSequence<DescribeConfigurationSetsInput, DescribeConfigurationSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeConfigurationSetsInput, DescribeConfigurationSetsOutputResponse>(input: input, inputKey: \DescribeConfigurationSetsInput.nextToken, outputKey: \DescribeConfigurationSetsOutputResponse.nextToken, paginationFunction: self.describeConfigurationSets(input:))
    }
}

extension DescribeConfigurationSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeConfigurationSetsInput {
        return DescribeConfigurationSetsInput(
            configurationSetNames: self.configurationSetNames,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeConfigurationSetsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.ConfigurationSetInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.ConfigurationSetInformation]`
extension PaginatorSequence where Input == DescribeConfigurationSetsInput, Output == DescribeConfigurationSetsOutputResponse {
    public func configurationSets() async throws -> [PinpointSMSVoiceV2ClientTypes.ConfigurationSetInformation] {
        return try await self.asyncCompactMap { item in item.configurationSets }
    }
}

/// Paginate over `[DescribeKeywordsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeKeywordsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeKeywordsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeKeywordsPaginated(input: DescribeKeywordsInput) -> ClientRuntime.PaginatorSequence<DescribeKeywordsInput, DescribeKeywordsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeKeywordsInput, DescribeKeywordsOutputResponse>(input: input, inputKey: \DescribeKeywordsInput.nextToken, outputKey: \DescribeKeywordsOutputResponse.nextToken, paginationFunction: self.describeKeywords(input:))
    }
}

extension DescribeKeywordsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeKeywordsInput {
        return DescribeKeywordsInput(
            filters: self.filters,
            keywords: self.keywords,
            maxResults: self.maxResults,
            nextToken: token,
            originationIdentity: self.originationIdentity
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeKeywordsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.KeywordInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.KeywordInformation]`
extension PaginatorSequence where Input == DescribeKeywordsInput, Output == DescribeKeywordsOutputResponse {
    public func keywords() async throws -> [PinpointSMSVoiceV2ClientTypes.KeywordInformation] {
        return try await self.asyncCompactMap { item in item.keywords }
    }
}

/// Paginate over `[DescribeOptedOutNumbersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeOptedOutNumbersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeOptedOutNumbersOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeOptedOutNumbersPaginated(input: DescribeOptedOutNumbersInput) -> ClientRuntime.PaginatorSequence<DescribeOptedOutNumbersInput, DescribeOptedOutNumbersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeOptedOutNumbersInput, DescribeOptedOutNumbersOutputResponse>(input: input, inputKey: \DescribeOptedOutNumbersInput.nextToken, outputKey: \DescribeOptedOutNumbersOutputResponse.nextToken, paginationFunction: self.describeOptedOutNumbers(input:))
    }
}

extension DescribeOptedOutNumbersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeOptedOutNumbersInput {
        return DescribeOptedOutNumbersInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            optOutListName: self.optOutListName,
            optedOutNumbers: self.optedOutNumbers
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeOptedOutNumbersPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.OptedOutNumberInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.OptedOutNumberInformation]`
extension PaginatorSequence where Input == DescribeOptedOutNumbersInput, Output == DescribeOptedOutNumbersOutputResponse {
    public func optedOutNumbers() async throws -> [PinpointSMSVoiceV2ClientTypes.OptedOutNumberInformation] {
        return try await self.asyncCompactMap { item in item.optedOutNumbers }
    }
}

/// Paginate over `[DescribeOptOutListsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeOptOutListsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeOptOutListsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeOptOutListsPaginated(input: DescribeOptOutListsInput) -> ClientRuntime.PaginatorSequence<DescribeOptOutListsInput, DescribeOptOutListsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeOptOutListsInput, DescribeOptOutListsOutputResponse>(input: input, inputKey: \DescribeOptOutListsInput.nextToken, outputKey: \DescribeOptOutListsOutputResponse.nextToken, paginationFunction: self.describeOptOutLists(input:))
    }
}

extension DescribeOptOutListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeOptOutListsInput {
        return DescribeOptOutListsInput(
            maxResults: self.maxResults,
            nextToken: token,
            optOutListNames: self.optOutListNames
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeOptOutListsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.OptOutListInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.OptOutListInformation]`
extension PaginatorSequence where Input == DescribeOptOutListsInput, Output == DescribeOptOutListsOutputResponse {
    public func optOutLists() async throws -> [PinpointSMSVoiceV2ClientTypes.OptOutListInformation] {
        return try await self.asyncCompactMap { item in item.optOutLists }
    }
}

/// Paginate over `[DescribePhoneNumbersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribePhoneNumbersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribePhoneNumbersOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describePhoneNumbersPaginated(input: DescribePhoneNumbersInput) -> ClientRuntime.PaginatorSequence<DescribePhoneNumbersInput, DescribePhoneNumbersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribePhoneNumbersInput, DescribePhoneNumbersOutputResponse>(input: input, inputKey: \DescribePhoneNumbersInput.nextToken, outputKey: \DescribePhoneNumbersOutputResponse.nextToken, paginationFunction: self.describePhoneNumbers(input:))
    }
}

extension DescribePhoneNumbersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePhoneNumbersInput {
        return DescribePhoneNumbersInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            phoneNumberIds: self.phoneNumberIds
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describePhoneNumbersPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.PhoneNumberInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.PhoneNumberInformation]`
extension PaginatorSequence where Input == DescribePhoneNumbersInput, Output == DescribePhoneNumbersOutputResponse {
    public func phoneNumbers() async throws -> [PinpointSMSVoiceV2ClientTypes.PhoneNumberInformation] {
        return try await self.asyncCompactMap { item in item.phoneNumbers }
    }
}

/// Paginate over `[DescribePoolsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribePoolsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribePoolsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describePoolsPaginated(input: DescribePoolsInput) -> ClientRuntime.PaginatorSequence<DescribePoolsInput, DescribePoolsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribePoolsInput, DescribePoolsOutputResponse>(input: input, inputKey: \DescribePoolsInput.nextToken, outputKey: \DescribePoolsOutputResponse.nextToken, paginationFunction: self.describePools(input:))
    }
}

extension DescribePoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePoolsInput {
        return DescribePoolsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            poolIds: self.poolIds
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describePoolsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.PoolInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.PoolInformation]`
extension PaginatorSequence where Input == DescribePoolsInput, Output == DescribePoolsOutputResponse {
    public func pools() async throws -> [PinpointSMSVoiceV2ClientTypes.PoolInformation] {
        return try await self.asyncCompactMap { item in item.pools }
    }
}

/// Paginate over `[DescribeSenderIdsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeSenderIdsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeSenderIdsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeSenderIdsPaginated(input: DescribeSenderIdsInput) -> ClientRuntime.PaginatorSequence<DescribeSenderIdsInput, DescribeSenderIdsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSenderIdsInput, DescribeSenderIdsOutputResponse>(input: input, inputKey: \DescribeSenderIdsInput.nextToken, outputKey: \DescribeSenderIdsOutputResponse.nextToken, paginationFunction: self.describeSenderIds(input:))
    }
}

extension DescribeSenderIdsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSenderIdsInput {
        return DescribeSenderIdsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            senderIds: self.senderIds
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeSenderIdsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.SenderIdInformation]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.SenderIdInformation]`
extension PaginatorSequence where Input == DescribeSenderIdsInput, Output == DescribeSenderIdsOutputResponse {
    public func senderIds() async throws -> [PinpointSMSVoiceV2ClientTypes.SenderIdInformation] {
        return try await self.asyncCompactMap { item in item.senderIds }
    }
}

/// Paginate over `[DescribeSpendLimitsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeSpendLimitsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeSpendLimitsOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func describeSpendLimitsPaginated(input: DescribeSpendLimitsInput) -> ClientRuntime.PaginatorSequence<DescribeSpendLimitsInput, DescribeSpendLimitsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSpendLimitsInput, DescribeSpendLimitsOutputResponse>(input: input, inputKey: \DescribeSpendLimitsInput.nextToken, outputKey: \DescribeSpendLimitsOutputResponse.nextToken, paginationFunction: self.describeSpendLimits(input:))
    }
}

extension DescribeSpendLimitsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSpendLimitsInput {
        return DescribeSpendLimitsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeSpendLimitsPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.SpendLimit]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.SpendLimit]`
extension PaginatorSequence where Input == DescribeSpendLimitsInput, Output == DescribeSpendLimitsOutputResponse {
    public func spendLimits() async throws -> [PinpointSMSVoiceV2ClientTypes.SpendLimit] {
        return try await self.asyncCompactMap { item in item.spendLimits }
    }
}

/// Paginate over `[ListPoolOriginationIdentitiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPoolOriginationIdentitiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPoolOriginationIdentitiesOutputResponse`
extension PinpointSMSVoiceV2Client {
    public func listPoolOriginationIdentitiesPaginated(input: ListPoolOriginationIdentitiesInput) -> ClientRuntime.PaginatorSequence<ListPoolOriginationIdentitiesInput, ListPoolOriginationIdentitiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPoolOriginationIdentitiesInput, ListPoolOriginationIdentitiesOutputResponse>(input: input, inputKey: \ListPoolOriginationIdentitiesInput.nextToken, outputKey: \ListPoolOriginationIdentitiesOutputResponse.nextToken, paginationFunction: self.listPoolOriginationIdentities(input:))
    }
}

extension ListPoolOriginationIdentitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPoolOriginationIdentitiesInput {
        return ListPoolOriginationIdentitiesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            poolId: self.poolId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPoolOriginationIdentitiesPaginated`
/// to access the nested member `[PinpointSMSVoiceV2ClientTypes.OriginationIdentityMetadata]`
/// - Returns: `[PinpointSMSVoiceV2ClientTypes.OriginationIdentityMetadata]`
extension PaginatorSequence where Input == ListPoolOriginationIdentitiesInput, Output == ListPoolOriginationIdentitiesOutputResponse {
    public func originationIdentities() async throws -> [PinpointSMSVoiceV2ClientTypes.OriginationIdentityMetadata] {
        return try await self.asyncCompactMap { item in item.originationIdentities }
    }
}
