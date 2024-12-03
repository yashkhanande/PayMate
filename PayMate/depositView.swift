import SwiftUI
struct depositView: View {
    @Binding var requests: [Request] // Passed from parent as a binding

    @State private var reason = ""
    @State private var amount = ""

    var body: some View {
        VStack {
            Text("Create New Request")
                .font(.title)
                .bold()
                .padding()

            VStack(alignment: .leading) {
                Text("Reason:")
                    .font(.headline)
                TextField("Enter reason here...", text: $reason)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding()

            VStack(alignment: .leading) {
                Text("Amount:")
                    .font(.headline)
                TextField("Enter amount...", text: $amount)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding()

            Spacer()

            HStack {
                Button("Submit") {
                    if !reason.isEmpty && !amount.isEmpty {
                        requests.append(Request(reason: reason, amount: amount))
                        reason = ""
                        amount = ""
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.title2)

                Button("Cancel") {
                    reason = ""
                    amount = ""
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.title2)
            }
            .padding()
        }
        .padding()
    }
}



// Corrected Preview
#Preview {
    @State   var requests = [Request]() // A mutable state variable of type [Request]

    return depositView(requests: $requests) // Pass the state variable as a binding
}



