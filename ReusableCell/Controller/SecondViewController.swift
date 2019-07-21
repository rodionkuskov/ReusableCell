import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    let userName = ["Second", "View", "Controller"]
    let cellIdentifier = "cell"
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(SecondTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        table.delegate = self
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    @objc func nextVC() {
        let vc = SecondViewController()
        self.present(vc, animated: true)
    }
    
    func addSubviews() {
        self.view.addSubview(tableView)
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        self.view.backgroundColor = .white
    }
    
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SecondTableViewCell
        cell.setupLabel(with: userName[indexPath.row])
        cell.setupUser(image: #imageLiteral(resourceName: "kek"))
        return cell
    }
}
