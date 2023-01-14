//
//
// OnbordingViewController.swift
// MyWeatherApp
//
// Created by Александр Востриков
//
    

import UIKit
import CoreLocation

class OnbordingViewController: UIViewController {
    
    let cl = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    Запрос разрешения на использование геопозиции пользователя
    @IBAction func locationButtonAction(_ sender: Any) {
        CheckPermition()
    }
    @IBAction func choiceButtonAction(_ sender: Any) {
        
    }
    
    private func CheckPermition() {
        switch cl.authorizationStatus {
            case .authorizedAlways, .authorizedWhenInUse:
                cl.startUpdatingLocation()
            case .denied, .restricted, .notDetermined:
                cl.requestWhenInUseAuthorization()
                cl.startUpdatingLocation()
            @unknown default:
                print("Не известный статус авторизации.")
        }
    }
}
