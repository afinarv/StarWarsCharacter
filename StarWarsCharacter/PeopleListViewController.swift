//
//  PeopleListViewController.swift
//  StarWarsCharacter
//
//  Created by Afina R. Vinci on 28/06/22.
//

import UIKit

class PeopleListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var people = [StarWarsCharacter]()
    var selectedPerson: StarWarsCharacter!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        people = DataService.shared.getPeople()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = people[indexPath.row].name
        //content.secondaryText = people[indexPath.row].birthYear
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPerson = people[indexPath.row]
        self.performSegue(withIdentifier: "showDetail", sender: tableView)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.person = selectedPerson
    }
}
