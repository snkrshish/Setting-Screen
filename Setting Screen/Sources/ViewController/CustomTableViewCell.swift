import UIKit

class CustomTableViewCell: UITableViewCell {
    var settingCell: DataSources? {
        didSet {
            cellImage.image = settingCell?.iconCell
            cellName.text = settingCell?.textCell
            cellStatus.text = settingCell?.statusText
        }
    }
    //MARK: - Outlets
    private lazy var cellImage: UIImageView = {
        let cellImage = UIImageView()
        cellImage.clipsToBounds = true
        cellImage.layer.cornerRadius = 10
        return cellImage
    }()
    
    private lazy var cellName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()

    private lazy var cellStatus: UILabel = {
        let status = UILabel()
        status.font = UIFont.systemFont(ofSize: 15)
        status.textColor = .systemGray
        return status
    }()
    //MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup
    private func setupHierarchy() {
        contentView.addSubview(cellImage)
        contentView.addSubview(cellName)
        contentView.addSubview(cellStatus)
    }

    private func setupLayout() {
        cellImage.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(contentView).offset(16)
            $0.width.height.equalTo(contentView.snp.height).offset(-15)
        }

        cellName.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.leading.equalTo(cellImage.snp.trailing).offset(10)
        }

        cellStatus.snp.makeConstraints {
            $0.centerY.equalTo(contentView)
            $0.trailing.equalTo(contentView).offset(-20)
        }
    }

    //MARK: - Reuse
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryView = nil
        self.settingCell = nil
    }
}
