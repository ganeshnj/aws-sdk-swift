// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListDevicesInputHeadersMiddleware: Middleware {
    public let id: String = "ListDevicesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListDevicesInput>,
                  next: H) -> Result<OperationOutput<ListDevicesOutput, ListDevicesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListDevicesInput>
    public typealias MOutput = OperationOutput<ListDevicesOutput, ListDevicesError>
    public typealias Context = HttpContext
}