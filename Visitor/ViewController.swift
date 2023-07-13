//
//  ViewController.swift
//  Visitor
//
//  Created by Марк Фокша on 12.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        register()
    }
    
    func register() {
        tableView.register(FirstCell.self, forCellReuseIdentifier: "firstCell")
        tableView.register(SecondCell.self, forCellReuseIdentifier: "secondCell")
        tableView.register(ThirdCell.self, forCellReuseIdentifier: "thirdCell")
    }


}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return FirstCell()
        return SecondCell()
        return ThirdCell()
    }
}

//MARK: UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.cellForRow(at: indexPath) as! HeightResultVisitable
        return cell.accept(HeightResultVisitor())
    }
}

//MARK: - Cells extensions
extension FirstCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        visitor.visit(self)
    }
}

extension SecondCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        visitor.visit(self)
    }
}

extension ThirdCell: HeightResultVisitable {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        visitor.visit(self)
    }
}
