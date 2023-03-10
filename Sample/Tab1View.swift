//
//  Tab1View.swift
//  Sample
//
//  Created by 渡邊魁優 on 2023/03/10.
//

import SwiftUI

struct Tab1View: View {
    @EnvironmentObject var itemViewModel: ViewModel
    var body: some View {
        NavigationStack {
            List {
                ForEach(itemViewModel.Items) { item in
                    Text(item.name)
                }
                .onDelete(perform: itemViewModel.delete)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        itemViewModel.add()
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View()
            .environmentObject(ViewModel())
    }
}
