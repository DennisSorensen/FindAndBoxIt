//
//  ChoosePickListView.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 14/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct ChoosePickListView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
        VStack {
            if !userSession.isUserLoggedIn {
                NotLoggedInView()
            }
            else {
                Text("Hello")
            }
            
            EmptyView()
        }
    }
}

struct ChoosePickListView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePickListView()
    }
}
