//
//  ContentView.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 13/02/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

//Til at opbygge selve viewet
struct ContentView: View {
    @EnvironmentObject var userSession : UserSession
    
    var body: some View {
//        NavigationView {
//            NavigationLink(destination:GreyView()) {
//                LogoView()
//            }.buttonStyle(PlainButtonStyle())
//            .navigationBarTitle("Logo")
//
//        }
        NavigationView {
            VStack {
                Toggle(isOn: $userSession.isUserLoggedIn) {
                    Text("Er bruger logget ind")
                }.padding()
                
                NavigationLink(destination: LoginView()) {
                    Text("Hop til LoginView")
                }
            }
        }
    }
}

//For at kunne generere det output der vises i previewet
struct ContentView_Previews: PreviewProvider {
    
    static let enviromentSession = UserSession()
    
    static var previews: some View {
        
        Group {
            ContentView().environmentObject(enviromentSession)
            
        }
        
    }
}
