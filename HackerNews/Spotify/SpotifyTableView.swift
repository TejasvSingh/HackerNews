//
//  SpotifyTableView.swift
//  HackerNews
//
//  Created by Tejasv Singh on 9/2/25.
//
import UIKit
struct Song {
    let title: String
    let artist: String
let imageName: String
}

class SpotifyTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let tableView = UITableView()
    
   
    let songs: [Song] = [
        Song(title: "Satranga", artist: "Arijit Singh", imageName: "album1"),
        Song(title: "Sahiba", artist: "Aditya Rikhari", imageName: "album2"),
        Song(title: "Jo Tum Mere Ho", artist: "Anuv Jain", imageName: "album3"),
        Song(title: "Ae Dil Hai Mushkil", artist: "Pritam, Arijit Singh", imageName: "album4"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 100
        tableView.backgroundColor = .black
        tableView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               tableView.topAnchor.constraint(equalTo: view.topAnchor),
               tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
           ])
        view.addSubview(tableView)
        tableView.register(SpotifyCell.self, forCellReuseIdentifier: SpotifyCell.reuseIdentifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpotifyCell", for: indexPath) as! SpotifyCell
        cell.configure(with: songs[indexPath.row])
        return cell
    }
}
