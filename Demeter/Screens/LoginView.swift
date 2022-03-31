//
//  LoginView.swift
//  Demeter
//
//  Created by Paul Addai on 3/10/22.
//

import SwiftUI

struct LoginView: View {
    
    
    @State private var passwordField: String = String()
    @State private var usernameField: String = String()
    
    @State private var showOnboardingView = false
    @State private var showProgressView = false


    
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.8842360973358154, green: 0.9916666746139526, blue: 0.9400999546051025, alpha: 1)).ignoresSafeArea()
            
            
            //Ellipse 1
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7921568751335144, green: 0.9529411792755127, blue: 0.8784313797950745, alpha: 1)))
                .frame(width: 51, height: 49).offset(x:-170,y:0)
            
            
            //Ellipse 2
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7921568751335144, green: 0.9529411792755127, blue: 0.8784313797950745, alpha: 1)))
                .frame(width: 51, height: 49).offset(x:-140,y:150)
            
            //Ellipse 3
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:-200,y:380)
            
            
            
            //Ellipse 4
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:250,y:160)
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                    .frame(width: 390, height: 350)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3)), radius:2, x:0, y:4)
                
                VStack{
                    Image("logo_big").resizable().frame(width: 100, height: 100, alignment: .center)
                    
                    Text("Demeter").font(.system(size: 36, weight: .regular, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.96, blue: 0.96, alpha: 1))).offset(x: 0, y: -10)
                }
                
              
                HStack{
                    Button {
                    
                        
                        
                    } label: {
                        Text("Login").font(.system(size: 18, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    Spacer().frame(width: 180, height: 0, alignment: .center)
                    
                    Button {
                        //action
                    } label: {
                        Text("Sign up").font(.system(size: 18, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    
                }.padding().offset(x: 0, y: 150)
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(#colorLiteral(red: 0.9583333134651184, green: 0.9583333134651184, blue: 0.9583333134651184, alpha: 1))).offset(x: -120, y: 165)
                    .frame(width: 87, height: 3)
                
                
            }.offset(x: 0, y: -260)
            
            
            
            VStack{
                
                Spacer().frame(width: 0, height: 120, alignment: .center)
                TextField("Username", text: $usernameField)
                    .font(.system(size: 15, weight: .semibold))
                    .padding().multilineTextAlignment(.center)
                    .overlay(RoundedRectangle(cornerRadius: 30.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                    .padding()
                
                SecureField("Password", text: $passwordField)
                    .font(.system(size: 15, weight: .semibold))
                    .padding().multilineTextAlignment(.center)
                    .overlay(RoundedRectangle(cornerRadius: 30.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                    .padding()
                
                
                Button {
                    self.showProgressView = true
                    
                    //Delay (For demo purpse)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.showProgressView = false
                        self.showOnboardingView = true
                        
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                            .frame(width: 188, height: 55)
                        
                        Text("Login").font(.system(size: 15, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                }
            }.frame(width: 350, height: 100, alignment: .center)
            
                
        
            
        if $showProgressView.wrappedValue{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.50)))
                    .frame(width: 70, height: 70)
                
                
                ProgressView().progressViewStyle(CircularProgressViewStyle(tint: Color.green)).scaleEffect(1.5, anchor: .center).offset(y:-5)
            }.offset(y: 30)
        }
            
        if $showOnboardingView.wrappedValue{
                withAnimation{
                    SecondOnboardingView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }
        }
       
    }
}

struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

