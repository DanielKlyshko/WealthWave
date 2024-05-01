import UIKit

protocol HomeScreenViewProtocol: AnyObject {
    
}

final class HomeScreenView: UIViewController {
    
    var presenter: HomeScreePresenter!
    var controllerBGView = UIView()
    var accountBGView = UIView()
    var totalCountCurrencyLabel = UILabel()
    var totalCountValueLabel = UILabel()
    var incomeButton = UIButton()
    var outcomButton = UIButton()
    var lastTransactionsTitleLable = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(controllerBGView)
        view.addSubview(accountBGView)
        view.addSubview(totalCountCurrencyLabel)
        view.addSubview(totalCountValueLabel)
        view.addSubview(incomeButton)
        controllerBGView.addSubview(outcomButton)
        view.addSubview(lastTransactionsTitleLable)
        
        constraintsSettings()
        uiSettings()
    }
    
    private func constraintsSettings() {
        controllerBGView.translatesAutoresizingMaskIntoConstraints = false
        controllerBGView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        controllerBGView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        controllerBGView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        
        accountBGView.translatesAutoresizingMaskIntoConstraints = false
        accountBGView.heightAnchor.constraint(equalToConstant: 88).isActive = true
        accountBGView.topAnchor.constraint(equalTo: controllerBGView.topAnchor, constant: 4).isActive = true
        accountBGView.leadingAnchor.constraint(equalTo: controllerBGView.leadingAnchor, constant: 4).isActive = true
        accountBGView.trailingAnchor.constraint(equalTo: controllerBGView.trailingAnchor, constant: -4).isActive = true
        
        totalCountCurrencyLabel.translatesAutoresizingMaskIntoConstraints = false
        totalCountCurrencyLabel.leadingAnchor.constraint(equalTo: controllerBGView.leadingAnchor, constant: 20).isActive = true
        totalCountCurrencyLabel.topAnchor.constraint(equalTo: accountBGView.bottomAnchor, constant: 40).isActive = true
        
        totalCountValueLabel.translatesAutoresizingMaskIntoConstraints = false
        totalCountValueLabel.bottomAnchor.constraint(equalTo: totalCountCurrencyLabel.bottomAnchor, constant: 8).isActive = true
        totalCountValueLabel.leadingAnchor.constraint(equalTo: totalCountCurrencyLabel.trailingAnchor, constant: 10).isActive = true
        
        incomeButton.translatesAutoresizingMaskIntoConstraints = false
        incomeButton.leadingAnchor.constraint(equalTo: controllerBGView.leadingAnchor, constant: 16).isActive = true
        incomeButton.topAnchor.constraint(equalTo: totalCountCurrencyLabel.bottomAnchor, constant: 20).isActive = true
        incomeButton.heightAnchor.constraint(equalToConstant: 68).isActive = true
        incomeButton.widthAnchor.constraint(equalToConstant: 68).isActive = true
        incomeButton.bottomAnchor.constraint(equalTo: controllerBGView.bottomAnchor, constant: -28).isActive = true
        
        outcomButton.translatesAutoresizingMaskIntoConstraints = false
        outcomButton.leadingAnchor.constraint(equalTo: incomeButton.trailingAnchor, constant: 10).isActive = true
        outcomButton.topAnchor.constraint(equalTo: totalCountCurrencyLabel.bottomAnchor, constant: 20).isActive = true
        outcomButton.heightAnchor.constraint(equalToConstant: 68).isActive = true
        outcomButton.widthAnchor.constraint(equalToConstant: 68).isActive = true
        
        lastTransactionsTitleLable.translatesAutoresizingMaskIntoConstraints = false
        lastTransactionsTitleLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        lastTransactionsTitleLable.topAnchor.constraint(equalTo: controllerBGView.bottomAnchor, constant: 30).isActive = true
    }
    
    private func uiSettings() {
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        
        controllerBGView.backgroundColor = UIColor(red: 66/255, green: 120/255, blue: 255/255, alpha: 1)
        controllerBGView.layer.cornerRadius = 20
        
        accountBGView.backgroundColor = .white
        accountBGView.layer.cornerRadius = 16
        
        totalCountCurrencyLabel.text = "$"
        totalCountCurrencyLabel.font = UIFont(name: "Montserrat-Bold", size: 20)
        totalCountCurrencyLabel.textColor = .white
        
        totalCountValueLabel.text = "3400"
        totalCountValueLabel.font = UIFont(name: "Montserrat-Bold", size: 48)
        totalCountValueLabel.textColor = .white
        
        incomeButton.setImage(UIImage(named: "inputIcon"), for: .normal)
        incomeButton.backgroundColor = UIColor(red: 97/255, green: 141/255, blue: 255/255, alpha: 1)
        incomeButton.layer.cornerRadius = 34
        
        outcomButton.setImage(UIImage(named: "outputIcon"), for: .normal)
        outcomButton.backgroundColor = UIColor(red: 97/255, green: 141/255, blue: 255/255, alpha: 1)
        outcomButton.layer.cornerRadius = 34
        
        lastTransactionsTitleLable.text = "Last transactions"
        lastTransactionsTitleLable.font = UIFont(name: "Montserrat-ExtraBold", size: 24)
        lastTransactionsTitleLable.textColor = UIColor(red: 31/255, green: 31/255, blue: 31/255, alpha: 1)
    }
    
}

extension HomeScreenView: HomeScreenViewProtocol {
    
}
