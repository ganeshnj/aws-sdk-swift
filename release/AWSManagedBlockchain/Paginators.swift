// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccessorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccessorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccessorsOutputResponse`
extension ManagedBlockchainClient {
    public func listAccessorsPaginated(input: ListAccessorsInput) -> ClientRuntime.PaginatorSequence<ListAccessorsInput, ListAccessorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccessorsInput, ListAccessorsOutputResponse>(input: input, inputKey: \ListAccessorsInput.nextToken, outputKey: \ListAccessorsOutputResponse.nextToken, paginationFunction: self.listAccessors(input:))
    }
}

extension ListAccessorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccessorsInput {
        return ListAccessorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listAccessorsPaginated`
/// to access the nested member `[ManagedBlockchainClientTypes.AccessorSummary]`
/// - Returns: `[ManagedBlockchainClientTypes.AccessorSummary]`
extension PaginatorSequence where Input == ListAccessorsInput, Output == ListAccessorsOutputResponse {
    public func accessors() async throws -> [ManagedBlockchainClientTypes.AccessorSummary] {
        return try await self.asyncCompactMap { item in item.accessors }
    }
}

/// Paginate over `[ListInvitationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInvitationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInvitationsOutputResponse`
extension ManagedBlockchainClient {
    public func listInvitationsPaginated(input: ListInvitationsInput) -> ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutputResponse>(input: input, inputKey: \ListInvitationsInput.nextToken, outputKey: \ListInvitationsOutputResponse.nextToken, paginationFunction: self.listInvitations(input:))
    }
}

extension ListInvitationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInvitationsInput {
        return ListInvitationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListMembersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMembersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMembersOutputResponse`
extension ManagedBlockchainClient {
    public func listMembersPaginated(input: ListMembersInput) -> ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutputResponse>(input: input, inputKey: \ListMembersInput.nextToken, outputKey: \ListMembersOutputResponse.nextToken, paginationFunction: self.listMembers(input:))
    }
}

extension ListMembersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMembersInput {
        return ListMembersInput(
            isOwned: self.isOwned,
            maxResults: self.maxResults,
            name: self.name,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )}
}

/// Paginate over `[ListNetworksOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListNetworksInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListNetworksOutputResponse`
extension ManagedBlockchainClient {
    public func listNetworksPaginated(input: ListNetworksInput) -> ClientRuntime.PaginatorSequence<ListNetworksInput, ListNetworksOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNetworksInput, ListNetworksOutputResponse>(input: input, inputKey: \ListNetworksInput.nextToken, outputKey: \ListNetworksOutputResponse.nextToken, paginationFunction: self.listNetworks(input:))
    }
}

extension ListNetworksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNetworksInput {
        return ListNetworksInput(
            framework: self.framework,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            status: self.status
        )}
}

/// Paginate over `[ListNodesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListNodesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListNodesOutputResponse`
extension ManagedBlockchainClient {
    public func listNodesPaginated(input: ListNodesInput) -> ClientRuntime.PaginatorSequence<ListNodesInput, ListNodesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListNodesInput, ListNodesOutputResponse>(input: input, inputKey: \ListNodesInput.nextToken, outputKey: \ListNodesOutputResponse.nextToken, paginationFunction: self.listNodes(input:))
    }
}

extension ListNodesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNodesInput {
        return ListNodesInput(
            maxResults: self.maxResults,
            memberId: self.memberId,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )}
}

/// Paginate over `[ListProposalsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListProposalsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListProposalsOutputResponse`
extension ManagedBlockchainClient {
    public func listProposalsPaginated(input: ListProposalsInput) -> ClientRuntime.PaginatorSequence<ListProposalsInput, ListProposalsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProposalsInput, ListProposalsOutputResponse>(input: input, inputKey: \ListProposalsInput.nextToken, outputKey: \ListProposalsOutputResponse.nextToken, paginationFunction: self.listProposals(input:))
    }
}

extension ListProposalsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProposalsInput {
        return ListProposalsInput(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token
        )}
}

/// Paginate over `[ListProposalVotesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListProposalVotesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListProposalVotesOutputResponse`
extension ManagedBlockchainClient {
    public func listProposalVotesPaginated(input: ListProposalVotesInput) -> ClientRuntime.PaginatorSequence<ListProposalVotesInput, ListProposalVotesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProposalVotesInput, ListProposalVotesOutputResponse>(input: input, inputKey: \ListProposalVotesInput.nextToken, outputKey: \ListProposalVotesOutputResponse.nextToken, paginationFunction: self.listProposalVotes(input:))
    }
}

extension ListProposalVotesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProposalVotesInput {
        return ListProposalVotesInput(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token,
            proposalId: self.proposalId
        )}
}
