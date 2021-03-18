// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AutoScalingSettingsDescription: Codable, Reflection {
    private enum CodingKeys: String, CodingKey {
        case autoScalingDisabled = "AutoScalingDisabled"
        case autoScalingRoleArn = "AutoScalingRoleArn"
        case maximumUnits = "MaximumUnits"
        case minimumUnits = "MinimumUnits"
        case scalingPolicies = "ScalingPolicies"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let autoScalingDisabled = autoScalingDisabled {
            try container.encode(autoScalingDisabled, forKey: .autoScalingDisabled)
        }
        if let autoScalingRoleArn = autoScalingRoleArn {
            try container.encode(autoScalingRoleArn, forKey: .autoScalingRoleArn)
        }
        if let maximumUnits = maximumUnits {
            try container.encode(maximumUnits, forKey: .maximumUnits)
        }
        if let minimumUnits = minimumUnits {
            try container.encode(minimumUnits, forKey: .minimumUnits)
        }
        if let scalingPolicies = scalingPolicies {
            var scalingPoliciesContainer = container.nestedUnkeyedContainer(forKey: .scalingPolicies)
            for autoscalingpolicydescriptionlist0 in scalingPolicies {
                try scalingPoliciesContainer.encode(autoscalingpolicydescriptionlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let minimumUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .minimumUnits)
        minimumUnits = minimumUnitsDecoded
        let maximumUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumUnits)
        maximumUnits = maximumUnitsDecoded
        let autoScalingDisabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .autoScalingDisabled)
        autoScalingDisabled = autoScalingDisabledDecoded
        let autoScalingRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .autoScalingRoleArn)
        autoScalingRoleArn = autoScalingRoleArnDecoded
        let scalingPoliciesContainer = try containerValues.decodeIfPresent([AutoScalingPolicyDescription].self, forKey: .scalingPolicies)
        var scalingPoliciesDecoded0:[AutoScalingPolicyDescription]? = nil
        if let scalingPoliciesContainer = scalingPoliciesContainer {
            scalingPoliciesDecoded0 = [AutoScalingPolicyDescription]()
            for structure0 in scalingPoliciesContainer {
                scalingPoliciesDecoded0?.append(structure0)
            }
        }
        scalingPolicies = scalingPoliciesDecoded0
    }
}