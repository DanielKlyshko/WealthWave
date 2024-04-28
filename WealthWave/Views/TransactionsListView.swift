import UIKit

protocol TransactionsListViewProtocol: AnyObject {
    
}

class TransactionsListView: UIViewController {
    
    var presenter: TransactionsListPresenter!
    var pageHeaderLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pageHeaderLabel)
        
        constrainsSettings()
        uiSettings()
    }
    
    private func constrainsSettings() {
        pageHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        pageHeaderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        pageHeaderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        
        pageHeaderLabel.text = "All transactions"
        pageHeaderLabel.font = UIFont(name: "Montserrat-ExtraBold", size: 24)
        pageHeaderLabel.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
    }
}

extension TransactionsListView: TransactionsListViewProtocol {
    
}
