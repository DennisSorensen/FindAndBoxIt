//
//  PickListView.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 01/05/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct PickListView: View {
    
    @State private var pickLists : [PickList] = PickList.demoData
    
    var pickListData : [PickList]
    
    init() {
        self.pickListData = PickList.demoData
    }
    
    var body: some View {
        List{
            ForEach(0..<pickLists.count) {ix in
                ChoosePickListViewCell(pickList: Binding(get:{
                    return self.pickLists[ix]
                }, set: { (newValue) in
                    return self.pickLists[ix] = newValue
                }))
            }
        }
    }
}

struct PickListView_Previews: PreviewProvider {
    static var previews: some View {
        PickListView()
    }
}
