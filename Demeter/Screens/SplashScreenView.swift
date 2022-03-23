//
//  SplashScreenView.swift
//  Demeter
//
//  Created by Paul Addai on 3/10/22.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)).ignoresSafeArea()
        
            VStack{
                Image("logo").resizable()
                    .frame(width: 100, height: 100, alignment: .center).padding(.horizontal)
                Text("Demeter").font(.system(size: 36, weight: .regular, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.96, blue: 0.96, alpha: 1))).offset(x: 0, y: -10)
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
