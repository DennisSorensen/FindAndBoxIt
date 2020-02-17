//
//  Shapes.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 17/02/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle().fill(Color.red).frame(width:100, height: 100)
            Rectangle().frame(width:100, height: 100)
            Ellipse().fill(Color.green).frame(width:100, height: 150)
            Capsule().frame(width:100,height: 50)
            RoundedRectangle(cornerRadius: 25).frame(width:200,height: 100)
            
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
