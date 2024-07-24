import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var cellSection: [[DataSources]]?

    //MARK: - Outlets
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: UITableView.Style.grouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Настройки"


        setupHierarchy()
        setupLayout()
    }

    //MARK: - Setup

    private func setupHierarchy() {
        cellSection = DataSources.cell
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints {
            $0.leading.bottom.trailing.equalTo(view)
            $0.top.equalTo(view.safeAreaLayoutGuide)
        }
    }
}
