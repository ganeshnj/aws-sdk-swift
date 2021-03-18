// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteFunctionInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteFunctionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFunctionInput>,
                  next: H) -> Result<OperationOutput<DeleteFunctionOutput, DeleteFunctionError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFunctionInput>
    public typealias MOutput = OperationOutput<DeleteFunctionOutput, DeleteFunctionError>
    public typealias Context = HttpContext
}