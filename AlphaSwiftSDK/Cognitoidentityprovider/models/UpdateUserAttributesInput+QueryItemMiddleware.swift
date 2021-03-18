// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct UpdateUserAttributesInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateUserAttributesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateUserAttributesInput>,
                  next: H) -> Result<OperationOutput<UpdateUserAttributesOutput, UpdateUserAttributesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateUserAttributesInput>
    public typealias MOutput = OperationOutput<UpdateUserAttributesOutput, UpdateUserAttributesError>
    public typealias Context = HttpContext
}