import UIKit

protocol IncomOutcomAddingPresenterProtocol: AnyObject {
    func saveTransactionButtonTapped()
}

class IncomOutcomAddingPresenter {
    unowned let view: IncomOutcomAddingView
    
    init(view: IncomOutcomAddingView) {
        self.view = view
    }
    
}

extension IncomOutcomAddingPresenter: IncomOutcomAddingPresenterProtocol {
    
    func saveTransactionButtonTapped() {
        
    }
   
}
