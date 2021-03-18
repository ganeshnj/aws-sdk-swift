// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct UpdateTableReplicaAutoScalingOutputBody: Equatable {
    public let tableAutoScalingDescription: TableAutoScalingDescription?
}

extension UpdateTableReplicaAutoScalingOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case tableAutoScalingDescription = "TableAutoScalingDescription"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tableAutoScalingDescriptionDecoded = try containerValues.decodeIfPresent(TableAutoScalingDescription.self, forKey: .tableAutoScalingDescription)
        tableAutoScalingDescription = tableAutoScalingDescriptionDecoded
    }
}