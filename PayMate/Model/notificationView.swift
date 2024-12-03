//
//  notificationView.swift
//  PayMate
//
//  Created by Yash  Khanande on 26/11/24.
//

import SwiftUI

struct notificationView: View {
    var body: some View {
        VStack{
            HStack{
                
                VStack(alignment: .leading){
                    Text("Spent : 500")
                        .bold()
                        .font(.title3)
                    Text("on groceries")
                }
                Spacer()
                Text("9:44 AM")
            }.padding()
            .background(Color.gray.opacity(0.1))
                .frame(width: .infinity)
                .clipShape(Capsule())
                .padding()
            HStack{
                
                VStack(alignment: .leading){
                    Text("Spent : 120")
                        .bold()
                        .font(.title3)
                    Text("on Food")
                }
                Spacer()
                Text("1:44 PM")
            }.padding()
            .background(Color.gray.opacity(0.1))
                .frame(width: .infinity)
                .clipShape(Capsule())
                .padding()
Spacer()
        }
    }
}

#Preview {
    notificationView()
}
