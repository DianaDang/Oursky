//
//  ViewController.swift
//  Oursky
//
//  Created by Diana Dang on 4/18/18.
//  Copyright © 2018 Diana Dang. All rights reserved.
//

import UIKit
struct CellData{
    let message : String?
    let image : UIImage?
}

class ViewController: UITableViewController {

    let tasks = [
        Task(name:"Cleaning Desk")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
        
        view.backgroundColor = .white

         navigationItem.title = "Task Timer"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        
         navigationItem.leftBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "Timer").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleAddTask))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:#imageLiteral(resourceName: "Playbutton_2").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleAddTask))
        
    setupNavigationStyle()
       
    }
    
    @objc func handleAddTask() {
      print("Adding task..")
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }
    override func tableView (_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
            cell.textLabel?.text = "Cleaning Desk"
        cell.textLabel?.textColor = .gray
        cell.textLabel?.font = UIFont.systemFont(ofSize: 12)
      
        return cell
       
    
//        let cellImageView : UIImageView = {
//            let imageView = UIImageView()
//            imageView.image = #imageLiteral(resourceName: "Playbutton_2")
//            imageView.layer.cornerRadius = 5
//            imageView.clipsToBounds = true
//            imageView.backgroundColor = .white
//            return imageView
//        }
   }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 //arbitrary
    }
    func setupNavigationStyle() {
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.3843, green: 0.6667, blue: 0.9882, alpha: 1)
        
        // makes it opague
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.3843, green: 0.6667, blue: 0.9882, alpha: 1)
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white]
       
        //text white for nav bar
        navigationController?.navigationBar.largeTitleTextAttributes = [
        NSAttributedStringKey.foregroundColor: UIColor.white]
    
        
        
        
        
    }
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }



}

