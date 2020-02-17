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
    var body: some View {
        Text("Hello, World!, it is working").foregroundColor(Color("MainColor"))
    }
}

//For at kunne generere det output der vises i previewet
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
        ContentView().colorScheme(.light).previewDisplayName("iPhone 11 Light mode").previewDevice("iPhone 11")
        ContentView().colorScheme(.dark).previewDisplayName("iPhone 11 Dark mode").previewDevice("iPhone 11")
            
            ContentView().previewLayout(.fixed(width: 300, height: 100))
            
            
        }
        
    }
}
