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
    
    lazy var nextVCButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.setTitle("Next", for: .normal)
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        return button
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
        
        self.view.addSubview(nextVCButton)
        
        nextVCButton.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 50).isActive = true
        nextVCButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        nextVCButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextVCButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        self.view.backgroundColor = .white
    }
}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ParentTableViewCell
        cell.setupLabel(with: userName[indexPath.row])
        cell.setupUser(image: #imageLiteral(resourceName: "kek"))
        return cell
    }
}
