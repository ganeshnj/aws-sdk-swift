// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct GetCredentialsForIdentityOutputBody: Equatable {
    public let identityId: String?
    public let credentials: Credentials?
}

extension GetCredentialsForIdentityOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case credentials = "Credentials"
        case identityId = "IdentityId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityId)
        identityId = identityIdDecoded
        let credentialsDecoded = try containerValues.decodeIfPresent(Credentials.self, forKey: .credentials)
        credentials = credentialsDecoded
    }
}