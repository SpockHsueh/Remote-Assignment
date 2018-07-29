//
//  Station.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/28.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import Foundation

struct Station: Codable {
    let StationAddress: String
    let StationID: String
    let StationName: StationDetail
    
    let StationPosition: StationLocation
    let BikeAllowOnHoliday: Bool
    let SrcUpdateTime: String
    let UpdateTime: String
}
