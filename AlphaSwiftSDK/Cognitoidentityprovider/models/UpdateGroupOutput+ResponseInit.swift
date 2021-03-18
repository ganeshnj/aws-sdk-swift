// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension UpdateGroupOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateGroupOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.group = output.group
        } else {
            self.group = nil
        }
    }
}