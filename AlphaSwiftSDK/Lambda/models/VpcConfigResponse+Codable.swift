// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension VpcConfigResponse: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case securityGroupIds = "SecurityGroupIds"
        case subnetIds = "SubnetIds"
        case vpcId = "VpcId"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let securityGroupIds = securityGroupIds {
            var securityGroupIdsContainer = container.nestedUnkeyedContainer(forKey: .securityGroupIds)
            for securitygroupids0 in securityGroupIds {
                try securityGroupIdsContainer.encode(securitygroupids0)
            }
        }
        if let subnetIds = subnetIds {
            var subnetIdsContainer = container.nestedUnkeyedContainer(forKey: .subnetIds)
            for subnetids0 in subnetIds {
                try subnetIdsContainer.encode(subnetids0)
            }
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: .vpcId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subnetIdsContainer = try containerValues.decodeIfPresent([String].self, forKey: .subnetIds)
        var subnetIdsDecoded0:[String]? = nil
        if let subnetIdsContainer = subnetIdsContainer {
            subnetIdsDecoded0 = [String]()
            for string0 in subnetIdsContainer {
                subnetIdsDecoded0?.append(string0)
            }
        }
        subnetIds = subnetIdsDecoded0
        let securityGroupIdsContainer = try containerValues.decodeIfPresent([String].self, forKey: .securityGroupIds)
        var securityGroupIdsDecoded0:[String]? = nil
        if let securityGroupIdsContainer = securityGroupIdsContainer {
            securityGroupIdsDecoded0 = [String]()
            for string0 in securityGroupIdsContainer {
                securityGroupIdsDecoded0?.append(string0)
            }
        }
        securityGroupIds = securityGroupIdsDecoded0
        let vpcIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcId)
        vpcId = vpcIdDecoded
    }
}