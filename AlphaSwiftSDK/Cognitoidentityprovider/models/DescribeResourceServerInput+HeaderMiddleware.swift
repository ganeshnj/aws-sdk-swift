// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeResourceServerInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeResourceServerInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeResourceServerInput>,
                  next: H) -> Result<OperationOutput<DescribeResourceServerOutput, DescribeResourceServerError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeResourceServerInput>
    public typealias MOutput = OperationOutput<DescribeResourceServerOutput, DescribeResourceServerError>
    public typealias Context = HttpContext
}