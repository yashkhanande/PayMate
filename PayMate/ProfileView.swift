//
//  ProfileView.swift
//  PayMate
//
//  Created by Yash  Khanande on 07/10/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                
                
                
                VStack{
                    Image( "Billgates")
                        .resizable()
                        .frame(width: 220,height: 230)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding(.top)
                    Text("Sunio Deshmukh")
                        .font(.title)
                        .bold()
                    Spacer(minLength: 30)
                    ScrollView(.horizontal){
                        HStack(spacing: 35){
                            NavigationLink( destination:accountsView() ){
                                VStack{
                                    Image(systemName: "house")
                                        .font(.largeTitle)
                                        .foregroundStyle(Color.blue)
                                    Spacer(minLength: 20)
                                    Text("Bank Accounts")
                                        .foregroundStyle(.black)
                                        .fontWeight(.semibold)
                                    Text("2 Accounts")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                            }
                            
                            VStack(alignment: .center){
                                Image(systemName: "creditcard")
                                    .font(.largeTitle)
                                    .foregroundStyle(Color.blue)
                                Spacer(minLength: 20)
                                Text("RuPay credit card")
                                    .fontWeight(.semibold)
                                Text("Pay with UPI")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                            VStack(alignment: .center){
                                Image(systemName: "indianrupeesign")
                                    .font(.largeTitle)
                                    .foregroundStyle(Color.blue)
                                Spacer(minLength: 20)
                                Text("UPI Lite")
                                    .fontWeight(.semibold)
                                Text("Pay PIN-free")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }.frame(width: .infinity)
                            .padding()
                        
                    }
                    
                    VStack(alignment: .leading){
                        NavigationLink(destination:QRView()){
                            HStack{
                                Image(systemName: "qrcode")
                                    .font(.title)
                                    .foregroundStyle(.blue)
                                VStack(alignment: .leading){
                                    Text("Your QR code")
                                        .bold()
                                        .font(.title3)
                                    Text("Use to receive money from any UPI app")
                                        .font(.caption)
                                }
                                .foregroundStyle(.black)
                                .padding()
                                
                            }
                        }
                       
                        
                        HStack{
                            Image(systemName: "gift")
                                .font(.title)
                                .foregroundStyle(.blue)
                            VStack(alignment: .leading){
                                
                                Text("Invite friends, get Reward")
                                    .font(.title3)
                                    .bold()
                                
                                HStack{
                                    Text("Share your code 2n06k2a")
                                        .font(.caption)
                                    Image(systemName:"clipboard.fill")
                                        .font(.caption2)
                                        .foregroundStyle(Color.purple)
                                }
                                
                            }
                            .padding()
                            
                        }
                        HStack{
                            Image(systemName: "gearshape")
                                .font(.title)
                                .foregroundStyle(.blue)
                            VStack(alignment: .leading){
                                Text("Settings")
                                    .font(.title3)
                                    .bold()
                                
                            }
                            .padding()
                            
                        }
                        HStack{
                            Image(systemName: "person.circle")
                                .foregroundStyle(.blue)
                                .font(.title)
                            VStack(alignment: .leading){
                                Text("Manage UPI Accounts")
                                    .font(.title3)
                                    .bold()
                                
                            }
                            .padding()
                            
                        }
                        HStack{
                            Image(systemName: "questionmark.circle")
                                .foregroundStyle(.blue)
                                .font(.title)
                            VStack(alignment: .leading){
                                Text("Get help")
                                    .font(.title3)
                                    .bold()
                                
                            }
                            .padding()
                            
                        }
                        HStack{
                            Image(systemName: "globe")
                                .foregroundStyle(.blue)
                                .font(.title)
                            VStack(alignment: .leading){
                                Text("Language")
                                    .font(.title3)
                                    .bold()
                                Text("English")
                                    .font(.caption)
                                
                            }
                            .padding()
                            
                        }
                    }
                    
                }
            }.frame(width:.infinity)
        }
      
       
    }
}

#Preview {
    ProfileView()
}
