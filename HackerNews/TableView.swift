//
//  ViewController.swift
//  Facebook
//

//

import UIKit

struct Employee {
    var id: Int
    var name: String
    var imageName: String
    var description: String
}

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listTableView: UITableView!
    //list of employees
    var employeeList: [Employee] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.dataSource = self
        listTableView.delegate = self
        
        let objemployee1: Employee = Employee(id: 1, name: "Glasses", imageName: "glasses_icon", description: "This is the best glass I have ever seen")
        let objemployee2: Employee = Employee(id: 2, name: "Dessert", imageName: "dessert_icon", description: "This is so yummy")
        let objemployee3: Employee = Employee(id: 3, name: "Camera Lens", imageName: "camera_icon", description: "I wish I had this camera lens")
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as? ListCell else {
            return UITableViewCell()
        }
        
        let employee: Employee = employeeList[indexPath.row]
        cell.cellTitleLabel.text = employee.name
        cell.cellDescriptionLabel.text = employee.description
        cell.cellIconImageView.image = UIImage(named: employee.imageName)
        return cell
    }
    
    // MARK: Delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objemployee: Employee = employeeList[indexPath.row]
        print("User Selected Employee: \(objemployee.name)")
    }
}
