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
//        let _ = Person(firstName: "Yoni", lastName: "Barzilay", gender: true)
//        DataBase.shared.saveContext()
//        let people = DataBase.shared.loadPerson()
//        print(people)
        let address = "https://newsapi.org/v2/top-headlines?country=us&apiKey=4ffc117210af4f4cbaa6a8e94d31daad"
        print("Hey")
        DataSource.shared.fetchNews(address: address) { [weak self] (newRes : News) in
            guard let self = self else{return}
            print(newRes.articles.count)
            for article in newRes.articles{
                print(article.content ?? "Empty content")
                print("\n")
            }
        }
        
    }


}

