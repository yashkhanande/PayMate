import SwiftUI

struct dashView: View {
    var body: some View {
        NavigationStack {
            ScrollView { // Allows the entire content to scroll
                VStack(spacing: 20) { // Added spacing between sections
                    NewHomeView()
                        .frame(maxWidth: .infinity) // Expand to fill width
    
                    requestView2()
                        .padding(.bottom,80)
                        
                }
               
            }.ignoresSafeArea()
        }
    }
}

struct requestView2: View {
    @State private var requests: [Request] = [] // Centralized state for requests

    var body: some View {
        VStack(spacing: 20) { // Group elements vertically with spacing
            Text("Request")
                .font(.title)
                .bold()
                .padding(.horizontal)
            
            NavigationLink(destination: depositView(requests: $requests)) {
                Text("Add Request")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .font(.title2)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    dashView()
}
