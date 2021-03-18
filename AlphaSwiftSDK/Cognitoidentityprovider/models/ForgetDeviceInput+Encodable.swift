// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ForgetDeviceInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case deviceKey = "DeviceKey"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let accessToken = accessToken {
            try container.encode(accessToken, forKey: .accessToken)
        }
        if let deviceKey = deviceKey {
            try container.encode(deviceKey, forKey: .deviceKey)
        }
    }
}