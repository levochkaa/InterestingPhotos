// DetailViewController.swift

import UIKit

class DetailViewController: UIViewController {

    var photo: Photo!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .never
        title = photo.caption
        let path = FileManager.documentsDirectory.appendingPathComponent(photo.photoName).path
        let image = UIImage(contentsOfFile: path)!
        // TODO: Don't use this 'newImage' variable
        let newImage = UIImage(cgImage: image.cgImage!, scale: image.scale, orientation: .right)
        let imageView = UIImageView(image: newImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
