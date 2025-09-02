//
//  SpotifyCell.swift
//  HackerNews
//
//  Created by Tejasv Singh on 9/2/25.
//

import UIKit

class SpotifyCell: UITableViewCell {
    static let reuseIdentifier = "SpotifyCell"
let songImageView = UIImageView()
let titleLabel = UILabel()
let artistLabel = UILabel()
let optionsButton = UIButton(type: .system)

override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
super.init(style: style, reuseIdentifier: reuseIdentifier)
    backgroundColor = .black

songImageView.translatesAutoresizingMaskIntoConstraints = false
songImageView.contentMode = .scaleAspectFill
songImageView.clipsToBounds = true
songImageView.layer.cornerRadius = 6

titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
artistLabel.font = UIFont.systemFont(ofSize: 14)
artistLabel.textColor = .gray
    titleLabel.textColor = .white

optionsButton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
optionsButton.translatesAutoresizingMaskIntoConstraints = false

let stack = UIStackView(arrangedSubviews: [titleLabel, artistLabel])
stack.axis = .vertical
stack.spacing = 4
stack.translatesAutoresizingMaskIntoConstraints = false

contentView.addSubview(songImageView)
contentView.addSubview(stack)
contentView.addSubview(optionsButton)

NSLayoutConstraint.activate([
songImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
songImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
songImageView.widthAnchor.constraint(equalToConstant: 50),
songImageView.heightAnchor.constraint(equalToConstant: 50),

stack.leadingAnchor.constraint(equalTo: songImageView.trailingAnchor, constant: 12),
stack.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
stack.trailingAnchor.constraint(lessThanOrEqualTo: optionsButton.leadingAnchor, constant: -8),

optionsButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
optionsButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
])
}

required init?(coder: NSCoder) {
fatalError("init(coder:) has not been implemented")
}

func configure(with song: Song) {
songImageView.image = UIImage(named: song.imageName)
titleLabel.text = song.title
artistLabel.text = song.artist
}
}
