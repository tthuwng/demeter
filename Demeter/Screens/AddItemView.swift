//
//  AddItemView.swift
//  Demeter
//
//  Created by Paul Addai on 3/27/22.
//

import SwiftUI

struct AddItemView: View {
    
    @EnvironmentObject var vm: ViewModel
    @State private var itemName: String = String()
    @State private var itemType: String = String()
    @State private var itemDiscription: String = String()
    @State private var quantity: String = String()
    @State private var price: String = String()
    
    @State private var showPopUp = false
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
                
                Spacer()
                VStack{
                    Image("logo_green").resizable().frame(width: 30, height: 30, alignment: .center).padding(.top,50)
                    
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
                            Image("user").resizable().frame(width: 50, height: 50, alignment: .center)
                        }
                        
                    }.padding()
                    
                    Text("Add Item").font(.system(size: 16, weight: .bold, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.16, blue: 0.18, alpha: 1)))

                    
                }
                
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), lineWidth: 5)
                    
                    //Rectangle 202
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.20000000298023224)))
                    
                    
                    
                    
                    if let image = vm.image {
                        
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), lineWidth: 5)
                        
                        
                        
                    }
                    
                    else {
                        Image("plantpot").resizable().frame(width: 100, height: 100, alignment: .center)
                        
                        
                    }
                    
                }.frame(width: 200,height: 200, alignment: .center).padding().offset(y: -10)
                    .sheet(isPresented: $vm.showPicker) {
                        ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                    }
                
                
                HStack(spacing: 40) {
                    
                    Button {
                        vm.source = .camera
                        vm.showPhotoPicker()
                        
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 60, height: 60)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 50, height: 50).offset()
                            
                            Image(systemName: "camera").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                        
                    }
                    
                    Button {
                        vm.source = .library
                        vm.showPhotoPicker()
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 60, height: 60)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 50, height: 50).offset()
                            
                            
                            
                            Image(systemName: "photo.artframe").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                    }
                }.offset(y: -20)
                
                
                Spacer()
                
                Divider().offset(y: -25)
                VStack{
                    HStack{
                        ZStack{
                            TextField("Item Name", text: $itemName)
                                .font(.system(size: 15, weight: .semibold))
                                .padding().multilineTextAlignment(.center)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                                .padding()

                        }
                        
                        ZStack{
                            TextField("Item Type", text: $itemType)
                                .font(.system(size: 15, weight: .semibold))
                                .padding().multilineTextAlignment(.center)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                                .padding()
                            
                            
                            
                        }
                    }
                    
                    HStack{
                        ZStack{
                            TextField("Quantity", text: $quantity)
                                .font(.system(size: 15, weight: .semibold))
                                .padding().multilineTextAlignment(.center)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                                .padding()
                            
                            
                        }
                        
                        ZStack{
                            TextField("$ Price", text: $price)
                                .font(.system(size: 15, weight: .semibold))
                                .padding().multilineTextAlignment(.center)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)))
                                .padding()
                            
                            
                            
                        }
                    }.offset(y: -20)
                    
                    HStack{
                       
                        ZStack{
                            TextField("Short Description", text: $itemDiscription)
                                .font(.system(size: 15, weight: .semibold))
                                .padding().multilineTextAlignment(.center)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), style: StrokeStyle(lineWidth: 3.0)).frame(width: 350, height: 100, alignment: .center))
                                .padding()
                                .frame(width: 350, height: 100, alignment: .center)
                            
                        }
                    }.offset(y: -20)
                }.offset(y: -40)
                
                Divider().offset(y: -45)
                
                Button {
                    self.showPopUp = true
                    
                } label: {
                    ZStack{
                       
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                            .frame(width: 150, height: 50).offset()
                        
                        
                        
                        Image(systemName: "bag.badge.plus").font(.system(size: 25.0,weight: .bold)).foregroundColor(.white)
                        
                        
                    }
                }.offset(y: -40)
                
                
            }
            
            
            if $showHomeView.wrappedValue{
                
                withAnimation{
                    HomeView()
                }.transition(AnyTransition.move(edge: .bottom).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
                
            }
           
            if $showPopUp.wrappedValue {
                ZStack {
                    
                    Color.black.opacity(0.4)
                    VStack {
                        
                        Text("Item Posted!").font(.system(size: 20, weight: .bold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        GifImage("done").frame(width: 100, height: 100, alignment: .center).cornerRadius(17)
                        Spacer()
                        Button(action: {
                            self.showPopUp = false
                            self.showHomeView = true
                            vm.image = nil
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
        }.ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView().environmentObject(ViewModel())
    }
}
