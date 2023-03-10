//
//  ContentView.swift
//  Sample
//
//  Created by 渡邊魁優 on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab1View()
                .tabItem {
                    Text("Tab1")
                }
            Tab2View()
                .tabItem {
                    Text("Tab2")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
