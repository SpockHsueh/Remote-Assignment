//
//  WeatherAPIClient.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/28.
//  Copyright © 2018年 Spoke. All rights reserved.
// https://stations-98a59.firebaseio.com/.json

import Foundation

class WeatherAPIClient {
    
    
    
    let url:URL = URL(string: "https://stations-98a59.firebaseio.com/.json")!
    
    let decoder = JSONDecoder()
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    
    typealias WeatherCompletionHandler = (Weather?, Error?) -> Void
    typealias CurrentWeatherCompletionHandler = (CurrentWeather?, Error?) -> Void
    
    
    // 拿到當前天氣的JSON實體 OR 錯誤
    private func getWeather(completionHandler completion: @escaping WeatherCompletionHandler) {
        
        // 確認網址是否正確
//        guard let url = URL(string: url, relativeTo: nil) else {
//            completion(nil, WeatherError.invalidUrl)
//            return
//        }
        
        let request = URLRequest(url: self.url)
        
        let task = session.dataTask(with: request) {data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, WeatherError.requestFailed)
                        return
                    }
                    
                    if httpResponse.statusCode == 200 {
                        do {
                            let weather = try self.decoder.decode(Weather.self, from: data)
                            completion(weather, nil)
                        } catch let error {
                            completion(nil, error)
                        }
                        
                    } else {
                        completion(nil, WeatherError.invaliData)
                    }
                } else if let error = error {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    }
    
    // 呼叫getWeather函數用(因為他是private)
    func getCurrentWeather(completionHandler completion: @escaping WeatherCompletionHandler) {
        getWeather { (weather, error) in
            completion(weather, error)
        }
    }
    
}
