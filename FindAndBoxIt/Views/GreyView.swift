//
//  GreyView.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 17/02/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct GreyView: View {
    var body: some View {
        Image("LogoGreyScale").resizable().scaledToFit().edgesIgnoringSafeArea(.all)
    }
}

struct GreyView_Previews: PreviewProvider {
    static var previews: some View {
        GreyView()
    }
}
