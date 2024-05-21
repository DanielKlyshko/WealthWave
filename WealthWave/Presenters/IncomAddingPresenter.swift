import UIKit

protocol IncomAddingPresenterProtocol: AnyObject {
    func saveTransactionButtonTapped()
}

final class IncomAddingPresenter {
    unowned let view: IncomAddingView
    weak var updateDelegate: TransactionsUpdateDelegate?
    
    init(view: IncomAddingView) {
        self.view = view
    }
}

extension IncomAddingPresenter: IncomAddingPresenterProtocol {
    
    func saveTransactionButtonTapped() {
            guard let transactionName = view.nameOfTrasactionTextField.text, !transactionName.isEmpty,
                  let transactionCountText = view.countOfTransactionTextField.text, !transactionCountText.isEmpty,
                  let transactionCount = Double(transactionCountText) else { return }
            let transactionDate = view.transactionDateDatePicker.date.toString()
            let newTransaction = TransactionsItem(transName: transactionName, transCount: transactionCount, transDate: transactionDate)
            updateDelegate?.didAddTransaction(newTransaction)
            view.dismiss(animated: true, completion: nil)
        }
   
}

extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter.string(from: self)
    }
}
