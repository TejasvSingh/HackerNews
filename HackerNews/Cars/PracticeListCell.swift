//
//  PracticeListCell.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/25/25.
//
import UIKit
class PracticeListCell: UITableViewCell {
    static let reuseIdentifier = "PracticeListCell"
    let titleLabel = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
