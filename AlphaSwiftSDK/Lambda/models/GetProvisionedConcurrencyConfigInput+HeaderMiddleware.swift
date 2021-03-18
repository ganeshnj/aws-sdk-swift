// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetProvisionedConcurrencyConfigInputHeadersMiddleware: Middleware {
    public let id: String = "GetProvisionedConcurrencyConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetProvisionedConcurrencyConfigInput>,
                  next: H) -> Result<OperationOutput<GetProvisionedConcurrencyConfigOutput, GetProvisionedConcurrencyConfigError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetProvisionedConcurrencyConfigInput>
    public typealias MOutput = OperationOutput<GetProvisionedConcurrencyConfigOutput, GetProvisionedConcurrencyConfigError>
    public typealias Context = HttpContext
}