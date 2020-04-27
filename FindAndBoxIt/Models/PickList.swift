//
//  PickList.swift
//  FindAndBoxIt
//
//  Created by Dennis Sørensen on 27/04/2020.
//  Copyright © 2020 Dennis Sørensen. All rights reserved.
//

import SwiftUI

struct PickList: Identifiable {
    public let id = UUID()
    public let salesOrder : SalesOrder
    public var toBePicked = 0
    
    init(salesOrder: SalesOrder, toBePicked: Int) {
        self.salesOrder = salesOrder
        self.toBePicked = toBePicked
    }
}


//DEMO DATA
extension PickList {
    static let demoData = [
    PickList(salesOrder: SalesOrder(id: "4711"), toBePicked: 3),
    PickList(salesOrder: SalesOrder(id: "4712"), toBePicked: 1),
    PickList(salesOrder: SalesOrder(id: "4713"), toBePicked: 17),
    PickList(salesOrder: SalesOrder(id: "4714"), toBePicked: 355),
    PickList(salesOrder: SalesOrder(id: "4715"), toBePicked: 32),
    PickList(salesOrder: SalesOrder(id: "4716"), toBePicked: 33)
    ]
}
