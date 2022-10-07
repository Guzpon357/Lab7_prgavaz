//
//  ListUsersViewController.swift
//  Semana4
//
//  Created by MAC35 on 7/10/22.
//

import UIKit

class ListUsersViewController: UIViewController {
    
    let userViewModel: UserViewModel = UserViewModel()
    

    @IBOutlet weak var tableView: UITableView!
    
    var users : [User] = [
        User(
            name: "Leonardo",
            lastname: "Ponce",
            birthday: "05-28-2001",
            phonenumber: "987654321",
            address: "Av Peru 1222"
        ),User(
            name: "Alejandro",
            lastname: "Ponce",
            birthday: "02-19-1995",
            phonenumber: "987654321",
            address: "Av Peru 1221"
        )
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userViewModel.getUser())
        setUpTable()
    }
    
    func setUpTable() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}
extension ListUsersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView ,numberOfRowsInSection section : Int) -> Int{
        return users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for :indexPath)
        
        let model = users[indexPath.row]
        
        var listContentConfiguration = UIListContentConfiguration.cell()
        listContentConfiguration.text = model.name
        listContentConfiguration.secondaryText = model.address
        listContentConfiguration.image = UIImage(systemName: "person")
        cell.contentConfiguration = listContentConfiguration
        return cell
    }
}
