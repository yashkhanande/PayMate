//
//  NewHomeView.swift
//  PayMate
//
//  Created by Yash  Khanande on 14/10/24.
//

import SwiftUI

struct NewHomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HeaderAndBarChartView()
                    SpendDetailView()
                    PieChartDetailView()
                }
                
            }.background(Color.gray.opacity(0.1))
                .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    NewHomeView()
}

struct HeaderAndBarChartView:View {
    var height = UIScreen.main.bounds.height
    var body: some View {
        VStack(spacing: 30){
            HStack(alignment: .center){
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20,height: 50)
                Spacer()
                Text("Spending")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.trailing,20)
                Spacer()
                NavigationStack{
                    NavigationLink(destination: notificationView()){
                        Image(systemName: "bell")
                            .foregroundColor(.blue)
                            .font(.title)
                            .bold()
                            .padding()
                            .frame(width: 45)
                    }
                }
                .background(Color.white).clipShape(Circle())
                    
            }.foregroundColor(.white)
                .padding(.top,60)
                .padding(.horizontal)
            VStack{
                HStack{
                    HStack{
                        Text("Monthly")
                            .font(.title)
                            .fontWeight(.bold)
                        Image(systemName: "chevron.down")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 8,height: 8)
                            .fontWeight(.bold)
                            .padding(.top,8)
                            
                        
                    }.foregroundStyle(.white)
                    Spacer()
                    HStack(spacing: 14){
                        EarnedSpentView(title: "Earned",color: Color.blue)
                        EarnedSpentView(title: "Spent",color: Color.white)
                    }.padding(.vertical,6)
                        .padding(.horizontal,18)
                        .background(Color.black.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
               
                }.padding(.horizontal)
                    .padding(.vertical)
              
                BarChartView()
                    .frame(width: .infinity,height: height*0.2)
                Spacer()
            }
            Spacer()
            
        }.frame(height: height * 0.5)
            .background(Color.blue)
            
    }
}

struct EarnedSpentView:View {
    var title : String
    var color : Color?
    var body: some View {
        HStack(spacing:8){
            Circle()
                .fill(color ?? .white)
                .frame(width: 9,height: 9)
                .padding(.top,2)
        Text(title)
                .font(.subheadline)
                .foregroundStyle(Color.white)
            
        }
    }
}

struct SpendDetailView : View {
    var monthlyDatas : [MonthlyResponce] = monthlyData
    var body: some View {
        VStack{
            ForEach(monthlyDatas) { item in
                VStack(spacing: 14){
                    HStack{
                        HStack(spacing: 14){
                            Image(item.imageUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 35,height: 35)
                            VStack(alignment:.leading,spacing: 0){
                                Text(item.name)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text(item.description)
                                    .font(.footnote)
                                    .foregroundStyle(.opacity(0.6))
                            }
                            Spacer()
                            HStack(spacing:16){
                                Text("Rs \(item.amount)")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 7,height: 7)
                                    .fontWeight(.semibold)
                                    .padding(.top,3)
                            }
                        }
                        Spacer()
                    }.padding(.horizontal)
                    Divider().padding(.leading,70)
                }
            }
        }.frame(maxWidth: .infinity)
            .padding(.top,14)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal,16)
            .offset(x:0,y:-50)
    }
}

struct PieChartDetailView : View {
    var body: some View {
        VStack{
            PieChartView()
                .frame(width: .infinity,height: 330)
                .padding(.horizontal)
        }.frame(maxWidth: .infinity)
            .padding()
          
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal,16)
            .offset(x:0,y:-40)
    }
}
