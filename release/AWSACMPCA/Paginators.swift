// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListCertificateAuthoritiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCertificateAuthoritiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCertificateAuthoritiesOutputResponse`
extension ACMPCAClient {
    public func listCertificateAuthoritiesPaginated(input: ListCertificateAuthoritiesInput) -> ClientRuntime.PaginatorSequence<ListCertificateAuthoritiesInput, ListCertificateAuthoritiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCertificateAuthoritiesInput, ListCertificateAuthoritiesOutputResponse>(input: input, inputKey: \ListCertificateAuthoritiesInput.nextToken, outputKey: \ListCertificateAuthoritiesOutputResponse.nextToken, paginationFunction: self.listCertificateAuthorities(input:))
    }
}

extension ListCertificateAuthoritiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCertificateAuthoritiesInput {
        return ListCertificateAuthoritiesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceOwner: self.resourceOwner
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCertificateAuthoritiesPaginated`
/// to access the nested member `[ACMPCAClientTypes.CertificateAuthority]`
/// - Returns: `[ACMPCAClientTypes.CertificateAuthority]`
extension PaginatorSequence where Input == ListCertificateAuthoritiesInput, Output == ListCertificateAuthoritiesOutputResponse {
    public func certificateAuthorities() async throws -> [ACMPCAClientTypes.CertificateAuthority] {
        return try await self.asyncCompactMap { item in item.certificateAuthorities }
    }
}

/// Paginate over `[ListPermissionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPermissionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPermissionsOutputResponse`
extension ACMPCAClient {
    public func listPermissionsPaginated(input: ListPermissionsInput) -> ClientRuntime.PaginatorSequence<ListPermissionsInput, ListPermissionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionsInput, ListPermissionsOutputResponse>(input: input, inputKey: \ListPermissionsInput.nextToken, outputKey: \ListPermissionsOutputResponse.nextToken, paginationFunction: self.listPermissions(input:))
    }
}

extension ListPermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionsInput {
        return ListPermissionsInput(
            certificateAuthorityArn: self.certificateAuthorityArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPermissionsPaginated`
/// to access the nested member `[ACMPCAClientTypes.Permission]`
/// - Returns: `[ACMPCAClientTypes.Permission]`
extension PaginatorSequence where Input == ListPermissionsInput, Output == ListPermissionsOutputResponse {
    public func permissions() async throws -> [ACMPCAClientTypes.Permission] {
        return try await self.asyncCompactMap { item in item.permissions }
    }
}

/// Paginate over `[ListTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsOutputResponse`
extension ACMPCAClient {
    public func listTagsPaginated(input: ListTagsInput) -> ClientRuntime.PaginatorSequence<ListTagsInput, ListTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsInput, ListTagsOutputResponse>(input: input, inputKey: \ListTagsInput.nextToken, outputKey: \ListTagsOutputResponse.nextToken, paginationFunction: self.listTags(input:))
    }
}

extension ListTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsInput {
        return ListTagsInput(
            certificateAuthorityArn: self.certificateAuthorityArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTagsPaginated`
/// to access the nested member `[ACMPCAClientTypes.Tag]`
/// - Returns: `[ACMPCAClientTypes.Tag]`
extension PaginatorSequence where Input == ListTagsInput, Output == ListTagsOutputResponse {
    public func tags() async throws -> [ACMPCAClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
