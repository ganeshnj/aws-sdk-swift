// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteResourceServerInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteResourceServerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteResourceServerInput>,
                  next: H) -> Result<OperationOutput<DeleteResourceServerOutput, DeleteResourceServerError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteResourceServerInput>
    public typealias MOutput = OperationOutput<DeleteResourceServerOutput, DeleteResourceServerError>
    public typealias Context = HttpContext
}