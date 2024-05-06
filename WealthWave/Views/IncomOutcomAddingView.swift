import UIKit

protocol IncomOutcomAddingViewProtocol: AnyObject {

}

final class IncomOutcomAddingView: UIViewController {
    
    var presenter: IncomOutcomAddingPresenter!
    var headerLabel = UILabel()
    private var nameOfTrasactionTextField = UITextField()
    private var countOfTransactionTextField = UITextField()
    private var transactionDateDatePicker = UIDatePicker()
    private var saveTransactionButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(headerLabel)
        view.addSubview(nameOfTrasactionTextField)
        view.addSubview(countOfTransactionTextField)
        view.addSubview(transactionDateDatePicker)
        view.addSubview(saveTransactionButton)
        
        constraintsSettings()
        uiSettings()
    }
    
    private func constraintsSettings() {
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        nameOfTrasactionTextField.translatesAutoresizingMaskIntoConstraints = false
        nameOfTrasactionTextField.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 20).isActive = true
        nameOfTrasactionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        nameOfTrasactionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        nameOfTrasactionTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        countOfTransactionTextField.translatesAutoresizingMaskIntoConstraints = false
        countOfTransactionTextField.topAnchor.constraint(equalTo: nameOfTrasactionTextField.bottomAnchor, constant: 10).isActive = true
        countOfTransactionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        countOfTransactionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        countOfTransactionTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        transactionDateDatePicker.translatesAutoresizingMaskIntoConstraints = false
        transactionDateDatePicker.topAnchor.constraint(equalTo: countOfTransactionTextField.bottomAnchor, constant: 10).isActive = true
        transactionDateDatePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true

        saveTransactionButton.translatesAutoresizingMaskIntoConstraints = false
        saveTransactionButton.topAnchor.constraint(equalTo: transactionDateDatePicker.bottomAnchor, constant: 20).isActive = true
        saveTransactionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        saveTransactionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        saveTransactionButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        
        headerLabel.text = "Add transaction"
        headerLabel.font = UIFont(name: "Montserrat-ExtraBold", size: 24)
        headerLabel.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
        
        nameOfTrasactionTextField.backgroundColor = .white
        nameOfTrasactionTextField.layer.cornerRadius = 10
        nameOfTrasactionTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 40))
        nameOfTrasactionTextField.leftViewMode = .always
        nameOfTrasactionTextField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        
        countOfTransactionTextField.backgroundColor = .white
        countOfTransactionTextField.layer.cornerRadius = 10
        countOfTransactionTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 40))
        countOfTransactionTextField.leftViewMode = .always
        countOfTransactionTextField.attributedPlaceholder = NSAttributedString(string: "Count", attributes: [.font: UIFont(name: "Montserrat-SemiBold", size: 14)!, .foregroundColor: UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)])
        
        saveTransactionButton.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        saveTransactionButton.layer.cornerRadius = 10
        saveTransactionButton.setTitle("Save", for: .normal)
        saveTransactionButton.titleLabel?.font = UIFont(name: "Montserrat-SemiBold", size: 14)
        saveTransactionButton.addTarget(self, action: #selector(saveTransactionButtonTapped), for: .touchUpInside)
    }
    
    @objc private func saveTransactionButtonTapped(_ sender: UIButton) {
        presenter.saveTransactionButtonTapped()
    }
    
}

extension IncomOutcomAddingView: IncomOutcomAddingViewProtocol {
  
}
