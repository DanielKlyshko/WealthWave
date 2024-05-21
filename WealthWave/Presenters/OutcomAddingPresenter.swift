import UIKit

protocol OutcomAddingPresenterProtocol: AnyObject {
    func saveTransactionButtonTapped()
}

final class OutcomAddingPresenter {
    unowned let view: OutcomAddingView
    weak var updateDelegate: TransactionsUpdateDelegate?
    
    init(view: OutcomAddingView) {
        self.view = view
    }
}

extension OutcomAddingPresenter: OutcomAddingPresenterProtocol {
    
    func saveTransactionButtonTapped() {
        guard let transactionName = view.nameOfTrasactionTextField.text, !transactionName.isEmpty,
              let transactionCountText = view.countOfTransactionTextField.text, !transactionCountText.isEmpty,
              let transactionCount = Double(transactionCountText) else { return }
        let transactionDate = view.transactionDateDatePicker.date.toString()
        let newTransaction = TransactionsItem(transName: transactionName, transCount: -transactionCount, transDate: transactionDate)
        updateDelegate?.didAddTransaction(newTransaction)
        view.dismiss(animated: true, completion: nil)
    }
   
}

