// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListCampaignsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCampaignsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCampaignsOutputResponse`
extension ConnectCampaignsClient {
    public func listCampaignsPaginated(input: ListCampaignsInput) -> ClientRuntime.PaginatorSequence<ListCampaignsInput, ListCampaignsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCampaignsInput, ListCampaignsOutputResponse>(input: input, inputKey: \ListCampaignsInput.nextToken, outputKey: \ListCampaignsOutputResponse.nextToken, paginationFunction: self.listCampaigns(input:))
    }
}

extension ListCampaignsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCampaignsInput {
        return ListCampaignsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCampaignsPaginated`
/// to access the nested member `[ConnectCampaignsClientTypes.CampaignSummary]`
/// - Returns: `[ConnectCampaignsClientTypes.CampaignSummary]`
extension PaginatorSequence where Input == ListCampaignsInput, Output == ListCampaignsOutputResponse {
    public func campaignSummaryList() async throws -> [ConnectCampaignsClientTypes.CampaignSummary] {
        return try await self.asyncCompactMap { item in item.campaignSummaryList }
    }
}
