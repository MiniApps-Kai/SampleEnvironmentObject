//
//  SampleApp.swift
//  Sample
//
//  Created by 渡邊魁優 on 2023/03/10.
//

import SwiftUI

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel())
        }
    }
}
