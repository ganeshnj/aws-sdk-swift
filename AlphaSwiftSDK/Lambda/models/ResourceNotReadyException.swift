// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/**
 <p>The function is inactive and its VPC connection is no longer available. Wait for the VPC connection to
       reestablish and try again.</p>
 */
public struct ResourceNotReadyException: ServiceError {
    public var _headers: Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool? = false
    public var _type: ErrorType = .server
    /// <p>The exception message.</p>
    public var message: String?
    /// <p>The exception type.</p>
    public var type: String?

    public init (
        message: String? = nil,
        type: String? = nil
    )
    {
        self.message = message
        self.type = type
    }
}