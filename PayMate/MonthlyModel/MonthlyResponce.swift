
import Foundation

struct MonthlyResponce : Identifiable , Hashable {
    var id = UUID()
    var name : String
    var description : String
    var imageUrl : String
    var amount : String
}
