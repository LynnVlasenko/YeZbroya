//
//  ListCell.swift
//  YeOzbroyenniaNS
//
//  Created by Oleksandr Smakhtin on 18.04.2023.
//

import UIKit

class ListCell: UITableViewCell {

    //MARK: - Identifier
    static let identifier = "ListCell"
    
    //MARK: - UI Objects
    private let titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .label
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let disclousereIndicator: UIImageView = {
        let imageView = UIImageView()
        var image = UIImage(named: "arrow", in: nil, with: UIImage.SymbolConfiguration(pointSize: 4))
        image = image?.withTintColor(.label, renderingMode: .automatic)
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // bg color
        backgroundColor = .clear
        // selection
        selectionStyle = .none
        // add subviews
        addSubviews()
        // apply constraints
        applyConstraints()
    }
    
    //MARK: - Required init
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Add subviews
    private func addSubviews() {
        contentView.addSubview(titleLbl)
        contentView.addSubview(disclousereIndicator)
    }
    
    //MARK: - Apply constraints
    private func applyConstraints() {
        // titleLbl constraints
        let titleLblConstraints = [
            titleLbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLbl.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        // disclousere Indicator constraints
        let disclousereIndicatorConstraints = [
            disclousereIndicator.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            disclousereIndicator.centerYAnchor.constraint(equalTo: titleLbl.centerYAnchor),
            disclousereIndicator.heightAnchor.constraint(equalToConstant: 10),
            disclousereIndicator.widthAnchor.constraint(equalToConstant: 10)
        ]
        
        // activate constraints
        NSLayoutConstraint.activate(titleLblConstraints)
        NSLayoutConstraint.activate(disclousereIndicatorConstraints)
    }

    //MARK: - Configure
    public func configure(with title: String) {
        titleLbl.text = title
    }
    
}
