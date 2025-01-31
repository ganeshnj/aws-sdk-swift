// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeAddressesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeAddressesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeAddressesOutputResponse`
extension SnowballClient {
    public func describeAddressesPaginated(input: DescribeAddressesInput) -> ClientRuntime.PaginatorSequence<DescribeAddressesInput, DescribeAddressesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAddressesInput, DescribeAddressesOutputResponse>(input: input, inputKey: \DescribeAddressesInput.nextToken, outputKey: \DescribeAddressesOutputResponse.nextToken, paginationFunction: self.describeAddresses(input:))
    }
}

extension DescribeAddressesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAddressesInput {
        return DescribeAddressesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeAddressesPaginated`
/// to access the nested member `[SnowballClientTypes.Address]`
/// - Returns: `[SnowballClientTypes.Address]`
extension PaginatorSequence where Input == DescribeAddressesInput, Output == DescribeAddressesOutputResponse {
    public func addresses() async throws -> [SnowballClientTypes.Address] {
        return try await self.asyncCompactMap { item in item.addresses }
    }
}

/// Paginate over `[ListClusterJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListClusterJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListClusterJobsOutputResponse`
extension SnowballClient {
    public func listClusterJobsPaginated(input: ListClusterJobsInput) -> ClientRuntime.PaginatorSequence<ListClusterJobsInput, ListClusterJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListClusterJobsInput, ListClusterJobsOutputResponse>(input: input, inputKey: \ListClusterJobsInput.nextToken, outputKey: \ListClusterJobsOutputResponse.nextToken, paginationFunction: self.listClusterJobs(input:))
    }
}

extension ListClusterJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClusterJobsInput {
        return ListClusterJobsInput(
            clusterId: self.clusterId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listClusterJobsPaginated`
/// to access the nested member `[SnowballClientTypes.JobListEntry]`
/// - Returns: `[SnowballClientTypes.JobListEntry]`
extension PaginatorSequence where Input == ListClusterJobsInput, Output == ListClusterJobsOutputResponse {
    public func jobListEntries() async throws -> [SnowballClientTypes.JobListEntry] {
        return try await self.asyncCompactMap { item in item.jobListEntries }
    }
}

/// Paginate over `[ListClustersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListClustersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListClustersOutputResponse`
extension SnowballClient {
    public func listClustersPaginated(input: ListClustersInput) -> ClientRuntime.PaginatorSequence<ListClustersInput, ListClustersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListClustersInput, ListClustersOutputResponse>(input: input, inputKey: \ListClustersInput.nextToken, outputKey: \ListClustersOutputResponse.nextToken, paginationFunction: self.listClusters(input:))
    }
}

extension ListClustersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListClustersInput {
        return ListClustersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listClustersPaginated`
/// to access the nested member `[SnowballClientTypes.ClusterListEntry]`
/// - Returns: `[SnowballClientTypes.ClusterListEntry]`
extension PaginatorSequence where Input == ListClustersInput, Output == ListClustersOutputResponse {
    public func clusterListEntries() async throws -> [SnowballClientTypes.ClusterListEntry] {
        return try await self.asyncCompactMap { item in item.clusterListEntries }
    }
}

/// Paginate over `[ListCompatibleImagesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCompatibleImagesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCompatibleImagesOutputResponse`
extension SnowballClient {
    public func listCompatibleImagesPaginated(input: ListCompatibleImagesInput) -> ClientRuntime.PaginatorSequence<ListCompatibleImagesInput, ListCompatibleImagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCompatibleImagesInput, ListCompatibleImagesOutputResponse>(input: input, inputKey: \ListCompatibleImagesInput.nextToken, outputKey: \ListCompatibleImagesOutputResponse.nextToken, paginationFunction: self.listCompatibleImages(input:))
    }
}

extension ListCompatibleImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCompatibleImagesInput {
        return ListCompatibleImagesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCompatibleImagesPaginated`
/// to access the nested member `[SnowballClientTypes.CompatibleImage]`
/// - Returns: `[SnowballClientTypes.CompatibleImage]`
extension PaginatorSequence where Input == ListCompatibleImagesInput, Output == ListCompatibleImagesOutputResponse {
    public func compatibleImages() async throws -> [SnowballClientTypes.CompatibleImage] {
        return try await self.asyncCompactMap { item in item.compatibleImages }
    }
}

/// Paginate over `[ListJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutputResponse`
extension SnowballClient {
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutputResponse.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
/// to access the nested member `[SnowballClientTypes.JobListEntry]`
/// - Returns: `[SnowballClientTypes.JobListEntry]`
extension PaginatorSequence where Input == ListJobsInput, Output == ListJobsOutputResponse {
    public func jobListEntries() async throws -> [SnowballClientTypes.JobListEntry] {
        return try await self.asyncCompactMap { item in item.jobListEntries }
    }
}

/// Paginate over `[ListLongTermPricingOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLongTermPricingInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLongTermPricingOutputResponse`
extension SnowballClient {
    public func listLongTermPricingPaginated(input: ListLongTermPricingInput) -> ClientRuntime.PaginatorSequence<ListLongTermPricingInput, ListLongTermPricingOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLongTermPricingInput, ListLongTermPricingOutputResponse>(input: input, inputKey: \ListLongTermPricingInput.nextToken, outputKey: \ListLongTermPricingOutputResponse.nextToken, paginationFunction: self.listLongTermPricing(input:))
    }
}

extension ListLongTermPricingInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLongTermPricingInput {
        return ListLongTermPricingInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listLongTermPricingPaginated`
/// to access the nested member `[SnowballClientTypes.LongTermPricingListEntry]`
/// - Returns: `[SnowballClientTypes.LongTermPricingListEntry]`
extension PaginatorSequence where Input == ListLongTermPricingInput, Output == ListLongTermPricingOutputResponse {
    public func longTermPricingEntries() async throws -> [SnowballClientTypes.LongTermPricingListEntry] {
        return try await self.asyncCompactMap { item in item.longTermPricingEntries }
    }
}
