//
//  MessegesViewController.swift
//  AMIGO
//
//  Created by user1 on 10/01/24.
//

import UIKit

class MessegesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pro = data[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! msgTableViewCell
        cell.symbol.text = pro.emoji
        cell.name.text = pro.name
        cell.des.text = pro.des
        return cell
    }
    
    
    
    
    
    @IBOutlet weak var table: UITableView!
    
    
    struct profile{
        let emoji: String
        let name: String
        let des: String
    }
    
    let data: [profile] = [
        profile(emoji: "🙎‍♂️", name: "Alex", des: "Guide"), profile(emoji: "🙎‍♂️", name: "Blec", des: "Traveller"), profile(emoji: "🙎‍♂️", name: "dune", des: "guide"),profile(emoji: "🙎‍♂️", name: "Adam", des: "Guide"), profile(emoji: "🙎‍♂️", name: "Beck", des: "Traveller"), profile(emoji: "🙎‍♂️", name: "Drake", des: "guide")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

