//
//  ThirdOnboardingView.swift
//  Demeter
//
//  Created by Paul Addai on 3/22/22.
//

import SwiftUI

struct ThirdOnboardingView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.8842360973358154, green: 0.9916666746139526, blue: 0.9400999546051025, alpha: 1)).ignoresSafeArea()
            
            
            
            //Ellipse 1
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7921568751335144, green: 0.9529411792755127, blue: 0.8784313797950745, alpha: 1)))
                .frame(width: 51, height: 49).offset(x:-170,y:-420)
            
            //Ellipse 2
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
            .frame(width: 228, height: 219)
            .offset(x:170,y:-420)
            
            //Ellipse 3
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7921568751335144, green: 0.9529411792755127, blue: 0.8784313797950745, alpha: 1)))
                .frame(width: 51, height: 49).offset(x:100,y:130)
            
            //Ellipse 4
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:-170,y:420)
            
            //Ellipse 5
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:0,y:-50)
            
            VStack() {
                Image("logo_green").resizable().frame(width: 50, height: 50, alignment: .center)
                
                Spacer().frame(width: 20, height: 20, alignment: .center)
                
                //Getting Started!
                HStack{
                    Text("Hurray!").font(.system(size: 26, weight: .semibold)).offset(x: 0, y: 20)
                    Spacer().frame(width: 220, height: 10, alignment: .center)
                    
                    Spacer().frame(width: 30, height: 0, alignment: .center)
                }
                
                
                ZStack{
                    Image("Saly-26").resizable().frame(width: 160, height: 187, alignment: .center).offset(x: -80, y: -50)
                    
                    Image("Saly-2").resizable().frame(width: 415, height: 354, alignment: .center).offset(x: 30, y: -20)
                }
                
                Text("Track your income and crop disease everywhere you are!").font(.system(size: 15, weight: .medium)).opacity(0.7).padding()
                
                
                HStack(spacing: 40){
                   
                    //Ellipse 1
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.9058823585510254, green: 0.8745098114013672, blue: 0.7568627595901489, alpha: 1)))
                        .frame(width: 14, height: 14)
                    
                    //Ellipse 2
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.9058823585510254, green: 0.8745098114013672, blue: 0.7568627595901489, alpha: 1)))
                    .frame(width: 14, height: 14)
                    
                    //Ellipse 3
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
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

struct ThirdOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdOnboardingView()
    }
}