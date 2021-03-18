// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct DeleteLayerVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteLayerVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteLayerVersionInput>,
                  next: H) -> Result<OperationOutput<DeleteLayerVersionOutput, DeleteLayerVersionError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteLayerVersionInput>
    public typealias MOutput = OperationOutput<DeleteLayerVersionOutput, DeleteLayerVersionError>
    public typealias Context = HttpContext
}