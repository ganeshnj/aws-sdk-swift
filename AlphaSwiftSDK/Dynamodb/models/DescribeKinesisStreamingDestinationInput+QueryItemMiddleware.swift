// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DescribeKinesisStreamingDestinationInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeKinesisStreamingDestinationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeKinesisStreamingDestinationInput>,
                  next: H) -> Result<OperationOutput<DescribeKinesisStreamingDestinationOutput, DescribeKinesisStreamingDestinationError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeKinesisStreamingDestinationInput>
    public typealias MOutput = OperationOutput<DescribeKinesisStreamingDestinationOutput, DescribeKinesisStreamingDestinationError>
    public typealias Context = HttpContext
}