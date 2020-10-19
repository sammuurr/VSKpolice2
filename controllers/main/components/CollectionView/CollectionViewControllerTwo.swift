import UIKit

private let reuseIdentifier = "cellTwo"

class CollectionViewControllerTwo: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as? CollectionViewCellTwo
        
        if indexPath.row == 0 {
            cell!.cityNameLabel.text = "Alekseevskoe"
            cell?.adreasLabel.text = "Peterburgskaya, 1"
        }else if (indexPath.row == 1){
            cell!.cityNameLabel.text = "Gromovo"
            cell?.adreasLabel.text = "Prospekt mira, 100"
        }else if (indexPath.row == 2){
            cell!.cityNameLabel.text = "Beskudnikovo"
            cell?.adreasLabel.text = "Hibinskiy, 10"
        }
            
        return cell!
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("qdsfghjk")
    }
}
