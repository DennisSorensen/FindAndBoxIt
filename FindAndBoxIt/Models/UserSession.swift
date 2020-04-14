//
//  UserSession.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 07/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

class UserSession: ObservableObject {
    @Published var isUserLoggedIn : Bool = false
    
    //Meget simpel login funktion
    func logIn(_ user: UserAuth) {
        if !user.userName.isEmpty && !user.password.isEmpty {
            isUserLoggedIn = true
        }
    }
}
