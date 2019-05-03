//
//  WS+Multipart+TypedCalls.swift
//  ws
//
//  Created by Sacha Durand Saint Omer on 06/04/16.
//  Copyright © 2016 s4cha. All rights reserved.
//

import Arrow
import Foundation
import then

extension WS {
    public func post<T: ArrowParsable>(_ url: String,
                                       params: Params = Params(),
                                       multipart: Multipart,
                                       keypath: String? = nil) -> Promise<[T]> {
        return resourceMultipartCall(.post, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func post<T: ArrowParsable>(_ url: String,
                                       params: Params = Params(),
                                       multipart: Multipart,
                                       keypath: String? = nil) -> Promise<T> {
        return resourceMultipartCall(.post, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func post<T: ArrowParsable>(_ url: String,
                                       params: Params = Params(),
                                       multiparts: [Multipart],
                                       keypath: String? = nil) -> Promise<[T]> {
        return resourceMultipartCall(.post, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func post<T: ArrowParsable>(_ url: String,
                                       params: Params = Params(),
                                       multiparts: [Multipart],
                                       keypath: String? = nil) -> Promise<T> {
        return resourceMultipartCall(.post, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func put<T: ArrowParsable>(_ url: String,
                                      params: Params = Params(),
                                      multipart: Multipart,
                                      keypath: String? = nil) -> Promise<[T]> {
        return resourceMultipartCall(.put, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func put<T: ArrowParsable>(_ url: String,
                                      params: Params = Params(),
                                      multipart: Multipart,
                                      keypath: String? = nil) -> Promise<T> {
        return resourceMultipartCall(.put, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func put<T: ArrowParsable>(_ url: String,
                                      params: Params = Params(),
                                      multiparts: [Multipart],
                                      keypath: String? = nil) -> Promise<[T]> {
        return resourceMultipartCall(.put, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func put<T: ArrowParsable>(_ url: String,
                                      params: Params = Params(),
                                      multiparts: [Multipart],
                                      keypath: String? = nil) -> Promise<T> {
        return resourceMultipartCall(.put, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func patch<T: ArrowParsable>(_ url: String,
                                        params: Params = Params(),
                                        multipart: Multipart,
                                        keypath: String? = nil) -> Promise<[T]> {
        return resourceMultipartCall(.patch, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func patch<T: ArrowParsable>(_ url: String,
                                        params: Params = Params(),
                                        multipart: Multipart,
                                        keypath: String? = nil) -> Promise<T> {
        return resourceMultipartCall(.patch, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func patch<T: ArrowParsable>(_ url: String,
                                        params: Params = Params(),
                                        multiparts: [Multipart],
                                        keypath: String? = nil) -> Promise<[T]> {
        return resourceMultipartCall(.patch, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func patch<T: ArrowParsable>(_ url: String,
                                        params: Params = Params(),
                                        multiparts: [Multipart],
                                        keypath: String? = nil) -> Promise<T> {
        return resourceMultipartCall(.patch, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }

    private func resourceMultipartCall<T: ArrowParsable>(_ verb: WSHTTPVerb,
                                                url: String,
                                                params: Params = Params(),
                                                multiparts: [Multipart],
                                                keypath: String? = nil) -> Promise<T> {
        let c = defaultCall()
        c.httpVerb = verb
        c.URL = url
        c.params = params
        c.isMultipart = true
        c.multiparts = multiparts
        
        // Apply corresponding JSON mapper
        return c.fetch().registerThen { (json: JSON) -> T in
            return WSModelJSONParser<T>().toModel(json, keypath: keypath)
            }.resolveOnMainThread()
    }
    
    private func resourceMultipartCall<T: ArrowParsable>(_ verb: WSHTTPVerb,
                                                url: String,
                                                params: Params = Params(),
                                                multiparts: [Multipart],
                                                keypath: String? = nil) -> Promise<[T]> {
        let c = defaultCall()
        c.httpVerb = verb
        c.URL = url
        c.params = params
        c.isMultipart = true
        c.multiparts = multiparts
        
        // Apply corresponding JSON mapper
        return c.fetch().registerThen { (json: JSON) -> [T] in
            WSModelJSONParser<T>().toModels(json, keypath: keypath)
            }.resolveOnMainThread()
    }
}

extension WS {
    public func post<T: ArrowInitializable>(_ url: String,
                                       params: Params = Params(),
                                       multipart: Multipart,
                                       keypath: String? = nil) -> Promise<[T]> {
        return typeMultipartCall(.post, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func post<T: ArrowInitializable>(_ url: String,
                                       params: Params = Params(),
                                       multipart: Multipart,
                                       keypath: String? = nil) -> Promise<T> {
        return typeMultipartCall(.post, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func post<T: ArrowInitializable>(_ url: String,
                                       params: Params = Params(),
                                       multiparts: [Multipart],
                                       keypath: String? = nil) -> Promise<[T]> {
        return typeMultipartCall(.post, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func post<T: ArrowInitializable>(_ url: String,
                                       params: Params = Params(),
                                       multiparts: [Multipart],
                                       keypath: String? = nil) -> Promise<T> {
        return typeMultipartCall(.post, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func put<T: ArrowInitializable>(_ url: String,
                                      params: Params = Params(),
                                      multipart: Multipart,
                                      keypath: String? = nil) -> Promise<[T]> {
        return typeMultipartCall(.put, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func put<T: ArrowInitializable>(_ url: String,
                                      params: Params = Params(),
                                      multipart: Multipart,
                                      keypath: String? = nil) -> Promise<T> {
        return typeMultipartCall(.put, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func put<T: ArrowInitializable>(_ url: String,
                                      params: Params = Params(),
                                      multiparts: [Multipart],
                                      keypath: String? = nil) -> Promise<[T]> {
        return typeMultipartCall(.put, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func put<T: ArrowInitializable>(_ url: String,
                                      params: Params = Params(),
                                      multiparts: [Multipart],
                                      keypath: String? = nil) -> Promise<T> {
        return typeMultipartCall(.put, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func patch<T: ArrowInitializable>(_ url: String,
                                        params: Params = Params(),
                                        multipart: Multipart,
                                        keypath: String? = nil) -> Promise<[T]> {
        return typeMultipartCall(.patch, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func patch<T: ArrowInitializable>(_ url: String,
                                        params: Params = Params(),
                                        multipart: Multipart,
                                        keypath: String? = nil) -> Promise<T> {
        return typeMultipartCall(.patch, url: url, params: params, multiparts: [multipart], keypath: keypath)
    }
    
    public func patch<T: ArrowInitializable>(_ url: String,
                                        params: Params = Params(),
                                        multiparts: [Multipart],
                                        keypath: String? = nil) -> Promise<[T]> {
        return typeMultipartCall(.patch, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    public func patch<T: ArrowInitializable>(_ url: String,
                                        params: Params = Params(),
                                        multiparts: [Multipart],
                                        keypath: String? = nil) -> Promise<T> {
        return typeMultipartCall(.patch, url: url, params: params, multiparts: multiparts, keypath: keypath)
    }
    
    private func typeMultipartCall<T: ArrowInitializable>(_ verb: WSHTTPVerb,
                                                 url: String,
                                                 params: Params = Params(),
                                                 multiparts: [Multipart],
                                                 keypath: String? = nil) -> Promise<T> {
        let c = defaultCall()
        c.httpVerb = verb
        c.URL = url
        c.params = params
        c.isMultipart = true
        c.multiparts = multiparts
        
        // Apply corresponding JSON mapper
        return c.fetch()
            .registerThen { (json: JSON) in
                Promise<T> { (resolve, reject) in
                    if let t: T = WSModelJSONParser<T>().toModel(json, keypath: keypath) {
                        resolve(t)
                    } else {
                        reject(WSError.unableToParseResponse)
                    }
                }
            }
            .resolveOnMainThread()
    }
    
    private func typeMultipartCall<T: ArrowInitializable>(_ verb: WSHTTPVerb,
                                                 url: String,
                                                 params: Params = Params(),
                                                 multiparts: [Multipart],
                                                 keypath: String? = nil) -> Promise<[T]> {
        let c = defaultCall()
        c.httpVerb = verb
        c.URL = url
        c.params = params
        c.isMultipart = true
        c.multiparts = multiparts
        
        // Apply corresponding JSON mapper
        return c.fetch()
            .registerThen { (json: JSON) in
                Promise<[T]> { (resolve, reject) in
                    if let t: [T] = WSModelJSONParser<T>().toModels(json, keypath: keypath) {
                        resolve(t)
                    } else {
                        reject(WSError.unableToParseResponse)
                    }
                }
            }
            .resolveOnMainThread()
    }
}
