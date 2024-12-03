import SwiftUI

struct Goal: Identifiable {
    let id = UUID()
    let title: String
    var currentAmount: CGFloat
    var totalAmount: CGFloat
    var progress: CGFloat {
        currentAmount / totalAmount
    }
}

struct goalVieew: View {
    @State private var goals: [Goal] = [
        Goal(title: "Watch", currentAmount: 2500, totalAmount: 5000),
        Goal(title: "Save for Vacation", currentAmount: 4000, totalAmount: 6000),
        Goal(title: "New Phone", currentAmount: 19000, totalAmount: 20000)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Your Goals")
                .font(.largeTitle)
                .bold()
                .padding(.leading)
            
            ForEach(goals) { goal in
                VStack(alignment: .leading, spacing: 10) {
                    Text(goal.title)
                        .font(.title3)
                        .bold()
                        .padding(.leading)
                    
                    // Progress Bar
                    ZStack(alignment: .leading) {
                        // Background Bar
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.blue.opacity(0.3))
                            .frame(height: 20)
                        
                        // Progress Bar
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.blue)
                            .frame(width: goal.progress * UIScreen.main.bounds.width * 0.9, height: 20)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 16)
                    
                    // Money Progress
                    HStack {
                        Text("₹\(Int(goal.currentAmount))")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Spacer()
                        Text("₹\(Int(goal.totalAmount))")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal, 16)
                }
            }
            
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    goalVieew()
}
