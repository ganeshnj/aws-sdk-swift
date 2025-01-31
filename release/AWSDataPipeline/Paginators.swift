// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeObjectsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeObjectsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeObjectsOutputResponse`
extension DataPipelineClient {
    public func describeObjectsPaginated(input: DescribeObjectsInput) -> ClientRuntime.PaginatorSequence<DescribeObjectsInput, DescribeObjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeObjectsInput, DescribeObjectsOutputResponse>(input: input, inputKey: \DescribeObjectsInput.marker, outputKey: \DescribeObjectsOutputResponse.marker, paginationFunction: self.describeObjects(input:))
    }
}

extension DescribeObjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeObjectsInput {
        return DescribeObjectsInput(
            evaluateExpressions: self.evaluateExpressions,
            marker: token,
            objectIds: self.objectIds,
            pipelineId: self.pipelineId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeObjectsPaginated`
/// to access the nested member `[DataPipelineClientTypes.PipelineObject]`
/// - Returns: `[DataPipelineClientTypes.PipelineObject]`
extension PaginatorSequence where Input == DescribeObjectsInput, Output == DescribeObjectsOutputResponse {
    public func pipelineObjects() async throws -> [DataPipelineClientTypes.PipelineObject] {
        return try await self.asyncCompactMap { item in item.pipelineObjects }
    }
}

/// Paginate over `[ListPipelinesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPipelinesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPipelinesOutputResponse`
extension DataPipelineClient {
    public func listPipelinesPaginated(input: ListPipelinesInput) -> ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutputResponse>(input: input, inputKey: \ListPipelinesInput.marker, outputKey: \ListPipelinesOutputResponse.marker, paginationFunction: self.listPipelines(input:))
    }
}

extension ListPipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPipelinesInput {
        return ListPipelinesInput(
            marker: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPipelinesPaginated`
/// to access the nested member `[DataPipelineClientTypes.PipelineIdName]`
/// - Returns: `[DataPipelineClientTypes.PipelineIdName]`
extension PaginatorSequence where Input == ListPipelinesInput, Output == ListPipelinesOutputResponse {
    public func pipelineIdList() async throws -> [DataPipelineClientTypes.PipelineIdName] {
        return try await self.asyncCompactMap { item in item.pipelineIdList }
    }
}

/// Paginate over `[QueryObjectsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[QueryObjectsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `QueryObjectsOutputResponse`
extension DataPipelineClient {
    public func queryObjectsPaginated(input: QueryObjectsInput) -> ClientRuntime.PaginatorSequence<QueryObjectsInput, QueryObjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<QueryObjectsInput, QueryObjectsOutputResponse>(input: input, inputKey: \QueryObjectsInput.marker, outputKey: \QueryObjectsOutputResponse.marker, paginationFunction: self.queryObjects(input:))
    }
}

extension QueryObjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> QueryObjectsInput {
        return QueryObjectsInput(
            limit: self.limit,
            marker: token,
            pipelineId: self.pipelineId,
            query: self.query,
            sphere: self.sphere
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `queryObjectsPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == QueryObjectsInput, Output == QueryObjectsOutputResponse {
    public func ids() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.ids }
    }
}
