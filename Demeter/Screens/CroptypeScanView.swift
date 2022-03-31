//
//  CroptypeScanView.swift
//  Demeter
//
//  Created by Paul Addai on 3/26/22.
//

import SwiftUI

struct CroptypeScanView: View {
    
    //This is not a database..lol
    private var categoriesList = ["All", "Fruits", "Vegetable", "Herbs", "Organic","Inorganic"]
    private var itemsList = ["maizeLeaf": ["Maize", "Cereal", "1 mile away", "$2.30"],"pineappleLeaf": ["Pineapple", "Fruit", "2 miles away", "$1.20"],"appleLeaf": ["Apple", "Fruit", "3 miles away", "$0.50"],"orangeLeaf": ["Orange", "Fruit", "<1 mile away", "$0.20"]]
    
    
    @State private var showScanView = false

    
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
                
                Text("Please select your crop for disease detection").font(.system(size: 13, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7)))
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                    .frame(width: 114, height: 4).offset(y: -5)
                
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(Array(itemsList.keys), id: \.self) { item in
                            
                            Button {
                                self.showScanView = true
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
                                        //Name
                                        Text(itemsList[item]![0]).font(.system(size: 25, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        
                                    }
                                    
                                }
                                .frame(width: 157, height: 218)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                
                Spacer()
                
               
            }
            
            if $showScanView.wrappedValue{
                
                withAnimation{
                    ScanView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
                
            }
        }.ignoresSafeArea()
    }
}

struct CroptypeScanView_Previews: PreviewProvider {
    static var previews: some View {
        CroptypeScanView()
    }
}
