// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteFunctionEventInvokeConfigInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteFunctionEventInvokeConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteFunctionEventInvokeConfigInput>,
                  next: H) -> Result<OperationOutput<DeleteFunctionEventInvokeConfigOutput, DeleteFunctionEventInvokeConfigError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteFunctionEventInvokeConfigInput>
    public typealias MOutput = OperationOutput<DeleteFunctionEventInvokeConfigOutput, DeleteFunctionEventInvokeConfigError>
    public typealias Context = HttpContext
}