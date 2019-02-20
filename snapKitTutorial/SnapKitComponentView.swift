import UIKit
import SnapKit

class SnapKitComponentView: UIView {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 13, weight: .regular)
        return label
    }()

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.titleLabel.text = title
        self.layer.cornerRadius = 3
        self.clipsToBounds = true
        applyConstraints()
    }

    private func applyConstraints() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints{
            make in
            make.center.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.9)
        }
    }
}