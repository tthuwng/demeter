//
//  ItemView.swift
//  Demeter
//
//  Created by Paul Addai on 3/26/22.
//

import SwiftUI

struct ItemView: View {
    
    @State private var showPopUp = false
    @State private var counter: Int = 0
    
    @State private var showHomeView = false

    
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
            
            //Ellipse 5
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:0,y:-50)
            
            VStack{
                VStack{
                    Image("logo_green").resizable().frame(width: 30, height: 30, alignment: .center).padding(.top,15)
                    
                    HStack{
                        Button {
                            //action
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
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 0.5)))
                                Image(systemName: "heart").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                            }
                        }
                        .frame(width: 50, height: 50)
                        
                    }.padding()
                    
                }.padding(.top,30)
                
                ZStack {
                    Image("corn")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 353, height: 314)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10000000149011612)))
                    
                }
                .frame(width: 353, height: 314)
                
                HStack{
                    Spacer()
                    Text("Sold by Victoria Farms").font(.system(size: 12, weight: .semibold)).opacity(0.8).padding(.trailing,20)
                    
                }
                
                HStack(alignment: .center){
                    Text("Corn").font(.system(size: 36, weight: .semibold)).padding(.leading,20)
                    Spacer()
                    
                    HStack(spacing: 13){
                        Button {
                            self.counter += 1
                        } label: {
                            Image(systemName: "plus.circle.fill").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                        }
                        
                        Text(String(self.counter)).font(.system(size: 16, weight: .semibold))
                        
                        Button {
                            
                            if (self.counter - 1 >= 0){
                                self.counter -= 1
                            }
                        } label: {
                            Image(systemName: "minus.circle").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                        }
                    }.padding(.trailing,50).padding(.top,5)
                    
                    
                }
                
                
                //Rating
                HStack{
                    Image(systemName: "star.fill").font(.system(size: 15.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.9215686321258545, green: 0.7647058963775635, blue: 0.3176470696926117, alpha: 1)))
                    Image(systemName: "star.fill").font(.system(size: 15.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.9215686321258545, green: 0.7647058963775635, blue: 0.3176470696926117, alpha: 1)))
                    Image(systemName: "star.fill").font(.system(size: 15.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.9215686321258545, green: 0.7647058963775635, blue: 0.3176470696926117, alpha: 1)))
                    Image(systemName: "star.fill").font(.system(size: 15.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.9215686321258545, green: 0.7647058963775635, blue: 0.3176470696926117, alpha: 1)))
                    Image(systemName: "star").font(.system(size: 15.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.9215686321258545, green: 0.7647058963775635, blue: 0.3176470696926117, alpha: 1)))
                    
                    Text("(4.0)").font(.system(size: 11, weight: .regular))
                    
                    Spacer()
                    
                }.padding(.leading,20)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Product Discription").font(.system(size: 20, weight: .semibold))
                    
                    ScrollView(showsIndicators: false) {
                        Text("Corn is rich in vitamin C, an antioxidant that helps protect your cells from damage and wards off diseases like cancer and heart disease. Yellow corn is a good source of the carotenoids lutein and zeaxanthin, which are good for eye health and help prevent the lens damage that leads to cataracts").font(.system(size: 13, weight: .semibold)).opacity(0.5)
                    }.frame(maxHeight: 110)
                }.padding(.top,10).padding(.leading,20).padding(.trailing,20)
                
                HStack(spacing: 220){
                    Text("Price").font(.system(size: 20, weight: .semibold))
                    Text("$0.90").font(.system(size: 20, weight: .semibold))
                }
                
                Button {
                    self.showPopUp = true
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                            .frame(width: 140, height: 50)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                            .frame(width: 130, height: 45).offset()
                        
                        Image(systemName: "cart.badge.plus").font(.system(size: 25.0,weight: .bold)).foregroundColor(.white)
                        
                    }.padding(.bottom,10)
                }
                
                Spacer()
            }
            
            if $showPopUp.wrappedValue {
                ZStack {
                    
                    Color.black.opacity(0.4)
                    VStack {
                        
                        Text("Added to Cart!").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        GifImage("checked").frame(width: 100, height: 100, alignment: .center).cornerRadius(17)
                        Spacer()
                        Button(action: {
                            self.showPopUp = false
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
            
            if $showHomeView.wrappedValue{
                
                withAnimation{
                    HomeView()
                }.transition(AnyTransition.move(edge: .leading).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
                
            }
        }.ignoresSafeArea()
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
