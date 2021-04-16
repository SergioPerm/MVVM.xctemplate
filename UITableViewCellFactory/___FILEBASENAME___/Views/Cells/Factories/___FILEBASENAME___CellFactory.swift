//___FILEHEADER___

import UIKit

class ___FILEBASENAME___: ___VARIABLE_productName___CellFactoryType {
    
    var cellTypes: [TableViewCellType.Type] = [
        ___VARIABLE_productName___TableViewCell.self
    ]
    
    func generateCell(viewModel: ___VARIABLE_productName___ItemType, tableView: UITableView, for indexPath: IndexPath) -> UITableViewCell {
        
        switch viewModel {
        case let viewModel as ___VARIABLE_productName___ItemViewModelType:
            let view = ___VARIABLE_productName___TableViewCell.reuse(tableView, for: indexPath)
            view.viewModel = viewModel
            return view
        default:
            return UITableViewCell()
        }
        
    }
    
}
