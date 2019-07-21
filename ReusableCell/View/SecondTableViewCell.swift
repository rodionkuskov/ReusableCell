import UIKit

class SecondTableViewCell: ParentTableViewCell, MedalPresentable {
    
    var medalImage: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "iconGoldMedal")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(medalImage)
        medalImage.bottomAnchor.constraint(equalTo: userImage.bottomAnchor).isActive = true
        medalImage.trailingAnchor.constraint(equalTo: userImage.trailingAnchor).isActive = true
        medalImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        medalImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        medalImage.layer.cornerRadius = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
