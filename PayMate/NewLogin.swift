//
//  NewLogin.swift
//  PayMate
//
//  Created by Yash  Khanande on 21/10/24.
//

import SwiftUI

struct NewLogin: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity,alignment: .leading)
                .kerning(2)
            
            VStack(alignment: .leading,spacing: 8,content: {
                Text("User Name")
                    .bold()
                    .foregroundStyle(.gray)
                TextField("name@gmail.com",text: $email)
                    .font(.system(size: 20,weight:.semibold))
                    .foregroundColor(Color("dark"))
                Divider()
            })
            .padding(.top,25)
        }.padding()
       
    }
}

#Preview {
    NewLogin()
}
