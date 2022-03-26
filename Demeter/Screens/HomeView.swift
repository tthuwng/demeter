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
    
    private var categoriesList = ["All", "Fruits", "Vegetable", "Herbs", "Organic"]
    
    private var itemsList = ["corn": ["Corn", "Cereal", "1 mile away", "$2.30"],"pineapple": ["Pineapple", "Fruit", "2 mile away", "$1.20"]]
    
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.8842360973358154, green: 0.9916666746139526, blue: 0.9400999546051025, alpha: 1)).ignoresSafeArea()
            
            VStack{
                VStack{
                    Image("logo_green").resizable().frame(width: 30, height: 30, alignment: .center)
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Good Morning").font(.system(size: 15, weight: .semibold)).opacity(0.6)
                            Text("Victoria Adeela").font(.system(size: 15, weight: .bold))
                        }.padding(.leading,8)
                        Spacer()
                        
                        
                    }.padding()
                    
                }
                
                VStack{
                    TextField("Search within 5 miles", text: $searchField)
                        .font(.system(size: 15, weight: .semibold))
                        .padding().multilineTextAlignment(.center)
                        .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                        .padding()
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
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                        .frame(width: 80, height: 38)
                                    
                                    Text(self.categoriesList[item]).font(.system(size: 15, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                
                            }
                            .frame(width: 100, height: 40)
                        }
                    }
                    .padding()
                }
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(Array(itemsList.keys), id: \.self) { item in
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
                                        
                                        Spacer().frame(width: 45, height: 0, alignment: .center)
                                        
                                        Image(systemName: "heart").font(.system(size: 30.0,weight: .bold)).foregroundColor(.white)
                                    }.offset(x: 0, y: -90)
                                    
                                    
                                    //Name
                                    Text(itemsList[item]![0]).font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    
                                    //Type
                                    Text(itemsList[item]![1]).font(.system(size: 12, weight: .light)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    
                                    
                                    
                                    HStack{
                                        //Price
                                        Text(itemsList[item]![3]).font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        
                                        Spacer().frame(width: 40, height: 0, alignment: .center)
                                        
                                        ZStack{
                                            //Cart
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                                                .frame(width: 49, height: 28)
                                            Image(systemName: "cart.badge.plus").font(.system(size: 17.0,weight: .medium)).foregroundColor(.white)
                                            
                                        }
                                        
                                    }
                                    
                                    
                                }.offset(x: 0, y: 40)
                                
                            }
                            .frame(width: 157, height: 218)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 300)
                
                //Footer
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                        .frame(width: 348, height: 60)
                    
                    HStack(spacing: 60){
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 55, height: 50)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 45, height: 45).offset()
                            
                            Image(systemName: "ant").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 55, height: 50)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 45, height: 45).offset()
                            
                            Image(systemName: "bag.badge.plus").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 55, height: 50)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 45, height: 45).offset()
                            
                            Image(systemName: "cart").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                        
                        
                    }
                }
                
            }
            
            
            
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
