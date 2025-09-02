import UIKit

class PracticeTableView: UIViewController, UITableViewDataSource {
    let tableView = UITableView()
    let Cars: [[String]] = [["Corolla", "Camry", "GR corolla"], ["Civic", "Accord", "CR-V"]]
    let sectionTitles: [String] = ["Toyota", "Honda"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.register(PracticeListCell.self, forCellReuseIdentifier: PracticeListCell.reuseIdentifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         Cars[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PracticeListCell.reuseIdentifier, for: indexPath) as! PracticeListCell
        cell.textLabel?.text = Cars[indexPath.section][indexPath.row]
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionTitles.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionTitles[section]
    }
}
