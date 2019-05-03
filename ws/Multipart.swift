//
//  Multipart.swift
//  ws
//
//  Created by arden on 2019/5/3.
//  Copyright © 2019 s4cha. All rights reserved.
//

import Foundation

public struct Multipart {
    var multipartData = Data()
    var multipartName = ""
    var multipartFileName = "photo.jpg"
    var multipartMimeType = "image/jpeg"
}
