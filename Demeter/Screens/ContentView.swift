//
//  ContentView.swift
//  Demeter
//
//  Created by Hung Tran on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel

    var body: some View {
        ZStack{
            
            //Show Login View
           ScanView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewModel())
    }
}
