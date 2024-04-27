import UIKit

protocol TransactionsListViewProtocol: AnyObject {
    
}

class TransactionsListView: UIViewController {
    
    var presenter: TransactionsListPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension TransactionsListView: TransactionsListViewProtocol {
    
}
