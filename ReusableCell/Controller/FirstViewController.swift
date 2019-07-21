import UIKit
import Foundation

class FirstViewController: UIViewController  {
    
    let userName = ["Papich", "Rapan", "Andromeda", "Witcher"]
    let cellIdentifier = "cell"
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(ParentTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        table.delegate = self
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    func addSubviews() {
        self.view.addSubview(tableView)
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
    }
}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ParentTableViewCell
        cell.setupLabel(with: userName[indexPath.row])
        
        return cell
    }
}
