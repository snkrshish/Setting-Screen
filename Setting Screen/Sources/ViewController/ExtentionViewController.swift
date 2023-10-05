import UIKit


extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return cellSection?.count ?? 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellSection?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        let typeOfAccsessory = cellSection?[indexPath.section][indexPath.row].cellType
        cell?.settingCell = cellSection?[indexPath.section][indexPath.row]
        let switchButton = UISwitch(frame: CGRectZero) as UISwitch
        switchButton.isOn = false
        cell?.accessoryType = .detailDisclosureButton
        switch typeOfAccsessory {
        case .switchButton:
            cell?.accessoryView = switchButton
        case .disclosureIndicator:
            cell?.accessoryType = .disclosureIndicator
        case .none:
            cell?.accessoryType = .checkmark
        }

        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
