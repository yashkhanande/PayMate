//
//  BarChartView.swift
//  PayMate
//
//  Created by Yash  Khanande on 14/10/24.
//

import SwiftUI
import Charts


struct BarChartView: View {
    @State private var defaultData:[BarChartResponce] = barChartDefaultData
    @State private var targetData:[BarChartResponce] = barChartTargetData
    var body: some View {
        Chart{
            ForEach(defaultData) { data in
                BarMark(
                x : .value("Month",data.month),
                y : .value("Amount",data.amount)
                ).foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20.0))
            }
        }.chartXAxis{
            AxisMarks(position: .bottom){
                _ in
                AxisGridLine().foregroundStyle(.clear)
                AxisTick().foregroundStyle(Color.white)
                AxisValueLabel().foregroundStyle(Color.white)
            }
        }
        .chartYAxis{
            AxisMarks(position: .leading){value in
                AxisGridLine().foregroundStyle(Color.white.opacity(0.5))
                AxisTick().foregroundStyle(Color.white)
                AxisValueLabel().foregroundStyle(Color.white)
                AxisValueLabel(){
                    if let amount = value.as(Double.self){
                        Text("Rs \(amount,specifier:"%.0f")").foregroundStyle(Color.white)
                    }
                }
            }
        }
        .background(Color.blue)
        .onAppear{
            animateChart()
        }
    }
    private func animateChart(){
        for(index , target) in targetData.enumerated(){
            withAnimation(.easeInOut(duration:1.0).delay(Double(index)*0.1)){
                defaultData[index].amount = target.amount
            }
        }
    }
}

#Preview {
    BarChartView()
}
