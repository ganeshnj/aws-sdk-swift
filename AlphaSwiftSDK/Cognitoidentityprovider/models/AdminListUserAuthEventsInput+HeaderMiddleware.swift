// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AdminListUserAuthEventsInputHeadersMiddleware: Middleware {
    public let id: String = "AdminListUserAuthEventsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AdminListUserAuthEventsInput>,
                  next: H) -> Result<OperationOutput<AdminListUserAuthEventsOutput, AdminListUserAuthEventsError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AdminListUserAuthEventsInput>
    public typealias MOutput = OperationOutput<AdminListUserAuthEventsOutput, AdminListUserAuthEventsError>
    public typealias Context = HttpContext
}