//
//  ChoosePickListViewCell.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 27/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct ChoosePickListViewCell: View {
    
    @Binding var pickList : PickList
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text("Bestilt:").foregroundColor(Color.brandLight)
                Text("Dato for bestilling").foregroundColor(Color.brandLight)
                Text("Antal varer:").foregroundColor(Color.brandLight)
                Text("\(pickList.toBePicked)").foregroundColor(Color.brandLight)
            }.padding()
            
            VStack {
                Text("Fragt:").foregroundColor(Color.brandLight)
                Text("Fragt udbyder").foregroundColor(Color.brandLight)
                
                Button(action: {
                    //What to do
                }) { Text("Start pak").padding([.leading, .trailing], 10).background(Color.brandAction).cornerRadius(25).font(.title).foregroundColor(Color.brandDark)
                }
            }.padding()
            
            }.background(Color.brandDark).cornerRadius(25)
    }
}

struct ChoosePickListViewCell_Previews: PreviewProvider {
    
    static let pickList = PickList(salesOrder: SalesOrder(id: "4711"), toBePicked: 3)
    
    static var previews: some View {
        ChoosePickListViewCell(pickList: .constant(pickList)).previewLayout(.fixed(width: 375, height: 125))
    }
}
