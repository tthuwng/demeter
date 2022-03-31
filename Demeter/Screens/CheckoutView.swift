//
//  CheckoutView.swift
//  Demeter
//
//  Created by Paul Addai on 3/27/22.
//

import SwiftUI

struct CheckoutView: View {
    
    @State private var showPopUp = false
    @State private var showProgress = false
    @State private var showAddress = false
    
    @State var showHomeView = false
    
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.8842360973358154, green: 0.9916666746139526, blue: 0.9400999546051025, alpha: 1))
            
            
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
                .frame(width: 51, height: 49).offset(x:200,y:130)
            
            //Ellipse 4
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:-190,y:450)
            
            
            
            
            
            VStack{
                
                VStack{
                    Image("logo_green").resizable().frame(width: 30, height: 30, alignment: .center).padding(.top,40)
                    
                    
                    HStack{
                        
                        Button {
                            self.showHomeView = true
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 50, height: 50)
                                Image(systemName: "arrow.left").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                                
                            }
                        }
                        
                        
                        Spacer()
                        
                        Button {
                            //action
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 50, height: 50)
                                Image(systemName: "list.dash").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                            }
                        }
                        
                        
                        .frame(width: 50, height: 50)
                        
                    }.padding()
                    
                }
                
                Text("Checkout").font(.system(size: 16, weight: .bold, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1)))
                
                
                ZStack{
                    Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1))
                    
                    HStack {
                        VStack(spacing: 40){
                            
                            
                            Image(systemName:  "circle.inset.filled").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                            
                            Image(systemName:  "circle").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                            
                            
                            
                        }
                        
                        VStack (alignment: .leading){
                            
                            
                            
                            Button {
                            } label: {
                                HStack {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                            .frame(width: 50, height: 50)
                                        Image("google_pay").resizable().frame(width: 23, height: 23, alignment: .center).offset(x: -2)
                                    }
                                }
                                Text("Google Pay").font(.system(size: 15, weight: .medium)).foregroundColor(Color.black).opacity(0.8)
                                
                            }
                            
                            Divider()
                            
                            
                            Button {
                                //action
                            } label: {
                                HStack {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 0.5)))
                                            .frame(width: 50, height: 50)
                                        Image(systemName: "creditcard.and.123").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                        
                                        
                                    }
                                }
                                Text("Card").font(.system(size: 15, weight: .medium)).foregroundColor(Color.black).opacity(0.6)
                                
                            }
                        }
                        
                        Spacer()
                    }.padding()
                    
                }.frame(height: 150, alignment: .center).cornerRadius(20).padding()
                
                
                Text("Delivery Method").font(.system(size: 13, weight: .bold, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1)))
                
                ZStack{
                    Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1))
                    
                    HStack {
                        VStack(spacing: 40){
                            
                            Image(systemName: "circle").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                            
                            Image(systemName: "circle.inset.filled").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                            
                            
                        }
                        
                        VStack (alignment: .leading){
                            Button {
                                //action
                            } label: {
                                HStack {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 0.5)))
                                            .frame(width: 50, height: 50)
                                        Image("box_delivery").resizable().frame(width: 25, height: 25, alignment: .center).offset(x: -2)
                                        
                                        
                                    }
                                }
                                Text("Delivery").font(.system(size: 15, weight: .medium)).foregroundColor(Color.black).opacity(0.6)
                                
                            }
                            
                            Divider()
                            
                            Button {
                                self.showAddress = true
                            } label: {
                                HStack {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                        
                                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                            .frame(width: 50, height: 50)
                                        Image(systemName: "figure.walk").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                    }
                                }
                                Text("Pick up").font(.system(size: 15, weight: .medium)).foregroundColor(Color.black).opacity(0.8)
                                
                            }
                            
                            
                            
                        }
                        
                        Spacer()
                    }.padding()
                    
                }.frame(height: 150, alignment: .center).cornerRadius(20).padding()
                
                
                //Footer
                VStack {
                    
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                            .frame(width: 248, height: 60)
                        
                        HStack(spacing: 110){
                            
                            //Name
                            Text("Total:").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            Text("$0.0").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            
                            
                        }
                    }
                    
                    
                    Button {
                        
                        self.showProgress = true
                        
                        
                        //Delay (For demo purpse)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            self.showProgress = false
                            
                            self.showPopUp = true
                            
                        }
                        
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 250, height: 60)
                            
                            //Demeter
                            Text("Complete Payment").font(.system(size: 13, weight: .semibold, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.96, blue: 0.96, alpha: 1)))
                        }
                    }.padding()
                    
                    
                }.padding()
                Spacer()
                
                
                
            }
            
            
            
            
            
            if $showProgress.wrappedValue{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.50)))
                        .frame(width: 70, height: 70)
                    
                    
                    Text("Processing").font(.system(size: 10, weight: .regular, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.96, blue: 0.96, alpha: 1))).offset(y:19)
                    
                    ProgressView().progressViewStyle(CircularProgressViewStyle(tint: Color.green)).scaleEffect(1.5, anchor: .center).offset(y:-5)
                }
            }
            
            if $showPopUp.wrappedValue {
                ZStack {
                    
                    Color.black.opacity(0.4)
                    VStack {
                        
                        Text("Payment Recieved!").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        GifImage("payment").frame(width: 100, height: 100, alignment: .center).cornerRadius(17)
                        Spacer()
                        Button(action: {
                            self.showPopUp = false
                            self.showHomeView = true
                        }, label: {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                    .frame(width: 45, height: 45)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 35, height: 35)
                                
                                Image(systemName: "xmark.circle").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                            }
                        })
                    }.padding()
                }
                .frame(width: 300, height:200)
                .cornerRadius(20).shadow(radius: 20).offset(y: 50)
            }
            
            if $showAddress.wrappedValue {
                ZStack {
                    
                    Color.black.opacity(0.4)
                    VStack {
                        
                        Text("Pick up Address").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        GifImage("address").frame(width: 100, height: 100, alignment: .center).cornerRadius(17)
                        
                        Text("639 38th St, Rock Island, IL , 61201").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                        
                        Spacer()
                        Button(action: {
                            self.showAddress = false
                        }, label: {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                    .frame(width: 45, height: 45)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 35, height: 35)
                                
                                Image(systemName: "xmark.circle").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                            }
                        })
                    }.padding()
                }
                .frame(width: 300, height:300)
                .cornerRadius(20).shadow(radius: 20).offset(y: 50)
            }
            
            
            if $showHomeView.wrappedValue{
                
                withAnimation{
                    HomeView()
                }.transition(AnyTransition.move(edge: .leading).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
                
            }
        }.ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
    
    
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
