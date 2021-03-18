// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetDeviceOutputBody: Equatable {
    public let device: DeviceType?
}

extension GetDeviceOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case device = "Device"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceDecoded = try containerValues.decodeIfPresent(DeviceType.self, forKey: .device)
        device = deviceDecoded
    }
}