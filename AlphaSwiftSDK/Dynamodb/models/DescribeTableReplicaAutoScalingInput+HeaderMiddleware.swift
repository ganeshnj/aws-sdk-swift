// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeTableReplicaAutoScalingInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeTableReplicaAutoScalingInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTableReplicaAutoScalingInput>,
                  next: H) -> Result<OperationOutput<DescribeTableReplicaAutoScalingOutput, DescribeTableReplicaAutoScalingError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeTableReplicaAutoScalingInput>
    public typealias MOutput = OperationOutput<DescribeTableReplicaAutoScalingOutput, DescribeTableReplicaAutoScalingError>
    public typealias Context = HttpContext
}