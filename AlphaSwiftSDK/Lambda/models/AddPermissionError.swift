// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AddPermissionError {
    case invalidParameterValueException(InvalidParameterValueException)
    case policyLengthExceededException(PolicyLengthExceededException)
    case preconditionFailedException(PreconditionFailedException)
    case resourceConflictException(ResourceConflictException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serviceException(ServiceException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}