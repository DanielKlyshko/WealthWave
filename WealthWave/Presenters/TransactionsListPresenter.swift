import UIKit

protocol TransactionsListPresenterProtocol: AnyObject {
    init(view: TransactionsListViewProtocol)
}

class TransactionsListPresenter {
    weak var view: TransactionsListViewProtocol?
    
    required init(view: TransactionsListViewProtocol) {
        self.view = view
    }
}
