// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension ListFunctionsByCodeSigningConfigOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListFunctionsByCodeSigningConfigOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.functionArns = output.functionArns
            self.nextMarker = output.nextMarker
        } else {
            self.functionArns = nil
            self.nextMarker = nil
        }
    }
}