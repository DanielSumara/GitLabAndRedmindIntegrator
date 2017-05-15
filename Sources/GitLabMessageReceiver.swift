//
//  GitLabMessageReceiver.swift
//  GitLabRedmindIntegrator
//
//  Created by Daniel Sumara on 15.05.2017.
//
//

import Foundation
import PerfectHTTP

public struct GitLabMessageReceiver {
    
    public func handle(request: HTTPRequest, response: HTTPResponse) {
        print(request.postBodyString)
        
        response.setHeader(.contentType, value: "application/json")
        response.status = .ok
        
        response.completed()
    }
    
}
