//
//  requestData.swift
//  PayMate
//
//  Created by Yash  Khanande on 26/11/24.
//

import Foundation

struct Request: Identifiable {
    let id = UUID()
    let reason: String
    let amount: String
}



