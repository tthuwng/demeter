//
//  ResultsView.swift
//  Demeter
//
//  Created by Paul Addai on 3/26/22.
//

import SwiftUI

struct ResultsView: View {
    
    //This is not a database..lol
    private var diseaseList = ["Rust":[80],"Blight":[82]]
    private var colorList = ["Rust":[Color(#colorLiteral(red: 0.25979167222976685, green: 0.7250000238418579, blue: 0.25979167222976685, alpha: 1))],"Blight":[Color(#colorLiteral(red: 0.8333333134651184, green: 0.347222238779068, blue: 0.347222238779068, alpha: 1))]]
    
    
    
    let columns = [
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
                    
                    Text("Results").font(.system(size: 11, weight: .medium)).multilineTextAlignment(.center).padding(.top,-15)
                }.padding(.top,30)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), lineWidth: 5)
                    Text("Detected Diseases").font(.system(size: 11, weight: .semibold)).multilineTextAlignment(.center).offset(y: 195)
                }.frame(height: 350, alignment: .center).padding().offset(y: -15)
                
                
                
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(Array(diseaseList.keys), id: \.self) { item in
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(#colorLiteral(red: 0.7921568751335144, green: 0.9529411792755127, blue: 0.8784313797950745, alpha: 1)))
                                    .frame(width: 355, height: 51)
                                
                                HStack(spacing: 200){
                                    Text(item).font(.system(size: 11, weight: .medium))
                                    
                                    Text(String(diseaseList[item]![0]) + "% Confidence").font(.system(size: 11, weight: .medium))
                                    
                                }.offset(y: -7)
                                
                                Group{
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .frame(width: 338, height: 9)
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(colorList[item]![0])
                                        .frame(width: 240 + CGFloat(diseaseList[item]![0]), height: 9)
                                    
                                }.offset(y: 10)
                            }
                            
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 150)
                
                
                Button {
                    //action
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                            .frame(width: 99, height: 72)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                            .frame(width: 81, height: 55).offset()
                        
                        Image(systemName: "lightbulb").font(.system(size: 25.0,weight: .bold)).foregroundColor(.white)
                        
                        
                    }
                }
                
                Spacer()
            }
            
        }.ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
