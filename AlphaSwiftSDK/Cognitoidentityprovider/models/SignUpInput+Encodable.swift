// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension SignUpInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case analyticsMetadata = "AnalyticsMetadata"
        case clientId = "ClientId"
        case clientMetadata = "ClientMetadata"
        case password = "Password"
        case secretHash = "SecretHash"
        case userAttributes = "UserAttributes"
        case userContextData = "UserContextData"
        case username = "Username"
        case validationData = "ValidationData"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let analyticsMetadata = analyticsMetadata {
            try container.encode(analyticsMetadata, forKey: .analyticsMetadata)
        }
        if let clientId = clientId {
            try container.encode(clientId, forKey: .clientId)
        }
        if let clientMetadata = clientMetadata {
            var clientMetadataContainer = container.nestedContainer(keyedBy: Key.self, forKey: .clientMetadata)
            for (dictKey0, clientmetadatatype0) in clientMetadata {
                try clientMetadataContainer.encode(clientmetadatatype0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let password = password {
            try container.encode(password, forKey: .password)
        }
        if let secretHash = secretHash {
            try container.encode(secretHash, forKey: .secretHash)
        }
        if let userAttributes = userAttributes {
            var userAttributesContainer = container.nestedUnkeyedContainer(forKey: .userAttributes)
            for attributelisttype0 in userAttributes {
                try userAttributesContainer.encode(attributelisttype0)
            }
        }
        if let userContextData = userContextData {
            try container.encode(userContextData, forKey: .userContextData)
        }
        if let username = username {
            try container.encode(username, forKey: .username)
        }
        if let validationData = validationData {
            var validationDataContainer = container.nestedUnkeyedContainer(forKey: .validationData)
            for attributelisttype0 in validationData {
                try validationDataContainer.encode(attributelisttype0)
            }
        }
    }
}