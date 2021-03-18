// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension CreateAliasOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateAliasOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.aliasArn = output.aliasArn
            self.description = output.description
            self.functionVersion = output.functionVersion
            self.name = output.name
            self.revisionId = output.revisionId
            self.routingConfig = output.routingConfig
        } else {
            self.aliasArn = nil
            self.description = nil
            self.functionVersion = nil
            self.name = nil
            self.revisionId = nil
            self.routingConfig = nil
        }
    }
}