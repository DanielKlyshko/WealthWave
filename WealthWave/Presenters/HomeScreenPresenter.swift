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
        loadTransactions()
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
    
    func saveTransactions() {
            guard let transactions = transactions else { return }
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(transactions) {
                UserDefaults.standard.set(encoded, forKey: "transactions")
            }
        }
        
        func loadTransactions() {
            if let savedTransactions = UserDefaults.standard.object(forKey: "transactions") as? Data {
                let decoder = JSONDecoder()
                if let loadedTransactions = try? decoder.decode([TransactionsItem].self, from: savedTransactions) {
                    transactions = loadedTransactions
                    calculateTotal()
                    view.showTransactions()
                }
            } else {
                transactions = TransactionsItem.getMockData()
                calculateTotal()
            }
        }
    
}

extension HomeScreenPresenter: TransactionsUpdateDelegate {
    func didAddTransaction(_ transaction: TransactionsItem) {
        transactions?.append(transaction)
        saveTransactions()
        view.showTransactions()
    }
}
