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
    
    let pickLists = PickList.demoData
    
    var body: some View {
        VStack {
            if !userSession.isUserLoggedIn {
                NotLoggedInView()
            }
            else {
                List(pickLists) {pickList in
                    ChoosePickListViewCell(pickList: pickList)
                }
//                List(1..<4) {tal in
//                    Text("\(tal)")
//                }
            }
            
            EmptyView()
        }
    }
}

struct ChoosePickListView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        
        userSession.isUserLoggedIn = true
        
        return ChoosePickListView().environmentObject(userSession)
    }
}
