// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum SetUserPoolMfaConfigError {
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case invalidSmsRoleAccessPolicyException(InvalidSmsRoleAccessPolicyException)
    case invalidSmsRoleTrustRelationshipException(InvalidSmsRoleTrustRelationshipException)
    case notAuthorizedException(NotAuthorizedException)
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}