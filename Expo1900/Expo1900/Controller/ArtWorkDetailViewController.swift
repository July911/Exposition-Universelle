import UIKit

class ArtWorkDetailViewController: UIViewController {
    
    var id: Int?
    var expositionItem: [ExpositionItem]?
    let secondViewName: String = "한국의 출품작"

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionss: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        expositionItem = JsonParser.decodeData(of: "items", how: [ExpositionItem].self)
        image.image = UIImage(named: expositionItem?[id ?? .zero].imageName ?? "")
        descriptionss.text = expositionItem?[id ?? .zero].description
        print(self.navigationItem.title)
        self.navigationItem.title = expositionItem?[id ?? .zero].name
    }
   
}
