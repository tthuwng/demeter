//
//  ScanView.swift
//  Demeter
//
//  Created by Paul Addai on 3/26/22.
//

import SwiftUI

struct ScanView: View {
    @EnvironmentObject var vm: ViewModel
    
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
                    
                    Text("Please take a picture of the affect region").font(.system(size: 11, weight: .medium)).multilineTextAlignment(.center).padding(.top,-15)
          
                
                }.padding(.top,30)
                  
                
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), lineWidth: 5)
                    
                    if let image = vm.image {
                        
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), lineWidth: 5)
                        
                    }
                    
                    else {
                        Image(systemName: "camera.viewfinder").font(.system(size: 170.0,weight: .light)).opacity(0.5)
                    }
                    
                }.frame(height: 500, alignment: .center).padding().offset(y: -10)
                    .sheet(isPresented: $vm.showPicker) {
                        ImagePicker(sourceType: vm.source == .library ? .photoLibrary : .camera, selectedImage: $vm.image)
                    }
                
                
                HStack(spacing: 60) {
                    
                    Button {
                        vm.source = .camera
                        vm.showPhotoPicker()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 99, height: 72)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 81, height: 55).offset()
                            
                            Image(systemName: "camera").font(.system(size: 25.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                        
                    }
                    
                    Button {
                        vm.source = .library
                        vm.showPhotoPicker()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                .frame(width: 99, height: 72)
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                .frame(width: 81, height: 55).offset()
                            
                            Image(systemName: "photo.artframe").font(.system(size: 25.0,weight: .bold)).foregroundColor(.white)
                            
                            
                        }
                    }
                }
                
                Spacer()
            }
            
            
            
        }.ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
}

struct ScanView_Previews: PreviewProvider {
    
    static var previews: some View {
        ScanView().environmentObject(ViewModel())
    }
}
