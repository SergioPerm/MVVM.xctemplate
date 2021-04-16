//___FILEHEADER___

import UIKit

protocol ___FILEBASENAME___ {
    var cellTypes: [TableViewCellType.Type] { get }
    func generateCell(viewModel: ___VARIABLE_productName___ItemType, tableView: UITableView, for indexPath: IndexPath) -> UITableViewCell
}
