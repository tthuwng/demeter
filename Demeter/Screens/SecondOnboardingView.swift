//
//  SecondOnboardingView.swift
//  Demeter
//
//  Created by Paul Addai on 3/22/22.
//

import SwiftUI

struct SecondOnboardingView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8842360973358154, green: 0.9916666746139526, blue: 0.9400999546051025, alpha: 1)).ignoresSafeArea()
            
            VStack() {
                Image("logo_green").resizable().frame(width: 50, height: 50, alignment: .center)
                
                Spacer().frame(width: 20, height: 20, alignment: .center)
                
                //Getting Started!
                HStack{
                    Text("Almost there!").font(.system(size: 26, weight: .semibold)).offset(x: 0, y: 20)
                    Spacer().frame(width: 130, height: 10, alignment: .center)
                    
                    Spacer().frame(width: 30, height: 0, alignment: .center)
                }
                
                
                Image("Other").resizable().frame(width: 315, height: 254, alignment: .center).offset(x: 0, y: 20)
                
                Spacer()
                //Easily connect with trader...
                Text("Detect crop disease early and find solutions to it with the help of A.I !").font(.system(size: 15, weight: .medium)).opacity(0.7).padding()
                
                
                HStack(spacing: 40){
                   
                    
                    //Ellipse 1
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.9058823585510254, green: 0.8745098114013672, blue: 0.7568627595901489, alpha: 1)))
                    .frame(width: 14, height: 14)
                    
                    //Ellipse 2
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                    .frame(width: 14, height: 14)
                    
                    //Ellipse 3
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.9058823585510254, green: 0.8745098114013672, blue: 0.7568627595901489, alpha: 1)))
                    .frame(width: 14, height: 14)
                }
                
                Spacer()
                
                HStack {
                    Spacer()

                    ZStack{
                        //Rectangle 8
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                            .frame(width: 89, height: 72)
                        
                        //Rectangle 8
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                            .frame(width: 71, height: 55).offset()
                        
                        Image(systemName: "arrow.right").font(.system(size: 30.0,weight: .bold)).foregroundColor(.white)

                        
                    }.padding(.trailing,20)
                }
                
                Spacer()
                
                
                
            }
            
            
            
        }
    }
}

struct SecondOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        SecondOnboardingView()
    }
}
