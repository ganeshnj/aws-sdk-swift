// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListIdentityPoolsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListIdentityPoolsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListIdentityPoolsOutputResponse`
extension CognitoIdentityClient {
    public func listIdentityPoolsPaginated(input: ListIdentityPoolsInput) -> ClientRuntime.PaginatorSequence<ListIdentityPoolsInput, ListIdentityPoolsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListIdentityPoolsInput, ListIdentityPoolsOutputResponse>(input: input, inputKey: \ListIdentityPoolsInput.nextToken, outputKey: \ListIdentityPoolsOutputResponse.nextToken, paginationFunction: self.listIdentityPools(input:))
    }
}

extension ListIdentityPoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIdentityPoolsInput {
        return ListIdentityPoolsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listIdentityPoolsPaginated`
/// to access the nested member `[CognitoIdentityClientTypes.IdentityPoolShortDescription]`
/// - Returns: `[CognitoIdentityClientTypes.IdentityPoolShortDescription]`
extension PaginatorSequence where Input == ListIdentityPoolsInput, Output == ListIdentityPoolsOutputResponse {
    public func identityPools() async throws -> [CognitoIdentityClientTypes.IdentityPoolShortDescription] {
        return try await self.asyncCompactMap { item in item.identityPools }
    }
}
