// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension DescribeExportInput: Encodable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case exportArn = "ExportArn"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let exportArn = exportArn {
            try container.encode(exportArn, forKey: .exportArn)
        }
    }
}