//
//  ViewController.swift
//  ComicCollector
//
//  Created by Michael Teti on 7/5/17.
//  Copyright © 2017 Michael Teti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var comics : [Comic] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate)
        do {
            comics = try context.persistentContainer.viewContext.fetch(Comic.fetchRequest())
            print(comics)
            tableView.reloadData()
        } catch {
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let comic = comics[indexPath.row]
        cell.textLabel?.text = comic.title
        cell.imageView?.image = UIImage(data: comic.image! as Data)
        return cell
    }
    
}

