// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UntagResourceInput: Equatable {
    /**
     <p>The Amazon Resource Name (ARN) of the identity pool that the tags are assigned
              to.</p>
     */
    public let resourceArn: String?
    /// <p>The keys of the tags to remove from the user pool.</p>
    public let tagKeys: [String]?

    public init (
        resourceArn: String? = nil,
        tagKeys: [String]? = nil
    )
    {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }
}