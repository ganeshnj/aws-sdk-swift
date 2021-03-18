// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SetIdentityPoolRolesInputHeadersMiddleware: Middleware {
    public let id: String = "SetIdentityPoolRolesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetIdentityPoolRolesInput>,
                  next: H) -> Result<OperationOutput<SetIdentityPoolRolesOutput, SetIdentityPoolRolesError>, Error>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SetIdentityPoolRolesInput>
    public typealias MOutput = OperationOutput<SetIdentityPoolRolesOutput, SetIdentityPoolRolesError>
    public typealias Context = HttpContext
}