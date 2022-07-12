//
//  ViewController.swift
//  iTask
//
//  Created by Amanda Hack on 05/07/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var todayUILabel: UILabel!
    
    
    @IBOutlet weak var dayUILabel: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
       
        self.initialConfig()
     
        
    }
    private func initialConfig(){
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(TaskTableViewCell.nib(), forCellReuseIdentifier: TaskTableViewCell.identifier)
        
        
        
    }

}

extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
    }
        
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskTableViewCell.identifier, for: indexPath) as? TaskTableViewCell
        
       
        return cell ?? UITableViewCell()
    }
}
