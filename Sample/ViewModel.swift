//
//  ViewModel.swift
//  Sample
//
//  Created by 渡邊魁優 on 2023/03/10.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var Items = [
        Item(name: "しか"),
        Item(name: "ライオン")
    ]
    
    func add() {
        Items.append(Item(name: "newItem"))
    }
    
    func delete(offset: IndexSet) {
        Items.remove(atOffsets: offset)
    }
    
}
