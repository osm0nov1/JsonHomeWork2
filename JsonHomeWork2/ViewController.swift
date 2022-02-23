//
//  ViewController.swift
//  JsonHomeWork2
//
//  Created by Rashit Osmonov on 17/2/22.
//

import UIKit
import Foundation

struct First: Decodable {
    let menu: Menu
}

struct Menu: Decodable {
    let id: String
    let value: String
    let popup: Popup
}
struct Popup: Decodable {
    let menuitem: [Menuitem]
}
struct Menuitem: Decodable {
    let value: String
    let onclick: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        guard let asset = NSDataAsset(name: "json", bundle: Bundle.main) else {return}
        
        let model = try! JSONDecoder().decode(First.self, from: asset.data)
        
        dump(model)
        
        
    
    }


}

