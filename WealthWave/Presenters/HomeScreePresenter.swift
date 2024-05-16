import UIKit

protocol HomeScreenPresenterProtocol: AnyObject {
    var transactions: [TransactionsItem]? {get set}
    func incomeButtonTapped()
    func outcomButtonTapped()
}

class HomeScreePresenter {
    unowned let view: HomeScreenView
    var transactions: [TransactionsItem]?
    
    init(view: HomeScreenView) {
        self.view = view
        getTransactions()
    }
}

extension HomeScreePresenter: HomeScreenPresenterProtocol {
    func incomeButtonTapped() {
        self.view.present(UINavigationController(rootViewController: Builder.createIncomOutcomAddingViewController()), animated: true, completion: nil)
    }
    
    func outcomButtonTapped() {
        self.view.present(UINavigationController(rootViewController: Builder.createIncomOutcomAddingViewController()), animated: true, completion: nil)
    }
    
    func getTransactions() {
        self.transactions = TransactionsItem.getMockData()
        view.showTransactions()
    }
    
}
