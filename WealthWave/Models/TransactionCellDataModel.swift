import Foundation

class TransactionsItem: Identifiable {
    var id = UUID().uuidString
    
    let transName: String?
    let transCount: Double
    let transDate: Date

    
    init(id: String = UUID().uuidString, transName: String?, transCount: Double, transDate: Date) {
        self.id = id
        self.transName = transName
        self.transCount = transCount
        self.transDate = transDate
    }
    
    static func getMockData() -> [TransactionsItem] {
        [
            TransactionsItem(transName: "cfbdff", transCount: 123.00, transDate: Date().addingTimeInterval(-5000)),
            TransactionsItem(transName: "fgbfgb", transCount: 100.00, transDate: Date().addingTimeInterval(-500)),
            TransactionsItem(transName: "", transCount: 50.00, transDate: Date().addingTimeInterval(-12000)),
            TransactionsItem(transName: "cfbd", transCount: 12.00, transDate: Date().addingTimeInterval(-900)),
            TransactionsItem(transName: "fgnfgdn", transCount: 500.00, transDate: Date().addingTimeInterval(-40))
        ]
    }
}
