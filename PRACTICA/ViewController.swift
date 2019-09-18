//
//  ViewController.swift
//  PRACTICA
//
//  Created by MacBook on 13/04/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }

    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        
    }

}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1", for: indexPath) as! TableViewCell1
            return cell
            
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell2", for: indexPath) as! TableViewCell2
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell3", for: indexPath) as! TableViewCell3
            return cell

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell4", for: indexPath) as! TableViewCell4
            cell.delegate = self
            print(cell)
            return cell

           
            
        }
        
    }
    
    
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 170
            
        } else if indexPath.row == 1 {
            return 270
        } else if indexPath.row == 2 {
            return 80
            
        } else {
            return 355
            
        }
    }
}

extension ViewController: TableViewCell4Delegate {
    func celldidPress() {
        
        let viewController2 = storyboard?.instantiateViewController(withIdentifier: String(describing: ViewController2.self)) as! ViewController2
        navigationController?.pushViewController(viewController2, animated: true)
    }
    
    
}
