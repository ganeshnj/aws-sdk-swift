// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct UpdateResourceServerInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateResourceServerInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateResourceServerInput>,
                  next: H) -> Result<OperationOutput<UpdateResourceServerOutput, UpdateResourceServerError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateResourceServerInput>
    public typealias MOutput = OperationOutput<UpdateResourceServerOutput, UpdateResourceServerError>
    public typealias Context = HttpContext
}