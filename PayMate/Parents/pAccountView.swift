//
//  pAccountView.swift
//  PayMate
//
//  Created by Yash  Khanande on 10/10/24.
//
import SwiftUI

struct pAccountView: View {
    
    //    @Binding var requests: [Request] // Passed as a binding to reflect updates
    @State private var requests: [Request] = [
        Request(reason: "Groceries", amount: "50"),
        Request(reason: "Rent", amount: "500"),
        Request(reason: "Electricity Bill", amount: "120"),
        Request(reason: "Car Maintenance", amount: "300"),
        Request(reason: "Books", amount: "40")
    ]
    var body: some View {
      
            NavigationStack {
                ScrollView{
                VStack {
                    Text("Payment Requests")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    if requests.isEmpty {
                        Text("No requests yet.")
                            .italic()
                            .foregroundColor(.gray)
                    } else {
                        ForEach(requests) { request in
                            RequestCard(
                                request: request,
                                onAction: { isApproved in
                                    handleAction(for: request, approved: isApproved)
                                }
                            )
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
        }}
        
        // Handles approve/reject logic
        private func handleAction(for request: Request, approved: Bool) {
            if approved {
                print("Request approved: \(request)")
            } else {
                print("Request rejected: \(request)")
            }
        }
    }
    
    
    struct RequestCard: View {
        let request: Request
        let onAction: (Bool) -> Void // Callback for approve/reject
        
        var body: some View {
            VStack {
                Text("\(request.reason)")
                    .font(.title2)
                    .bold()
                HStack {
                    Button("Approve") {
                        onAction(true) // Approve action
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    
                    Button("Reject") {
                        onAction(false) // Reject action
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.red.opacity(0.8))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
                .font(.title2)
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Reason: \(request.reason)")
                    Text("Amount: \(request.amount)")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            }
            .padding()
            .background(Color.blue.opacity(0.1))
            .cornerRadius(15)
        }
    }


#Preview {
//    @State var sampleRequests: [Request] = [
//        Request(reason: "Buy groceries", amount: "50"),
//        Request(reason: "Pay rent", amount: "500")
//    ]
//
//    return pAccountView(requests: $sampleRequests)
    pAccountView()
}
