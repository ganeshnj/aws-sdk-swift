// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct AdminGetUserInputQueryItemMiddleware: Middleware {
    public let id: String = "AdminGetUserInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminGetUserInput>,
                  next: H) -> Result<OperationOutput<AdminGetUserOutput, AdminGetUserError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminGetUserInput>
    public typealias MOutput = OperationOutput<AdminGetUserOutput, AdminGetUserError>
    public typealias Context = HttpContext
}