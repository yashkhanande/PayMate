//
//  childView.swift
//  PayMate
//
//  Created by Yash  Khanande on 12/10/24.
//

import SwiftUI

struct childView: View {
    var body: some View {
        NavigationView{
            
            TabView{
           
                           homeView()
                               .tabItem {
                                   Image(systemName: "house.fill")
                                   Text("Home")
                               }
                        
                           dashView()
                               .tabItem {
                                   Image(systemName: "chart.bar")
           
                                   Text("Dashboard")
                               }
                        goalVieew()
                            .tabItem {
                            Image(systemName: "target")
                                Text("Goals")
                                }
                           ProfileView()
                                       .tabItem {
                                           Label("Profile", systemImage: "person.crop.circle")
                                       }
                               .tabItem {
                                   Image(systemName: "qrcode.viewfinder")
                                       Text("Scan QR")
                               }
           
                       }
        }
       
       
       
       
       
       
       
       
       
       
          
    }
}

#Preview {
    childView()
}
