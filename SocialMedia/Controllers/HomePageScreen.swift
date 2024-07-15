//
//  HomePageScreen.swift
//  SocialMedia
//
//  Created by Mehmet Serhat Gültekin on 3.07.2024.
//

import UIKit

class HomePageScreen: UIViewController {
    
    @IBOutlet weak var postsCV: UICollectionView!
    
    var images = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout() // Tasarımı tanımladık
        
        design.sectionInset = UIEdgeInsets(top: 50, left: 30, bottom: 20, right: 30) // Cellerin Viewla arasındaki boşluk
        
        design.minimumLineSpacing = 5 // Dikeydeki cell ler arası boşluk
        design.minimumInteritemSpacing = 5 // Yataydaki cell ler arası boşluk
        
        postsCV.collectionViewLayout = design
        
        images = ["Ronaldo", "Messi", "Ana de armas", "Kedi", "Köpek",
                  "Snow", "Foreman", "Conor", "Bayrak", "Ankara", "GOT",
                  "King", "Dragon", "Galatasaray", "KDB", "Çilek",
                  "Ester", "Ronaldinho", "Wolf", "Manzara", "Zed",
                  "NK", "Zidane", "Faker"]
        
        postsCV.delegate = self
        postsCV.dataSource = self
        
        
    }
    
}

extension HomePageScreen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = postsCV.dequeueReusableCell(withReuseIdentifier: "HPImageCell", for: indexPath) as! PostsCVCell
        let image = images[indexPath.row]
        cell.postsIV.image = UIImage(named: image)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.postsCV.frame.size.width // View genişliğini kullanabilmek için değişkene kaydettik
        return CGSize(width: (width - 60) , height: (width - 70) ) // Bir satırda boşluklar dışında kaç cell olacak
    }
}

