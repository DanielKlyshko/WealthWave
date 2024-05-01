import UIKit

protocol HomeScreenPresenterProtocol: AnyObject {
    var transactions: [TransactionsItem]? {get set}
}

class HomeScreePresenter {
    unowned let view: HomeScreenView
    var transactions: [TransactionsItem]?
    
    init(view: HomeScreenView) {
        self.view = view
        getTransactions()
    }
}

extension HomeScreePresenter: TransactionsListPresenterProtocol {

    func getTransactions() {
        self.transactions = TransactionsItem.getMockData()
        view.showTransactions()
    }
    
}
