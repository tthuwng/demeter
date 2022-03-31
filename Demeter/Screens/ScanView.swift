//
//  ScanView.swift
//  Demeter
//
//  Created by Paul Addai on 3/26/22.
//

import SwiftUI


struct ScanView: View {
    @EnvironmentObject var vm: ViewModel
    @State private var showResultsView = false
    
    
    
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
                    
                    //Rectangle 202
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.20000000298023224)))
                    
                    
                    
                    
                    if let image = vm.image {
                        
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.50)))
                                .frame(width: 70, height: 70)
                            
                            
                            Text("Detecting").font(.system(size: 10, weight: .regular, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.96, green: 0.96, blue: 0.96, alpha: 1))).offset(y:19)
                            
                            ProgressView().progressViewStyle(CircularProgressViewStyle(tint: Color.green)).scaleEffect(1.5, anchor: .center).offset(y:-5)
                        }
                        
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)), lineWidth: 5)
                        
                        
                    }
                    
                    else {
                        Image("plantpot").resizable().frame(width: 100, height: 100, alignment: .center)
                        
                        GifImage("scanning").frame(width: 350, height: 340, alignment: .center).cornerRadius(17).opacity(0.2)
                    }
                    
                }.frame(height: 350, alignment: .center).padding().offset(y: -10)
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
                        
                        //Delay (For demo purpse)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
                            self.showResultsView = true
 
                        }
                        
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
                
                //Footer
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 0.16470588743686676, green: 0.615686297416687, blue: 0.5607843399047852, alpha: 1)))
                        .frame(width: 348, height: 60)
                    
                    HStack(spacing: 60){
                        
                        Button {
                            //action
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
                            //action
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
                            //action
                        } label: {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352940797805786, blue: 0.3803921341896057, alpha: 0.33000001311302185)))
                                    .frame(width: 55, height: 50)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.95686274766922, green: 0.6352941393852234, blue: 0.3803921639919281, alpha: 1)))
                                    .frame(width: 45, height: 45)
                                
                                Image(systemName: "cart").font(.system(size: 20.0,weight: .bold)).foregroundColor(.white)
                                
                            }
                        }
                    }
                }.padding(.top,90)
                
                Spacer()
                
            }
            
            if $showResultsView.wrappedValue{
                withAnimation{
                    ResultsView()
                }.transition(AnyTransition.move(edge: .trailing).combined(with: .opacity)).animation(Animation.easeInOut(duration: 0.5))
                
            }
            

            
        }.ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
}

struct ScanView_Previews: PreviewProvider {
    
    static var previews: some View {
        ScanView().environmentObject(ViewModel())
    }
}
