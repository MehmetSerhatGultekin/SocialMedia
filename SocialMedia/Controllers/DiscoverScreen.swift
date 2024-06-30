//
//  DiscoverScreen.swift
//  SocialMedia
//
//  Created by Mehmet Serhat Gültekin on 30.06.2024.
//

import UIKit

class DiscoverScreen: UIViewController {
    
    @IBOutlet weak var imagesCV: UICollectionView!
    
    var image = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout() // Tasarımı tanımladık
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) // Cellerin Viewla arasındaki boşluk
        
        design.minimumLineSpacing = 5 // Dikeydeki cell ler arası boşluk
        design.minimumInteritemSpacing = 5 // Yataydaki cell ler arası boşluk
        
        imagesCV.collectionViewLayout = design
        
        image = ["Ronaldo"]
        
        imagesCV.delegate = self
        imagesCV.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

}

extension DiscoverScreen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count * 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imagesCV.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImagesCVCell
        if indexPath.row == 0 {
            cell.discoverImagesIV.image = UIImage(named: "Ronaldo")
        } else {
            cell.discoverImagesIV.image = nil
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.imagesCV.frame.size.width // View genişliğini kullanabilmek için değişkene kaydettik
        return CGSize(width: (width - 30) / 3, height: (width - 30) / 3) // Bir satırda boşluklar dışında kaç cell olacak
    }
}
