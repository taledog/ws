//
//  WSModelJSONParser.swift
//  ws
//
//  Created by Sacha Durand Saint Omer on 06/04/16.
//  Copyright © 2016 s4cha. All rights reserved.
//

import Foundation
import IkigaJSON

var jsonDecoder: IkigaJSONDecoder {
    return IkigaJSONDecoder()
}

open class WSModelJSONParser<T> {
    
    public init() { }
    
    fileprivate func resourceData(from json: JSON, keypath: String?) -> JSON {
        if let k = keypath, !k.isEmpty, let j = json[k] {
            return j
        }
        return json
    }
    
}

extension WSModelJSONParser where T: Codable {

    open func toModel(_ json: JSON, keypath: String? = nil) -> T {
        let data = resourceData(from: json, keypath: keypath)
        return resource(from: data)
    }
    
    open func toModels(_ json: JSON, keypath: String? = nil) -> [T] {
        guard let array = resourceData(from: json, keypath: keypath).collection else {
            return [T]()
        }
        return array.map { resource(from: $0) }
    }
    
    private func resource(from json: JSON) -> T {
        let t: T = try! jsonDecoder.decode(T.self, from: (json.data as? JSONObject)!)
        return t
    }
    
}
