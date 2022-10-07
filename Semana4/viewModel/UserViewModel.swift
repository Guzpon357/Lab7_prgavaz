//
//  UserViewModel.swift
//  Semana4
//
//  Created by MAC35 on 23/09/22.
//

import Foundation

class UserViewModel {
    var users : [User] = []
    
    func getUser() -> [User]{
        return users
    }
    func createUser(user:User){
        users.append(user)
    }
}
