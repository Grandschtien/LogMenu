//
//  LoginsPasswords.swift
//  LogMenu
//
//  Created by Егор Шкарин on 28.04.2021.
//

import Foundation

class User {
    private var login: String = "Egor@yandex.ru"
    private var password: String = "123456"
    private var name: String = "Егор"
    private var surname: String = "Шкарин"
    
     var Name: String {
        return name
    }
     var Surname: String {
        return surname
    }
    
    
    func checkPasswordAndLogin(login: String, password: String) -> Bool{
        
        if (self.login == login && self.password == password) {
            return true
        } else {
            return false
        }
    }
    init() {}
    init(login:String, password: String, name: String, surname: String) {
        self.login = login
        self.password = password
        self.name = name
        self.surname = surname
    }
}
