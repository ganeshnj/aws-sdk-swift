// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeAccountLimitsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeAccountLimitsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeAccountLimitsOutputResponse`
extension CloudFormationClient {
    public func describeAccountLimitsPaginated(input: DescribeAccountLimitsInput) -> ClientRuntime.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutputResponse>(input: input, inputKey: \DescribeAccountLimitsInput.nextToken, outputKey: \DescribeAccountLimitsOutputResponse.nextToken, paginationFunction: self.describeAccountLimits(input:))
    }
}

extension DescribeAccountLimitsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAccountLimitsInput {
        return DescribeAccountLimitsInput(
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeAccountLimitsPaginated`
/// to access the nested member `[CloudFormationClientTypes.AccountLimit]`
/// - Returns: `[CloudFormationClientTypes.AccountLimit]`
extension PaginatorSequence where Input == DescribeAccountLimitsInput, Output == DescribeAccountLimitsOutputResponse {
    public func accountLimits() async throws -> [CloudFormationClientTypes.AccountLimit] {
        return try await self.asyncCompactMap { item in item.accountLimits }
    }
}

/// Paginate over `[DescribeStackEventsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeStackEventsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeStackEventsOutputResponse`
extension CloudFormationClient {
    public func describeStackEventsPaginated(input: DescribeStackEventsInput) -> ClientRuntime.PaginatorSequence<DescribeStackEventsInput, DescribeStackEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeStackEventsInput, DescribeStackEventsOutputResponse>(input: input, inputKey: \DescribeStackEventsInput.nextToken, outputKey: \DescribeStackEventsOutputResponse.nextToken, paginationFunction: self.describeStackEvents(input:))
    }
}

extension DescribeStackEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStackEventsInput {
        return DescribeStackEventsInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeStackEventsPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackEvent]`
/// - Returns: `[CloudFormationClientTypes.StackEvent]`
extension PaginatorSequence where Input == DescribeStackEventsInput, Output == DescribeStackEventsOutputResponse {
    public func stackEvents() async throws -> [CloudFormationClientTypes.StackEvent] {
        return try await self.asyncCompactMap { item in item.stackEvents }
    }
}

/// Paginate over `[DescribeStackResourceDriftsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeStackResourceDriftsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeStackResourceDriftsOutputResponse`
extension CloudFormationClient {
    public func describeStackResourceDriftsPaginated(input: DescribeStackResourceDriftsInput) -> ClientRuntime.PaginatorSequence<DescribeStackResourceDriftsInput, DescribeStackResourceDriftsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeStackResourceDriftsInput, DescribeStackResourceDriftsOutputResponse>(input: input, inputKey: \DescribeStackResourceDriftsInput.nextToken, outputKey: \DescribeStackResourceDriftsOutputResponse.nextToken, paginationFunction: self.describeStackResourceDrifts(input:))
    }
}

extension DescribeStackResourceDriftsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStackResourceDriftsInput {
        return DescribeStackResourceDriftsInput(
            maxResults: self.maxResults,
            nextToken: token,
            stackName: self.stackName,
            stackResourceDriftStatusFilters: self.stackResourceDriftStatusFilters
        )}
}

/// Paginate over `[DescribeStacksOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeStacksInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeStacksOutputResponse`
extension CloudFormationClient {
    public func describeStacksPaginated(input: DescribeStacksInput) -> ClientRuntime.PaginatorSequence<DescribeStacksInput, DescribeStacksOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeStacksInput, DescribeStacksOutputResponse>(input: input, inputKey: \DescribeStacksInput.nextToken, outputKey: \DescribeStacksOutputResponse.nextToken, paginationFunction: self.describeStacks(input:))
    }
}

extension DescribeStacksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStacksInput {
        return DescribeStacksInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeStacksPaginated`
/// to access the nested member `[CloudFormationClientTypes.Stack]`
/// - Returns: `[CloudFormationClientTypes.Stack]`
extension PaginatorSequence where Input == DescribeStacksInput, Output == DescribeStacksOutputResponse {
    public func stacks() async throws -> [CloudFormationClientTypes.Stack] {
        return try await self.asyncCompactMap { item in item.stacks }
    }
}

/// Paginate over `[ListChangeSetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChangeSetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChangeSetsOutputResponse`
extension CloudFormationClient {
    public func listChangeSetsPaginated(input: ListChangeSetsInput) -> ClientRuntime.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutputResponse>(input: input, inputKey: \ListChangeSetsInput.nextToken, outputKey: \ListChangeSetsOutputResponse.nextToken, paginationFunction: self.listChangeSets(input:))
    }
}

extension ListChangeSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChangeSetsInput {
        return ListChangeSetsInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listChangeSetsPaginated`
/// to access the nested member `[CloudFormationClientTypes.ChangeSetSummary]`
/// - Returns: `[CloudFormationClientTypes.ChangeSetSummary]`
extension PaginatorSequence where Input == ListChangeSetsInput, Output == ListChangeSetsOutputResponse {
    public func summaries() async throws -> [CloudFormationClientTypes.ChangeSetSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}

/// Paginate over `[ListExportsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListExportsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListExportsOutputResponse`
extension CloudFormationClient {
    public func listExportsPaginated(input: ListExportsInput) -> ClientRuntime.PaginatorSequence<ListExportsInput, ListExportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListExportsInput, ListExportsOutputResponse>(input: input, inputKey: \ListExportsInput.nextToken, outputKey: \ListExportsOutputResponse.nextToken, paginationFunction: self.listExports(input:))
    }
}

extension ListExportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExportsInput {
        return ListExportsInput(
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listExportsPaginated`
/// to access the nested member `[CloudFormationClientTypes.Export]`
/// - Returns: `[CloudFormationClientTypes.Export]`
extension PaginatorSequence where Input == ListExportsInput, Output == ListExportsOutputResponse {
    public func exports() async throws -> [CloudFormationClientTypes.Export] {
        return try await self.asyncCompactMap { item in item.exports }
    }
}

/// Paginate over `[ListImportsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListImportsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListImportsOutputResponse`
extension CloudFormationClient {
    public func listImportsPaginated(input: ListImportsInput) -> ClientRuntime.PaginatorSequence<ListImportsInput, ListImportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListImportsInput, ListImportsOutputResponse>(input: input, inputKey: \ListImportsInput.nextToken, outputKey: \ListImportsOutputResponse.nextToken, paginationFunction: self.listImports(input:))
    }
}

extension ListImportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImportsInput {
        return ListImportsInput(
            exportName: self.exportName,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listImportsPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListImportsInput, Output == ListImportsOutputResponse {
    public func imports() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.imports }
    }
}

/// Paginate over `[ListStackInstancesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStackInstancesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStackInstancesOutputResponse`
extension CloudFormationClient {
    public func listStackInstancesPaginated(input: ListStackInstancesInput) -> ClientRuntime.PaginatorSequence<ListStackInstancesInput, ListStackInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStackInstancesInput, ListStackInstancesOutputResponse>(input: input, inputKey: \ListStackInstancesInput.nextToken, outputKey: \ListStackInstancesOutputResponse.nextToken, paginationFunction: self.listStackInstances(input:))
    }
}

extension ListStackInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackInstancesInput {
        return ListStackInstancesInput(
            callAs: self.callAs,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            stackInstanceAccount: self.stackInstanceAccount,
            stackInstanceRegion: self.stackInstanceRegion,
            stackSetName: self.stackSetName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStackInstancesPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackInstanceSummary]`
/// - Returns: `[CloudFormationClientTypes.StackInstanceSummary]`
extension PaginatorSequence where Input == ListStackInstancesInput, Output == ListStackInstancesOutputResponse {
    public func summaries() async throws -> [CloudFormationClientTypes.StackInstanceSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}

/// Paginate over `[ListStackResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStackResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStackResourcesOutputResponse`
extension CloudFormationClient {
    public func listStackResourcesPaginated(input: ListStackResourcesInput) -> ClientRuntime.PaginatorSequence<ListStackResourcesInput, ListStackResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStackResourcesInput, ListStackResourcesOutputResponse>(input: input, inputKey: \ListStackResourcesInput.nextToken, outputKey: \ListStackResourcesOutputResponse.nextToken, paginationFunction: self.listStackResources(input:))
    }
}

extension ListStackResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackResourcesInput {
        return ListStackResourcesInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStackResourcesPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackResourceSummary]`
/// - Returns: `[CloudFormationClientTypes.StackResourceSummary]`
extension PaginatorSequence where Input == ListStackResourcesInput, Output == ListStackResourcesOutputResponse {
    public func stackResourceSummaries() async throws -> [CloudFormationClientTypes.StackResourceSummary] {
        return try await self.asyncCompactMap { item in item.stackResourceSummaries }
    }
}

/// Paginate over `[ListStacksOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStacksInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStacksOutputResponse`
extension CloudFormationClient {
    public func listStacksPaginated(input: ListStacksInput) -> ClientRuntime.PaginatorSequence<ListStacksInput, ListStacksOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStacksInput, ListStacksOutputResponse>(input: input, inputKey: \ListStacksInput.nextToken, outputKey: \ListStacksOutputResponse.nextToken, paginationFunction: self.listStacks(input:))
    }
}

extension ListStacksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStacksInput {
        return ListStacksInput(
            nextToken: token,
            stackStatusFilter: self.stackStatusFilter
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStacksPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackSummary]`
/// - Returns: `[CloudFormationClientTypes.StackSummary]`
extension PaginatorSequence where Input == ListStacksInput, Output == ListStacksOutputResponse {
    public func stackSummaries() async throws -> [CloudFormationClientTypes.StackSummary] {
        return try await self.asyncCompactMap { item in item.stackSummaries }
    }
}

/// Paginate over `[ListStackSetOperationResultsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStackSetOperationResultsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStackSetOperationResultsOutputResponse`
extension CloudFormationClient {
    public func listStackSetOperationResultsPaginated(input: ListStackSetOperationResultsInput) -> ClientRuntime.PaginatorSequence<ListStackSetOperationResultsInput, ListStackSetOperationResultsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStackSetOperationResultsInput, ListStackSetOperationResultsOutputResponse>(input: input, inputKey: \ListStackSetOperationResultsInput.nextToken, outputKey: \ListStackSetOperationResultsOutputResponse.nextToken, paginationFunction: self.listStackSetOperationResults(input:))
    }
}

extension ListStackSetOperationResultsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackSetOperationResultsInput {
        return ListStackSetOperationResultsInput(
            callAs: self.callAs,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            operationId: self.operationId,
            stackSetName: self.stackSetName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStackSetOperationResultsPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackSetOperationResultSummary]`
/// - Returns: `[CloudFormationClientTypes.StackSetOperationResultSummary]`
extension PaginatorSequence where Input == ListStackSetOperationResultsInput, Output == ListStackSetOperationResultsOutputResponse {
    public func summaries() async throws -> [CloudFormationClientTypes.StackSetOperationResultSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}

/// Paginate over `[ListStackSetOperationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStackSetOperationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStackSetOperationsOutputResponse`
extension CloudFormationClient {
    public func listStackSetOperationsPaginated(input: ListStackSetOperationsInput) -> ClientRuntime.PaginatorSequence<ListStackSetOperationsInput, ListStackSetOperationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStackSetOperationsInput, ListStackSetOperationsOutputResponse>(input: input, inputKey: \ListStackSetOperationsInput.nextToken, outputKey: \ListStackSetOperationsOutputResponse.nextToken, paginationFunction: self.listStackSetOperations(input:))
    }
}

extension ListStackSetOperationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackSetOperationsInput {
        return ListStackSetOperationsInput(
            callAs: self.callAs,
            maxResults: self.maxResults,
            nextToken: token,
            stackSetName: self.stackSetName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStackSetOperationsPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackSetOperationSummary]`
/// - Returns: `[CloudFormationClientTypes.StackSetOperationSummary]`
extension PaginatorSequence where Input == ListStackSetOperationsInput, Output == ListStackSetOperationsOutputResponse {
    public func summaries() async throws -> [CloudFormationClientTypes.StackSetOperationSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}

/// Paginate over `[ListStackSetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStackSetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStackSetsOutputResponse`
extension CloudFormationClient {
    public func listStackSetsPaginated(input: ListStackSetsInput) -> ClientRuntime.PaginatorSequence<ListStackSetsInput, ListStackSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStackSetsInput, ListStackSetsOutputResponse>(input: input, inputKey: \ListStackSetsInput.nextToken, outputKey: \ListStackSetsOutputResponse.nextToken, paginationFunction: self.listStackSets(input:))
    }
}

extension ListStackSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackSetsInput {
        return ListStackSetsInput(
            callAs: self.callAs,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStackSetsPaginated`
/// to access the nested member `[CloudFormationClientTypes.StackSetSummary]`
/// - Returns: `[CloudFormationClientTypes.StackSetSummary]`
extension PaginatorSequence where Input == ListStackSetsInput, Output == ListStackSetsOutputResponse {
    public func summaries() async throws -> [CloudFormationClientTypes.StackSetSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}

/// Paginate over `[ListTypeRegistrationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTypeRegistrationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTypeRegistrationsOutputResponse`
extension CloudFormationClient {
    public func listTypeRegistrationsPaginated(input: ListTypeRegistrationsInput) -> ClientRuntime.PaginatorSequence<ListTypeRegistrationsInput, ListTypeRegistrationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTypeRegistrationsInput, ListTypeRegistrationsOutputResponse>(input: input, inputKey: \ListTypeRegistrationsInput.nextToken, outputKey: \ListTypeRegistrationsOutputResponse.nextToken, paginationFunction: self.listTypeRegistrations(input:))
    }
}

extension ListTypeRegistrationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypeRegistrationsInput {
        return ListTypeRegistrationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            registrationStatusFilter: self.registrationStatusFilter,
            type: self.type,
            typeArn: self.typeArn,
            typeName: self.typeName
        )}
}

/// Paginate over `[ListTypesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTypesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTypesOutputResponse`
extension CloudFormationClient {
    public func listTypesPaginated(input: ListTypesInput) -> ClientRuntime.PaginatorSequence<ListTypesInput, ListTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTypesInput, ListTypesOutputResponse>(input: input, inputKey: \ListTypesInput.nextToken, outputKey: \ListTypesOutputResponse.nextToken, paginationFunction: self.listTypes(input:))
    }
}

extension ListTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypesInput {
        return ListTypesInput(
            deprecatedStatus: self.deprecatedStatus,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningType: self.provisioningType,
            type: self.type,
            visibility: self.visibility
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTypesPaginated`
/// to access the nested member `[CloudFormationClientTypes.TypeSummary]`
/// - Returns: `[CloudFormationClientTypes.TypeSummary]`
extension PaginatorSequence where Input == ListTypesInput, Output == ListTypesOutputResponse {
    public func typeSummaries() async throws -> [CloudFormationClientTypes.TypeSummary] {
        return try await self.asyncCompactMap { item in item.typeSummaries }
    }
}

/// Paginate over `[ListTypeVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTypeVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTypeVersionsOutputResponse`
extension CloudFormationClient {
    public func listTypeVersionsPaginated(input: ListTypeVersionsInput) -> ClientRuntime.PaginatorSequence<ListTypeVersionsInput, ListTypeVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTypeVersionsInput, ListTypeVersionsOutputResponse>(input: input, inputKey: \ListTypeVersionsInput.nextToken, outputKey: \ListTypeVersionsOutputResponse.nextToken, paginationFunction: self.listTypeVersions(input:))
    }
}

extension ListTypeVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypeVersionsInput {
        return ListTypeVersionsInput(
            arn: self.arn,
            deprecatedStatus: self.deprecatedStatus,
            maxResults: self.maxResults,
            nextToken: token,
            publisherId: self.publisherId,
            type: self.type,
            typeName: self.typeName
        )}
}
