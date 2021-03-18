// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

public struct SetUserSettingsInputQueryItemMiddleware: Middleware {
    public let id: String = "SetUserSettingsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetUserSettingsInput>,
                  next: H) -> Result<OperationOutput<SetUserSettingsOutput, SetUserSettingsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SetUserSettingsInput>
    public typealias MOutput = OperationOutput<SetUserSettingsOutput, SetUserSettingsError>
    public typealias Context = HttpContext
}