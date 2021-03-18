// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ContributorInsightsStatus {
    case disabled
    case disabling
    case enabled
    case enabling
    case failed
    case sdkUnknown(String)
}

extension ContributorInsightsStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ContributorInsightsStatus] {
        return [
            .disabled,
            .disabling,
            .enabled,
            .enabling,
            .failed,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "DISABLED"
        case .disabling: return "DISABLING"
        case .enabled: return "ENABLED"
        case .enabling: return "ENABLING"
        case .failed: return "FAILED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ContributorInsightsStatus(rawValue: rawValue) ?? ContributorInsightsStatus.sdkUnknown(rawValue)
    }
}