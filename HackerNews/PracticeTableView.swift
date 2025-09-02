//
//  PracticeTableView.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/25/25.
//

import UIKit
class PracticeTableView: UIViewController, UITableViewDataSource{
    let tableView = UITableView()
    let fruits = ["Apples", "Bananas", "Oranges", "Mangoes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.bounds
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }
}
