// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AdminListUserAuthEventsInput: Equatable {
    /// <p>The maximum number of authentication events to return.</p>
    public let maxResults: Int?
    /// <p>A pagination token.</p>
    public let nextToken: String?
    /// <p>The user pool ID.</p>
    public let userPoolId: String?
    /// <p>The user pool username or an alias.</p>
    public let username: String?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        userPoolId: String? = nil,
        username: String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.userPoolId = userPoolId
        self.username = username
    }
}