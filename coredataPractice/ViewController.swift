//
//  ViewController.swift
//  coredataPractice
//
//  Created by Yoni on 03/06/2020.
//  Copyright © 2020 Yoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let _ = Person(firstName: "Yoni", lastName: "Barzilay", gender: true)
        DataBase.shared.saveContext()
        let people = DataBase.shared.loadPerson()
        print(people)
    }


}

