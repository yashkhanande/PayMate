//
//  accountsView.swift
//  PayMate
//
//  Created by Yash  Khanande on 17/10/24.
//

import SwiftUI

struct accountsView: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("Bank Accounts")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title)
                Spacer()
            }.padding()
            HStack{
                HStack{
                    Image("Maha")
                        .resizable()
                        .frame(width:60,height: 60)
                        .clipShape(Circle())
                    Text("Bank Of Maharashtra - 3209 ")
                        .fontWeight(.semibold)
                }
                Spacer()
                Text("Primary")
                    .fontWeight(.semibold)
                    .font(.caption2)
                    .padding(.vertical,6)
                        .padding(.horizontal,13)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .foregroundStyle(.white)
                    
            }.padding()
            HStack{
                HStack{
                    Image("SbiPNg")
                        .resizable()
                        .frame(width:60,height: 60)
                        .clipShape(Circle())
                    Text("State Bank Of India - 1249 ")
                        .fontWeight(.semibold)
                }
                Spacer()
                
    //            Text("Primary")
    //                .font(.caption2)
    //                .clipShape(Capsule())
    //                .background(.green)
    //                .foregroundStyle(Color.white)
    //                .bold()
                    
            }.padding()
        }
     
Spacer()
    }}

#Preview {
    accountsView()
}
