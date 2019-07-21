import UIKit

class ParentTableViewCell: UITableViewCell, UserNamePresentable, UserImagePresentable {

    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var userImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    func addSubviews() {
        
        self.addSubview(userImage)
        userImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        userImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        userImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        userImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        userImage.layer.cornerRadius = 20
        
        self.addSubview(nameLabel)
        nameLabel.leadingAnchor.constraint(equalTo: userImage.trailingAnchor, constant: 20).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
