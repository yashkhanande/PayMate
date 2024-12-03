//
//  PieChartView.swift
//  PayMate
//
//  Created by Yash  Khanande on 14/10/24.
//

import SwiftUI
import Charts

struct PieChartView: View {
    @State private var defaultData : [PieChartResponce] = PieChartDefaultData
    @State private var targetData :
    [PieChartResponce] = PieChartTargetData
    var body: some View {
        Chart(defaultData){ data in
            SectorMark(
                angle : .value("Amount", data.amount),
                innerRadius: .ratio(0.6)
            ).foregroundStyle(by: .value("Name",data.name))
        }
        .onAppear(){
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
    PieChartView()
}
