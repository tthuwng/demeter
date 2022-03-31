//
//  HomeView.swift
//  Demeter
//
//  Created by Paul Addai on 3/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchField: String = String()
    @State private var welcomeText: String = "Enjoy 20% discount  \nevery Friday"
    @State private var showPopUp = false
    @State private var cartSize: Int = 0
    
    @State private var showCartView = false
    @State private var showAdditemView = false
    @State private var showScanView = false
    @State private var showItemView = false
    
    
    
    //This is not a database..lol
    private var categoriesList = ["All", "Fruits", "Vegetable", "Herbs", "Organic","Inorganic"]
    private var itemsList = ["corn": ["Corn", "Cereal", "1 mile away", "$0.90"],"pineapple": ["Pineapple", "Fruit", "2 miles away", "$0.60"],"apple": ["Apple", "Fruit", "3 miles away", "$0.30"],"orange": ["Orange", "Fruit", "<1 mile away", "$0.20"],"onion": ["Onion", "Vegetable", "Nearby", "Free"]]
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
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
            
            //Ellipse 5
            Ellipse()
                .fill(Color(#colorLiteral(red: 0.7911632061004639, green: 0.9541666507720947, blue: 0.8784864544868469, alpha: 1)))
                .frame(width: 228, height: 219)
                .offset(x:0,y:-50)
            
            
            VStack{
                Spacer()
                
                VStack{
                    Image("logo_green").resizable().frame(width: 30, height: 30, alignment: .center).padding(.top,15)
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Good Morning").font(.system(size: 15, weight: .semibold)).opacity(0.6)
                            Text("Victoria Adeela").font(.system(size: 15, weight: .bold))
                        }.padding(.leading,8)
                        Spacer()
                        
                        Button {
                            //action
                        } label: {
                            Image("user").resizable().frame(width: 50, height: 50, alignment: .center)
                        }
                        
                    }.padding()
                    
                }
                
                ZStack{
                    TextField("Search within 5 miles", text: $searchField)
                        .font(.system(size: 15, weight: .semibold))
                        .padding().multilineTextAlignment(.center)
                        .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                        .padding()
                    
                    
                    
                    Image(systemName: "magnifyingglass").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1))).offset(x: -130, y: 0)
                    
                    Button {
                        //action
                    } label: {
                        Image(systemName: "text.justify").font(.system(size: 20.0,weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                    }.offset(x: 130, y: 0)
                    
                }.frame(width: 380, height: 50, alignment: .center)
                
                Spacer().frame(width: 0, height: 20, alignment: .center)
                
                ZStack {
                    Image("food_items")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 342, height: 131)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)))
                    
                    Text(welcomeText).font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).offset(x: 70, y: 30)
                    
                }
                .frame(width: 342, height: 131)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(0 ..< self.categoriesList.count) { item in
                            GeometryReader { geometry in
                                
                                Button {
                                  
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                            .frame(width: 80, height: 38)
                                        
                                        Text(self.categoriesList[item]).font(.system(size: 15, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    }
                                }
                                
                            }
                            .frame(width: 100, height: 40)
                        }
                    }
                    .padding()
                }
                
                
                
                
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(Array(itemsList.keys), id: \.self) { item in
                            ZStack {
                                Button {
                                    self.showItemView = true
                                } label: {
                                    ZStack {
                                        Image(item)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 157, height: 218)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)))
                                        
                                        VStack(alignment: .leading){
                                            HStack{
                                                //distance
                                                Text(itemsList[item]![2]).font(.system(size: 11, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                
                                                Spacer()
                                                
                                            }.offset(x: 0, y: -90).padding(.leading,6).padding(.trailing,6)
                                            
                                            
                                            Group{
                                                //Name
                                                Text(itemsList[item]![0]).font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                
                                                //Type
                                                Text(itemsList[item]![1]).font(.system(size: 12, weight: .light)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            }.padding(.leading,10)
                                            
                                            
                                            
                                            HStack{
                                                //Price
                                                Text(itemsList[item]![3]).font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.leading, 10)
                                                
                                                Spacer()
                                                
                                            }
                                            
                                            
                                        }.offset(x: 0, y: 40)
                                    }
                                    
                                }
                                .frame(width: 157, height: 218)
                                
                                
                                Button {
                                    self.showPopUp = true
                                    self.cartSize += 1
                                } label: {
                                    ZStack{
                                        //Cart
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                                            .frame(width: 49, height: 28)
                                        Image(systemName: "cart.badge.plus").font(.system(size: 17.0,weight: .medium)).foregroundColor(.white)
                                        
                                    }.padding(.trailing, 10)
                                }.offset(x: 50, y: 77)
                                
                                
                                
                                Button {
                                    //action
                                } label: {
                                    Image(systemName: "heart").font(.system(size: 30.0,weight: .bold)).foregroundColor(.white)
                                    
                                }.offset(x:55,y:-80)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 290)
                
                //Footer
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                        .frame(width: 348, height: 60)
                    
                    HStack(spacing: 60){
                        
                        Button {
                            self.showScanView = true
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                    .frame(width: 55, height: 50)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 45, height: 45).offset()
                                
                                Image(systemName: "ant").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                                
                            }
                        }
                        
                        Button {
                            self.showAdditemView = true
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                    .frame(width: 55, height: 50)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 45, height: 45).offset()
                                
                                Image(systemName: "bag.badge.plus").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                                
                            }
                        }
                        
                        Button {
                            self.showCartView = true
                        } label: {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                    .frame(width: 55, height: 50)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 45, height: 45)
                                
                                Image(systemName: "cart").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                                Text(String(self.cartSize)).font(.system(size: 10, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).offset(y: -14)
                                
                            }
                        }
                        
                        
                    }
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
            

            if $showCartView.wrappedValue{
                withAnimation{
                    CartView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }
            
            else if $showScanView.wrappedValue{
                withAnimation{
                    CroptypeScanView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }

            else if $showAdditemView.wrappedValue{
                withAnimation{
                    AddItemView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }
            
            else if $showItemView.wrappedValue{
                withAnimation{
                    ItemView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
            }
            
        }.ignoresSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        //.previewDevice("IPhone 13 Pro")
    }
}
