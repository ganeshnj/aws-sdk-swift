// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

struct AddPermissionOutputBody: Equatable {
    public let statement: String?
}

extension AddPermissionOutputBody: Decodable {
    private enum CodingKeys: String, CodingKey {
        case statement = "Statement"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statementDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statement)
        statement = statementDecoded
    }
}