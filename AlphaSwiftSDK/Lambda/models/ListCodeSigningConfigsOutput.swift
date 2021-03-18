// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCodeSigningConfigsOutput: Equatable {
    /// <p>The code signing configurations</p>
    public let codeSigningConfigs: [CodeSigningConfig]?
    /// <p>The pagination token that's included if more results are available.</p>
    public let nextMarker: String?

    public init (
        codeSigningConfigs: [CodeSigningConfig]? = nil,
        nextMarker: String? = nil
    )
    {
        self.codeSigningConfigs = codeSigningConfigs
        self.nextMarker = nextMarker
    }
}