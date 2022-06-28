//
//  DetailViewController.swift
//  StarWarsCharacter
//
//  Created by Afina R. Vinci on 28/06/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    var person: StarWarsCharacter!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = person.name
        heightLabel.text = person.height.formatted()
        genderLabel.text = person.gender
        birthyearLabel.text = person.birthYear
    }
}
