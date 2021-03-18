// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime
import Foundation

extension AdminListGroupsForUserOutput: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {

        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AdminListGroupsForUserOutputBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.groups = output.groups
            self.nextToken = output.nextToken
        } else {
            self.groups = nil
            self.nextToken = nil
        }
    }
}