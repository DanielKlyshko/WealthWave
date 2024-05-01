import UIKit

protocol TransactionsListPresenterProtocol: AnyObject {
    
}

class TransactionsListPresenter {
    unowned let view: TransactionsListView
    
    init(view: TransactionsListView) {
        self.view = view
    }
}
