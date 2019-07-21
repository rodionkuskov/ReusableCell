import UIKit
import Foundation

protocol UserNamePresentable {
    var nameLabel: UILabel { get set }
    func setupLabel(with name: String)
}

extension UserNamePresentable {
    func setupLabel(with name: String) {
        nameLabel.text = name
    }
}
