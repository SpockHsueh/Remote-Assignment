//
//  StationDetail.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/28.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import Foundation

struct StationDetail: Codable {
    let En: String
    let Zh_tw: String
}

struct StationLocation: Codable {
    let PositionLat: Double
    let PositionLon: Double
}
