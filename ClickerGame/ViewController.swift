//
//  ViewController.swift
//  ClickerGame
//
//  Created by MASON BARTELL on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    var points = 1000
    var firstItemBought = false
    var secondItemBought = false
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func clickerButton(_ sender: UIButton) {
        if firstItemBought == true{
            points = points + 5
            countLabel.text = "\(points)"
        } else if secondItemBought == true{
            points = points + 10
            countLabel.text = "\(points)"
        }  else {
            points = points + 1
            countLabel.text = "\(points)"
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerStore
        nvc.pointStore = points
        nvc.delegate = self
    }
    @IBAction func unwindToVC(_ unwindSegue: UIStoryboardSegue) {
        let svc = unwindSegue.source as! ViewControllerStore
        points = svc.pointStore
        firstItemBought = svc.firstBuy
        secondItemBought = svc.secondBuy
        countLabel.text = "\(points)"
    }
    
    
    
    
    
}

