//
//  DemeterApp.swift
//  Demeter
//
//  Created by Hung Tran on 3/7/22.
//

import SwiftUI

@main
struct DemeterApp: App {
    @StateObject var vm = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vm)
        }
    }
}
