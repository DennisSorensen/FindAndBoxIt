//
//  LoginView.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 07/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    @State private var userName = ""
    @State private var userPassword = ""
    
    var body: some View {
        VStack {
            Text("Find & Box.It").font(.title).foregroundColor(Color.brandLittleDark)
            Image("Logo").resizable().scaledToFit().frame(width: 250.0)
                .padding(.bottom, 50)
            
            VStack {
                TextField("Brugernavn", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .padding(.top)
                
                SecureField("Kodeord", text: $userPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    self.userSession.logIn()
                }) {
                    Text("Login")
                        .font(.title)
                        .foregroundColor(Color.brandDark)
                    
                }.padding([.leading, .trailing], 50)
                    .background(Color.brandAction)
                    .cornerRadius(25)
                    .shadow(radius: 4)
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                
            }.background(Color.brandLight)
            .cornerRadius(25)
            
        }.padding()
            .padding(.bottom, 250)
    }
}

struct LoginView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        LoginView().environmentObject(userSession)
    }
}
