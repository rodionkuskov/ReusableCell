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


protocol UserImagePresentable {
    var userImage: UIImageView { get set }
    func setupUser(image: UIImage)
}

extension UserImagePresentable {
    func setupUser(image: UIImage) {
        userImage.image = image
    }
}

protocol MedalPresentable {
    var medalImage: UIImageView { get set }
    func setupMedal(image: UIImage)
}

extension MedalPresentable {
    func setupMedal(image: UIImage) {
        medalImage.image = image
    }
}
