// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListConnectionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListConnectionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListConnectionsOutputResponse`
extension CodeStarconnectionsClient {
    public func listConnectionsPaginated(input: ListConnectionsInput) -> ClientRuntime.PaginatorSequence<ListConnectionsInput, ListConnectionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListConnectionsInput, ListConnectionsOutputResponse>(input: input, inputKey: \ListConnectionsInput.nextToken, outputKey: \ListConnectionsOutputResponse.nextToken, paginationFunction: self.listConnections(input:))
    }
}

extension ListConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConnectionsInput {
        return ListConnectionsInput(
            hostArnFilter: self.hostArnFilter,
            maxResults: self.maxResults,
            nextToken: token,
            providerTypeFilter: self.providerTypeFilter
        )}
}

/// Paginate over `[ListHostsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListHostsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListHostsOutputResponse`
extension CodeStarconnectionsClient {
    public func listHostsPaginated(input: ListHostsInput) -> ClientRuntime.PaginatorSequence<ListHostsInput, ListHostsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListHostsInput, ListHostsOutputResponse>(input: input, inputKey: \ListHostsInput.nextToken, outputKey: \ListHostsOutputResponse.nextToken, paginationFunction: self.listHosts(input:))
    }
}

extension ListHostsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHostsInput {
        return ListHostsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
