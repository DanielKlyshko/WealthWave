import Foundation

class TransactionsItem: Identifiable {
    var id = UUID().uuidString
    
    let transName: String?
    let transCount: Double
    let transDate: String

    
    init(id: String = UUID().uuidString, transName: String?, transCount: Double, transDate: String) {
        self.id = id
        self.transName = transName
        self.transCount = transCount
        self.transDate = transDate
    }
    
    static func getMockData() -> [TransactionsItem] {
        [
            TransactionsItem(transName: "Shop", transCount: -123.00, transDate: "24-05-2024"),
            TransactionsItem(transName: "Passive Income", transCount: 100.00, transDate: "24-05-2024"),
            TransactionsItem(transName: "Investicion", transCount: 50.55, transDate: "21-05-2024"),
            TransactionsItem(transName: "Taxi", transCount: -12.00, transDate: "17-05-2024"),
            TransactionsItem(transName: "Gift", transCount: 500.00, transDate: "10-05-2024")
        ]
    }
}
