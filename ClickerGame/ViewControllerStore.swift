//
//  ViewControllerStore.swift
//  ClickerGame
//
//  Created by MASON BARTELL on 10/3/23.
//

import UIKit

class ViewControllerStore: UIViewController {

@IBOutlet weak var yourPointsLabel: UILabel!
    
    var pointStore: Int!
    var delegate: ViewController!
    var firstBuy = false
    var secondBuy = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pointStore!)
        yourPointsLabel.text = "Your Points:\(pointStore!)"
    }
    
    @IBAction func buyButton1(_ sender: UIButton) {
    if pointStore >= 100
        {
        pointStore -= 100
        firstBuy = true
        print(pointStore!)
        yourPointsLabel.text = "Your Points:\(pointStore!)"
        }
    }
    @IBAction func buyButton2(_ sender: UIButton) {
        if pointStore >= 1000
            {
            pointStore -= 1000
            secondBuy = true
            print(pointStore!)
            yourPointsLabel.text = "Your Points:\(pointStore!)"
            }
    }
    

}
