//
//  ViewController.swift
//  DecodebleProtocol
//
//  Created by Berke T. on 20.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let gitUrl = URL(string: "https://api.themoviedb.org/3/movie/550?api_key=80b43b82815576429ca60bf79c604496") else { return }
           URLSession.shared.dataTask(with: gitUrl) { (data, response
                    , error) in
                    guard let data = data else { return }
                    
                      do {
                        let decoder = JSONDecoder()
                        let gitData = try decoder.decode(Movies.self, from: data)
                        print(gitData.title )
                        
                    } catch let err {
                        print("Err", err)
                 }
           }.resume()
    
    
        
        
    }

    

}


