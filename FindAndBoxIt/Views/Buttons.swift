//
//  Buttons.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 17/02/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack {
            //En simpel UIKit agtig knap
            Button("Klik mig") {
                print("klikket")
            }.font(.title)
            
            //Den advancerede action knap
            Button(action: {
                //What to do
                print("ACTION")
            }) {
                //Design
                ZStack{
                    Circle().frame(width:200, height: 200)
                    Text("Klik mig").foregroundColor(.white).font(.largeTitle)
                }.shadow(radius: 10)
            }
        }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
