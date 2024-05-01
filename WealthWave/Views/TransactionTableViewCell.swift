import UIKit

class TransactionTableViewCell: UITableViewCell {

    private var cellBGView = UIView()
    private var transactioNameLabel = UILabel()
    private var transactionCountLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "TransactionTableViewCell")
        
        addSubview(cellBGView)
        cellBGView.addSubview(transactioNameLabel)
        cellBGView.addSubview(transactionCountLabel)
        
        constraintsSettings()
        uiSettings()
    }
    
    private func constraintsSettings() {
        cellBGView.translatesAutoresizingMaskIntoConstraints = false
        cellBGView.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        cellBGView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        cellBGView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        cellBGView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        cellBGView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        transactioNameLabel.translatesAutoresizingMaskIntoConstraints = false
        transactioNameLabel.leadingAnchor.constraint(equalTo: cellBGView.leadingAnchor, constant: 10).isActive = true
        transactioNameLabel.centerYAnchor.constraint(equalTo: cellBGView.centerYAnchor).isActive = true
        
        transactionCountLabel.translatesAutoresizingMaskIntoConstraints = false
        transactionCountLabel.trailingAnchor.constraint(equalTo: cellBGView.trailingAnchor, constant: -10).isActive = true
        transactionCountLabel.centerYAnchor.constraint(equalTo: cellBGView.centerYAnchor).isActive = true
    }
    
    private func uiSettings() {
        backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        
        cellBGView.layer.cornerRadius = 5
        cellBGView.backgroundColor = .white
        

        transactioNameLabel.font = UIFont(name: "Montserrat-SemiBold", size: 16)
        transactioNameLabel.textColor = .black
        
        transactionCountLabel.font = UIFont(name: "Montserrat-SemiBold", size: 20)
        transactionCountLabel.textColor = .systemRed
    }
    
    func transactionCellConfig(_ transaction: TransactionsItem) {
        transactioNameLabel.text = transaction.transName
        transactionCountLabel.text = "\(transaction.transCount)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
