// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/**
 <p>This exception is thrown when the trust relationship is invalid for the role provided
             for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does
             not match what is provided in the SMS configuration for the user pool.</p>
 */
public struct InvalidSmsRoleTrustRelationshipException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .client
    /**
     <p>The message returned when the role trust relationship for the SMS message is
                 invalid.</p>
     */
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}