//
//  StationAPIClient.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/28.
//  Copyright © 2018年 Spoke. All rights reserved.
// https://stations-98a59.firebaseio.com/.json

import Foundation

class StationAPIClient {
    
    let url:URL = URL(string: "https://stations-98a59.firebaseio.com/.json")!
    
    let decoder = JSONDecoder()
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    
    typealias StationCompletionHandler = (Station?, Error?) -> Void
//    typealias CurrentStationCompletionHandler = (StationDetail?, Error?) -> Void // 用一層closure就好？
    
    
    // 拿到當前天氣的JSON實體 OR 錯誤
    private func getStation(completionHandler completion: @escaping StationCompletionHandler) {
        
        // 確認網址是否正確
//        guard let url = URL(string: url, relativeTo: nil) else {
//            completion(nil, StationError.)
//            return
//        }
        
        let request = URLRequest(url: self.url)
        
        let task = session.dataTask(with: request) {data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, StationError.requestFailed)
                        return
                    }
                    
                    if httpResponse.statusCode == 200 {
                        do {
                            let station = try self.decoder.decode(Station.self, from: data)
                            completion(station, nil)
                        } catch let error {
                            completion(nil, error)
                        }
                        
                    } else {
                        completion(nil, StationError.invaliData)
                    }
                } else if let error = error {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    }
    
    // 呼叫getCurrentStation函數用(因為他是private)
    func getCurrentStation(completionHandler completion: @escaping StationCompletionHandler) {
        getStation { (station, error) in
            completion(station, error)
        }
    }
}
