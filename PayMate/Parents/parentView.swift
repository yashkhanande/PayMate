//
//  parentView.swift
//  PayMate
//
//  Created by Yash  Khanande on 16/10/24.
//

import SwiftUI

struct parentView: View {
    @State private var requests: [Request] = [] // Centralized state for requests
    var body: some View {
        NavigationView{
            
            TabView{
           
                          
//
                NewHomeView()
                    .tabItem {
                                   Image(systemName: "chart.bar")
           
                                   Text("Dashboard")
                    }.padding(.bottom,1)
           
                           pAccountView()
                                       .tabItem {
                                           Label("Requests", systemImage: "chevron.up")
                                               .foregroundColor(.blue)
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
    parentView()
}
