//
//  StationError.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/28.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import Foundation

enum StationError: Error {
    case requestFailed
    case resonseUnsuccessful(statusCode: Int)
    case invaliData
    case jsonParsingFailure
    case invalidUrl
}
