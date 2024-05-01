import UIKit

protocol TransactionsListPresenterProtocol: AnyObject {
    var transactions: [TransactionsItem]? {get set}
    func getTransactions()
}

class TransactionsListPresenter {
    unowned let view: TransactionsListView
    var transactions: [TransactionsItem]?
    
    init(view: TransactionsListView) {
        self.view = view
        getTransactions()
    }
}

extension TransactionsListPresenter: TransactionsListPresenterProtocol {

    func getTransactions() {
        self.transactions = TransactionsItem.getMockData()
        view.showTransactions()
    }
    
}
