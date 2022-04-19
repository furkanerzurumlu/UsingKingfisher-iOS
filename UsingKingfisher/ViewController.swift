//
//  ViewController.swift
//  UsingKingfisher
//
//  Created by Furkan Erzurumlu on 19.04.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPicture(imageName: "kofte.png")
    }
    @IBAction func image1(_ sender: Any) {
        showPicture(imageName: "fanta.png")
    }
    @IBAction func image2(_ sender: Any) {
        showPicture(imageName: "ayran.png")
    }
    
    func showPicture(imageName:String){
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(imageName)"){
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with: url)
            }
        }
    }
}


