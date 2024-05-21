import UIKit

protocol HomeScreenPresenterProtocol: AnyObject {

    func incomeButtonTapped()
    func outcomButtonTapped()
}

final class HomeScreenPresenter {
    unowned let view: HomeScreenView
    var transactions: [TransactionsItem]?
    
    init(view: HomeScreenView) {
        self.view = view
        getTransactions()
    }
    
}

extension HomeScreenPresenter: HomeScreenPresenterProtocol {
    
    func outcomButtonTapped() {
        let outcomAddingVC = Builder.createOutcomAddingViewController(delegate: self.view.presenter)
        self.view.present(UINavigationController(rootViewController: outcomAddingVC), animated: true, completion: nil)
    }
    
    func incomeButtonTapped() {
        let incomAddingVC = Builder.createIncomAddingViewController(delegate: self.view.presenter)
        self.view.present(UINavigationController(rootViewController: incomAddingVC), animated: true, completion: nil)
    }
    
    func getTransactions() {
        self.transactions = TransactionsItem.getMockData()
        calculateTotal()
    }
    
    func calculateTotal() {
        let total = transactions?.reduce(0) { $0 + $1.transCount } ?? 0
        DispatchQueue.main.async {
            self.view.updateTotalCount(total)
        }
    }
}

extension HomeScreenPresenter: TransactionsUpdateDelegate {
    func didAddTransaction(_ transaction: TransactionsItem) {
        transactions?.append(transaction)
        view.showTransactions()
    }
}
