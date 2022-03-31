//
//  CartView.swift
//  Demeter
//
//  Created by Paul Addai on 3/27/22.
//

import SwiftUI

struct CartView: View {
    
    @State private var counter: Int = 1
    @State private var showCheckoutView = false


    
    //This is not a database..lol
    private var categoriesList = ["All", "Fruits", "Vegetable", "Herbs", "Organic","Inorganic"]
    private var itemsList = ["onion": ["Onion", "Vegetable", "Nearby", "Free"]]
    
    
    let columns = [
        GridItem(.flexible())
    ]
    
    
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
                    Image("logo_green").resizable().frame(width: 30, height: 30, alignment: .center).padding(.top,15)
                    
                    
                    HStack{
                        
                        Button {
                            //action
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
                    
                    
                }.padding(.top,30)
                
                //Your Basket
                Text("Your Basket").font(.system(size: 16, weight: .bold, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1))).offset(y: -15)
                
                
                
                
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20) {
                        
                        ForEach(Array(itemsList.keys), id: \.self) { item in
                            
                            ZStack {
                                Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1))
                                HStack {
                                   
                                    
                                    ZStack {

                                        Button {
                                            //action
                                        } label: {
                                            ZStack {
                                                Image(item)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 100, height: 100)
                                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                                
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)))

                                            }
                                            
                                        }
                                        .frame(width: 100 , height: 100)
             
                                    }
                                    
                                  
                                    
                                    VStack(alignment: .leading){
                                        Group{
                                            //Name
                                            Text(itemsList[item]![0]).font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1)))
                                            
                                            //Type
                                            Text(itemsList[item]![1]).font(.system(size: 12, weight: .light)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1)))
                                        }.padding(.leading,10)
                                        
                                        
                                        Spacer().frame(height: 10, alignment: .center)
                                        HStack{
                                            //Price
                                            Text(itemsList[item]![3]).font(.system(size: 20, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1))).padding(.leading, 10)
                                            
                                            Spacer()
                                            
                                        }
                                        
                                        
                                    }
                                    
                                 
                                    
                                    
                                    VStack (spacing: 25){
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
                                        }.padding(.trailing,20).padding(.top,5)
                                        
                                        
                                        
                                        Button {
                                            //action
                                        } label: {
                                        Image(systemName: "trash").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                                        }.offset(x: 20, y: -5)
                                    }
                                }.frame(height: 100, alignment: .center)
                            }.cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 490)
                
                
                
               
                
                Spacer()
                
                
                
                
                
                //Footer
                HStack {
                    
                    
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
                    
                    Spacer()
                    
                    Button {
                        //action
                        self.showCheckoutView = true
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 70, height: 60)
                            Image(systemName: "creditcard").font(.system(size: 25.0,weight: .bold)).foregroundColor(.white)
                        }
                    }
                }.padding()
                
                Spacer()
                
            }
            if $showCheckoutView.wrappedValue{
                withAnimation{
                    CheckoutView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }
        }.ignoresSafeArea()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
