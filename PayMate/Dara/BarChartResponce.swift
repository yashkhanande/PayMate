

import Foundation

struct BarChartResponce: Identifiable , Hashable{
    var id = UUID()
    var amount : Double
    var month : String
    var type : String
}
