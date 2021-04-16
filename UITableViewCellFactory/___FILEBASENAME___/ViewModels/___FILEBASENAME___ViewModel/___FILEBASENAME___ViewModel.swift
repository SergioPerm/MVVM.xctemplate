//___FILEHEADER___

import Foundation

protocol ___FILEBASENAME___Inputs {

}

protocol ___FILEBASENAME___Outputs {
    var items: [___VARIABLE_productName___ItemViewModelType] { get }
}

protocol ___FILEBASENAME___Type {
    var inputs: ___FILEBASENAME___Inputs { get }
    var outputs: ___FILEBASENAME___Outputs { get }
}

class ___FILEBASENAME___: ___FILEBASENAME___Type, ___FILEBASENAME___Inputs, ___FILEBASENAME___Outputs {
        
    var inputs: ___FILEBASENAME___Inputs { return self }
    var outputs: ___FILEBASENAME___Outputs { return self }
    
    //MARK: Outputs
    
    var items: [___VARIABLE_productName___ItemViewModelType] = []
}

extension ___FILEBASENAME___ {
    private func loadData() {
        
    }
}
