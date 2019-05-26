import Foundation

protocol ArticleListAPIClientProtocol {
    func fetch(completion: @escaping (([Article]?) -> Void))
}
