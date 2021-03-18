// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a Contributor Insights summary entry.</p>
public struct ContributorInsightsSummary: Equatable {
    /// <p>Describes the current status for contributor insights for the given table and index, if applicable.</p>
    public let contributorInsightsStatus: ContributorInsightsStatus?
    /// <p>Name of the index associated with the summary, if any.</p>
    public let indexName: String?
    /// <p>Name of the table associated with the summary.</p>
    public let tableName: String?

    public init (
        contributorInsightsStatus: ContributorInsightsStatus? = nil,
        indexName: String? = nil,
        tableName: String? = nil
    )
    {
        self.contributorInsightsStatus = contributorInsightsStatus
        self.indexName = indexName
        self.tableName = tableName
    }
}