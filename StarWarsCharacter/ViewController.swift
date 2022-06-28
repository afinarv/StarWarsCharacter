//
//  ViewController.swift
//  StarWarsCharacter
//
//  Created by Afina R. Vinci on 28/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

struct StarWarsCharacter {
    let name: String
    let height: Int
    let gender: String
    let birthYear: String
}

class DataService {
    public static var shared = DataService()
    
    let people: [StarWarsCharacter] = [
        StarWarsCharacter(name: "Luke Skywalker", height: 172, gender: "male", birthYear: "19BBY"),
        StarWarsCharacter(name: "C-3PO", height: 167, gender: "n/a", birthYear: "112BBY"),
        StarWarsCharacter(name: "Darth Vader", height: 202, gender: "male", birthYear: "41.9BBY"),
        StarWarsCharacter(name: "Leia Organa", height: 150, gender: "female", birthYear: "19BBY"),
        StarWarsCharacter(name: "Obi-Wan Kenobi", height: 182, gender: "male", birthYear: "57BBY")
        ]
    
    func getPeople() -> [StarWarsCharacter] {
        return people
    }
}
