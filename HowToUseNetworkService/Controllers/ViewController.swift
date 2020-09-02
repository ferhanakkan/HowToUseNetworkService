//
//  ViewController.swift
//  HowToUseNetworkService
//
//  Created by Ferhan Akkan on 2.09.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let service = ViewControllerService()
    
    @IBAction func postPressed(_ sender: Any) {
        
        let user = UserModelForVaporTest(name: "Ferhan", surname: "Akkan", age: 22)
        service.postUser(parameter: user).done { (response) in
            print("postUser response => \(response)")
        }
    }
    
    @IBAction func deletePressed(_ sender: Any) {
        service.getAll().then { [unowned self] (userArray) in
            self.service.deleteById(parameter: userArray[0])
        }.done { (response) in
            print("deleteById response => \(response)")
        }
    }
    
    @IBAction func getAllPressed(_ sender: Any) {
        service.getAll().done { (response) in
            print("getAll response => \(response)")
        }
    }
    
    
    @IBAction func getByIdPressed(_ sender: Any) {
        service.getAll().then { [unowned self] (userArray) in
            self.service.getById(param: userArray[0])
        }.done { (response) in
            print("getById response => \(response)")
        }
    }
    
    
    @IBAction func getByNamePressed(_ sender: Any) {
//        Queery
        service.getAll().then { [unowned self] (userArray) in
            self.service.getByName(param: userArray[0])
        }.done { (response) in
            print("getByName response => \(response)")
        }
    }
}

