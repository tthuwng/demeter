//
//  ContentView.swift
//  Demeter
//
//  Created by Hung Tran on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
    @State private var showLoginView = false

    
    var body: some View {
        ZStack{
            
            
        SplashScreenView().onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.showLoginView = true
               
              }
            }
            
            if $showLoginView.wrappedValue{
                withAnimation{
                    LoginView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }
            }

            
        }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewModel())
    }
}
