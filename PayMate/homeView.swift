//
//  homeView.swift
//  PayMate
//
//  Created by Yash  Khanande on 24/09/24.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                ZStack{
                    
                    LinearGradient(gradient: Gradient(colors: [.blue,.black.opacity(30)]),startPoint: .topLeading,endPoint: .bottomTrailing)
                    
                        .edgesIgnoringSafeArea(.vertical)
                    
                    
                    VStack{
                        
                        
                        VStack{
                            
                            VStack(){
                                
                                
                                    Button{
                                        print("Currently Unavailable ")
                                    }label: {
                                        Circle()
                                            .foregroundColor(.blue)
                                            .frame(width: 150)
                                            .overlay(
                                                Text("PAY")
                                                    .font(.system(size: 20))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                
                                            )
                                    }
                                
                              
                                
                            }
                            
                            
                            ScrollView(.horizontal){
                                HStack(spacing:30){
                                    
                                    VStack {
                                        Button {
                                        }label: {
                                            Label("Pay Contact", systemImage: "person.crop.circle")
                                        }.buttonStyle(.bordered)
                                            .buttonBorderShape(.capsule)
                                    }
                                    
                                    
                                    Button {
                                    }label: {
                                        Label("UPI ID", systemImage: "person.crop.circle")
                                    }.buttonStyle(.bordered)
                                        .buttonBorderShape(.capsule)
                                    
                                    Button {
                                    }label: {
                                        Label("Add Money", systemImage: "person.crop.circle")
                                    }.buttonStyle(.bordered)
                                        .buttonBorderShape(.capsule)
                                    
                                    Button {
                                    }
                                label: {
                                    Label("UPI ID", systemImage: "@")
                                }.buttonStyle(.bordered)
                                        .buttonBorderShape(.capsule)
                                    
                                }.padding(.top,55).padding(.leading)
                                
                                
                            }
                            
                            HStack(spacing:50){
                                NavigationLink(destination: QRView()){
                                    Image(systemName: "qrcode")
                                        .font(.title)
                                }
                                
                                Text("UPI ID:9518940410@kotak")
                                Image(systemName: "ellipsis")
                            }.foregroundColor(.gray)
                                .padding(.top,20)
                                .padding(.bottom,20)
                            
                            
                            
                            
                            
                        }.padding(.top,100)
                        
                            .edgesIgnoringSafeArea(.all)
                        ZStack(alignment:.topLeading){
                            Color.white
                            VStack{
                                HStack{
                                    
                                    Text("TRANSACTION")
                                        .padding(.top,30)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.gray)
                                        .padding(.leading)
                                        .font(.headline )
                                    Spacer()
                                }
                                
                                HStack{
                                    HStack{
                                        Image(systemName: "person.crop.circle")
                                            .font(.title)
                                        VStack{
                                            HStack{
                                                Text("Aniket Tekam")
                                                    .lineSpacing(10.0)
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                
                                                Text("heyaniket@upi")
                                                    .font(.caption)
                                                
                                                Spacer()
                                            }
                                            
                                        }
                                    }
                                    Spacer()
                                    Text("+ 31000")
                                        .foregroundStyle(Color(.green))
                                }.padding()
                                    .font(.title3)
                                HStack{
                                    HStack{
                                        Image(systemName: "person.crop.circle")
                                            .font(.title)
                                        VStack{
                                            HStack{
                                                Text("Roshan Borkar")
                                                    .lineSpacing(10.0)
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                
                                                Text("Roshan@okicici")
                                                    .font(.caption)
                                                
                                                Spacer()
                                            }
                                            
                                        }
                                    }
                                    Spacer()
                                    Text("- 31000")
                                    
                                }.padding()
                                    .font(.title3)
                                HStack{
                                    HStack{
                                        Image(systemName: "person.crop.circle")
                                            .font(.title)
                                        VStack{
                                            HStack{
                                                Text("Aniket Tekam")
                                                    .lineSpacing(10.0)
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                
                                                Text("heyaniket@upi")
                                                    .font(.caption)
                                                
                                                Spacer()
                                            }
                                            
                                        }
                                    }
                                    Spacer()
                                    Text("+ 31000")
                                        .foregroundStyle(Color(.green))
                                }.padding()
                                    .font(.title3)
                                HStack{
                                    HStack{
                                        Image(systemName: "person.crop.circle")
                                            .font(.title)
                                        VStack{
                                            HStack{
                                                Text("Roshan Borkar")
                                                    .lineSpacing(10.0)
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                
                                                Text("Roshan@okicici")
                                                    .font(.caption)
                                                
                                                Spacer()
                                            }
                                            
                                        }
                                    }
                                    Spacer()
                                    Text("- 31000")
                                    
                                }.padding()
                                    .font(.title3)
                                HStack{
                                    HStack{
                                        Image(systemName: "person.crop.circle")
                                            .font(.title)
                                        VStack{
                                            HStack{
                                                Text("Roshan Borkar")
                                                    .lineSpacing(10.0)
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                
                                                Text("Roshan@okicici")
                                                    .font(.caption)
                                                
                                                Spacer()
                                            }
                                            
                                        }
                                    }
                                    Spacer()
                                    Text("- 31000")
                                    
                                }.padding()
                                    .font(.title3)
                                
                                HStack{
                                    HStack{
                                        Image(systemName: "person.crop.circle")
                                            .font(.title)
                                        VStack{
                                            HStack{
                                                Text("Roshan Borkar")
                                                    .lineSpacing(10.0)
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }
                                            
                                            HStack{
                                                
                                                Text("Roshan@okicici")
                                                    .font(.caption)
                                                
                                                Spacer()
                                            }
                                            
                                        }
                                    }
                                    Spacer()
                                    Text("- 31000")
                                    
                                }.padding()
                                    .font(.title3)
                                
                                
                            }
                            
                        }.cornerRadius(30)
                        
                        
                        
                    }.accentColor(.white).ignoresSafeArea(.all)
                    
                    
                    
                    
                }
                
            }.background(Color("white")).ignoresSafeArea(.all)
        }
        .padding(.bottom)
        
    }}

#Preview {
    homeView()
}
