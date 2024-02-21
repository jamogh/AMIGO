//
//  bookViewController.swift
//  AMIGO
//
//  Created by user1 on 21/02/24.
//

import UIKit

class bookViewController: UIViewController {
    
    @IBOutlet var totpay:UITableView!
      
    let name = ["Subtotal", "Hours", "Total"]
    let price = ["$10", "5", "$50"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totpay.dataSource = self
        totpay.delegate = self
        
    }
    

}

extension bookViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Paid the guide!")
    }
    
}

extension bookViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = totpay.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        cell.detailTextLabel?.text = price[indexPath.row]
        return cell
    }
    
}
