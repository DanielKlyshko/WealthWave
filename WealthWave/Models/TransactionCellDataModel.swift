import Foundation

final class TransactionsItem: Identifiable {
    
    let transName: String?
    let transCount: Double
    let transDate: String

    
    init(transName: String?, transCount: Double, transDate: String) {
        self.transName = transName
        self.transCount = transCount
        self.transDate = transDate
    }
    
    static func getMockData() -> [TransactionsItem] {
        []
    }
}
