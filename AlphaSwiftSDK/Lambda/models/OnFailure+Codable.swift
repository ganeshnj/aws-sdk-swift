// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension OnFailure: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case destination = "Destination"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let destination = destination {
            try container.encode(destination, forKey: .destination)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destination)
        destination = destinationDecoded
    }
}