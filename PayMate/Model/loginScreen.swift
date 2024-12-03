import SwiftUI

struct loginScreen: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .bold()
                .padding()
            
            VStack(alignment: .leading) {
                Text("Username:")
                    .font(.headline)
                TextField("Enter your username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Password:")
                    .font(.headline)
                SecureField("Enter your password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding()
            
            Spacer()
            
            Button("Login") {
                // Handle login logic here
                print("Username: \(username), Password: \(password)")
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
            .padding()
        }
        .padding()
    }
}

#Preview {
    loginScreen()
}
