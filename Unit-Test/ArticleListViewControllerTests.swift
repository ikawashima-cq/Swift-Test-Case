import XCTest

@testable import SwiftTest

class ArticleListViewControllerTests: XCTestCase {
    
    func test_showTitle() {
        let vc = ArticleListViewController()
        let window = UIWindow()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        XCTAssertEqual(vc.titleLabel.text, "記事タイトル")
    }
    
    func test_showArticleList() {
        let article = Article(title: "記事タイトル")
        let client = FakeArticleListClient(fakeResponse: [article])
        let articleListVC = ArticleListViewController(client: client)
        let window = UIWindow()
        window.rootViewController = articleListVC
        window.makeKeyAndVisible()
        XCTAssertEqual(articleListVC.titleLabel.text, "記事タイトル")
    }
}

class FakeArticleListClient: ArticleListAPIClientProtocol {
    
    let fakeResponse: [Article]
    
    init(fakeResponse: [Article]) {
        self.fakeResponse = fakeResponse
    }
    
    func fetch(completion: @escaping (([Article]?) -> Void)) {
        completion(fakeResponse)
    }
}
