//
//  ViewController.swift
//  Images_Practice
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class HeroListVC: UIViewController {

    var tableView = UITableView()
    var heroes: [Hero] = []
    let heroCell = "heroCell"
    override func viewDidLoad() {
        view.backgroundColor = .blue
        title = "Main Hero Classes"
        configureTableView()
        setTableViewDelegates()
        heroes = fetchData()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.rowHeight = 100
        tableView.register(HeroTableViewCell.self, forCellReuseIdentifier: heroCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HeroListVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: heroCell) as! HeroTableViewCell
        let hero = heroes[indexPath.row]
        cell.set(hero)
        
        return cell
    }
}

extension HeroListVC{
    func fetchData() -> [Hero]{
        let heroes = [
            Hero(image: Images.Barbarian, title: "Barbarian"),
            Hero(image: Images.Bard, title: "Bard"),
            Hero(image: Images.Cleric, title: "Cleric"),
            Hero(image: Images.Fighter, title: "Fighter"),
            Hero(image: Images.Paladin, title: "Paladin"),
            Hero(image: Images.Ranger, title: "Ranger"),
            Hero(image: Images.Rogue, title: "Rogue"),
            Hero(image: Images.Sorcerer, title: "Sorcerer"),
            Hero(image: Images.Wizard, title: "Wizard")
        ]
        
        return heroes
    }
}
