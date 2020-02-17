//
//  LogoView.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 17/02/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        VStack{
            Image("Logo").resizable().frame(width: 100, height: 100).clipShape(Circle())
            
            ZStack{
                RoundedRectangle(cornerRadius: 5).frame(width:120, height: 40).foregroundColor(.blue)
                
                Text("Hello, World!").foregroundColor(.white)
            }
            
            }.padding().background(Color.white).cornerRadius(10).shadow(radius: 5)
        
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
