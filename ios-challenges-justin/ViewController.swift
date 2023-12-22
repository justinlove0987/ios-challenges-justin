//
//  ViewController.swift
//  ios-challenges-justin
//
//  Created by 曾柏瑒 on 2023/12/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    enum CustomSectionType: CaseIterable {
        case type1
        case type2
        case type3
    }
    
    var type1data = ["One", "Two"]
    var type2data = [1, 2, 3]
    var type3data = [true, true, false]
    
    var sections: [CustomSectionType] = CustomSectionType.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView(sections: sections)
    }
    
    func setupTableView(sections: [CustomSectionType]) {
        sections.forEach { type in
            switch type {
            case .type1:
                tableView.register(Type1CustomCell.self, forCellReuseIdentifier: String(describing: Type1CustomCell.self))
            case .type2:
                tableView.register(Type2CustomCell.self, forCellReuseIdentifier: String(describing: Type1CustomCell.self))
            case .type3:
                tableView.register(Type2CustomCell.self, forCellReuseIdentifier: String(describing: Type1CustomCell.self))
            }
        }
    }
}


extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .type1:
            return type1data.count
        case .type2:
            return type2data.count
        case .type3:
            return type3data.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .type1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Type1CustomCell.self), for: indexPath)
            cell.textLabel?.text = "type1"
            return cell
        case .type2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Type2CustomCell.self), for: indexPath)
            cell.textLabel?.text = "type2"
            return cell
        case .type3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: Type3CustomCell.self), for: indexPath)
            cell.textLabel?.text = "type3"
            return cell
        }
    }
}

class Type1CustomCell: UITableViewCell {
    
}

class Type2CustomCell: UITableViewCell {
    
}

class Type3CustomCell: UITableViewCell {
    
}
