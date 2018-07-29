//
//  ViewController.swift
//  Assignment-Week4_Spock
//
//  Created by Spoke on 2018/7/28.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var stationIDLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    
    
   lazy var stationNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 80)
        label.textColor = .white
        return label
    }()
    
    
    lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    
    let client = StationAPIClient(configuration: .default)

    override func viewDidLoad() {
        super.viewDidLoad()
        getStationData()
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupStationNameLabel()
        setupStationIDLabelConstraonts()
        setupAddressLabel()
    }
    
    
    func setupStationIDLabelConstraonts() {
        view.addSubview(stationIDLabel)
        NSLayoutConstraint.activate([
            stationIDLabel.bottomAnchor.constraint(equalTo: stationNameLabel.topAnchor, constant: -35),
            stationIDLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    func setupStationNameLabel() {
        view.addSubview(stationNameLabel)
        NSLayoutConstraint.activate([
                stationNameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
                stationNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    func setupAddressLabel() {
        view.addSubview(addressLabel)
        NSLayoutConstraint.activate([
                addressLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                addressLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
            ])
    }
    
    func displayStation(using viewModel: StationViewModel) {
        self.stationIDLabel.text = viewModel.StationID
        self.stationNameLabel.text = viewModel.EnName
        self.addressLabel.text = viewModel.StationAddress
        print(viewModel)
    }
    
    
    func getStationData() {
        client.getCurrentStation{ (station, error) in
            if let station = station {
                let viewModel = StationViewModel(model: station)
                self.displayStation(using: viewModel)
            }
        }
    }
}

