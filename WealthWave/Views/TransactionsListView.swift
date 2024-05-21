import UIKit
import SwiftUI

protocol TransactionsListViewProtocol: AnyObject {

}

final class TransactionsListView: UIViewController {
    
    var presenter: TransactionsListPresenter!
    private var pageHeaderLabel = UILabel()
//    var transactionListTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pageHeaderLabel)
//        view.addSubview(transactionListTableView)
//
//        transactionListTableView.dataSource = self
//        transactionListTableView.delegate = self
//        transactionListTableView.register(TransactionTableViewCell.self, forCellReuseIdentifier: "TransactionTableViewCell")
        
        constrainsSettings()
        uiSettings()
    }
    
    private func constrainsSettings() {
        pageHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        pageHeaderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        pageHeaderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
//       transactionListTableView.translatesAutoresizingMaskIntoConstraints = false
//       transactionListTableView.topAnchor.constraint(equalTo: pageHeaderLabel.bottomAnchor, constant: 20).isActive = true
//       transactionListTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -110).isActive = true
//       transactionListTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//       transactionListTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        
        pageHeaderLabel.text = "All transactions"
        pageHeaderLabel.font = UIFont(name: "Montserrat-ExtraBold", size: 24)
        pageHeaderLabel.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
//       transactionListTableView.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
//       transactionListTableView.separatorStyle = .none
    }

}

//extension TransactionsListView: UITableViewDataSource, UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        self.presenter.transactions?.count ?? 0
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionTableViewCell", for: //indexPath) as? TransactionTableViewCell else { return UITableViewCell() }
//
//        guard let transaction = presenter.transactions?[indexPath.row] else { return UITableViewCell() }
//
//        cell.transactionCellConfig(transaction)
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//}


//extension TransactionsListView: TransactionsListViewProtocol {
//    func showTransactions() {
//        presenter?.transactions?.reverse()
//        transactionListTableView.reloadData()
//    }
//}


