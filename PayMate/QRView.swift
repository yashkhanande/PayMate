//
//  QRView.swift
//  PayMate
//
//  Created by Yash  Khanande on 07/10/24.
//

import SwiftUI

struct QRView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Image("Maha")
                        .resizable()
                        .frame(width:60,height: 60)
                        .clipShape(Circle())
                    Text("Bank Of Maharashtra - 3209 ")
                        .fontWeight(.semibold)
                    Text("Primary")
                        .font(.caption2)
                        .clipShape(Capsule())
                        .background(.green)
                        .foregroundStyle(Color.white)
                        .bold()
                        
                }.padding(.top)
                
                VStack{
                    Image("QR")
                        .resizable()
                        .frame(width: 300,height: 300)
                        .padding(.bottom)
                    Text("9518940410@ybl")
                    HStack(alignment: .center){
                        Button{
                            
                        }label:{
                            Label("Share QR", systemImage: "square.and.arrow.up")
                        }.font(.system(size: 20))
                        Spacer()
                        Button{
                            
                        }label:{
                            HStack{
                                Image(systemName: "arrow.down.circle")
                               
                                    
                                Text("DOWNLOAD QR")
                            }.font(.system(size: 20))
                        
                        }
                    }.padding(.leading,29)
                        .padding(.trailing,29)
                        .padding(.top)
                }
                .padding(.bottom,50)
                .padding(.top)
                
                VStack(alignment:.center){
                    HStack{
                        Text("UPI IDs")
                        Spacer()
                        Text("MANAGE")
                            .foregroundStyle(Color.blue)
                    }.padding(.leading,25)
                        .padding(.trailing,25)
                        .font(.system(size: 20))
                        .bold()
                    VStack{
                        HStack{
                            HStack{
                                
                                VStack{
                                    HStack{
                                        Text("9518940410@ybl")
                                            .lineSpacing(10.0)
                                            .fontWeight(.semibold)
                                        Spacer()
                                    }
                                    
                                    HStack{
                                        
                                        Text("Displayed on home")
                                            .font(.caption)
                                        
                                        Spacer()
                                    }
                                    
                                }
                            }
                            Spacer()
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                
                        }.padding()
                            .font(.title3)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(30)
                        HStack{
                            HStack{
                                
                                VStack{
                                    HStack{
                                        Text("9518940410@upi")
                                            .lineSpacing(10.0)
                                            .fontWeight(.semibold)
                                        Spacer()
                                    }
                                    
        //                            HStack{
        //
        //                                Text("Displayed on home")
        //                                    .font(.caption)
        //
        //                                Spacer()
        //                            }
                                    
                                }
                            }
                            Spacer()
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                
                        }.padding()
                            .font(.title3)
                    }
                    .padding()
                  
                }
            }
        }
    
    }}

#Preview {
    QRView()
}
