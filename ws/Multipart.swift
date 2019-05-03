//
//  Multipart.swift
//  ws
//
//  Created by arden on 2019/5/3.
//  Copyright © 2019 s4cha. All rights reserved.
//

import Foundation

extension WS {
    public struct Multipart {
        public var multipartData = Data()
        public var multipartName = ""
        public var multipartFileName = "photo.jpg"
        public var multipartMimeType = "image/jpeg"
        
        public init() {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyyMMddHHmmss"
            let string = formatter.string(from: Date())
            let filename = "\(string).jpg"
            self.multipartFileName = filename
        }
        
        public init(multipartData: Data, multipartName: String, multipartFileName: String, multipartMimeType: String) {
            self.multipartData = multipartData
            self.multipartName = multipartName
            self.multipartFileName = multipartFileName
            self.multipartMimeType = multipartMimeType
        }
    }
}
