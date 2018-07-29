//
//  StationViewModel.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/29.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import Foundation

struct StationViewModel {
    let bikeAllowOnHoliday: Bool
    let srcUpdateTime: String
    let StationAddress: String
    let StationID: String
    let EnName: String
    let Zh_twName: String
    let PositionLat: String
    let PositionLon: String
    let UpdateTime: String
    
    init(model: Station) {
        self.bikeAllowOnHoliday = model.BikeAllowOnHoliday
        self.srcUpdateTime = model.SrcUpdateTime
        self.StationAddress = model.StationAddress
        self.StationID = model.StationID
        self.EnName = model.StationName.En
        self.Zh_twName = model.StationName.Zh_tw
        self.PositionLat = "\(model.StationPosition.PositionLat)"
        self.PositionLon = "\(model.StationPosition.PositionLon)"
        self.UpdateTime = model.UpdateTime
    }
}
