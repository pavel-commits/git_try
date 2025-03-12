enum Genres {
    case fiction
    case fantasy
    case horror
    case poems
    case novel
}


struct Book {
    let title: String
    let author: String
    let price: Double
    let genre: Genres
}


class Library {
    var books: [Book] = []
    
    func addBook(_ book_to_add: Book) {
        books.append(book_to_add)
    }
    
    func filterBooks(by: Genres) -> Array<Book> {
        let filteredBooks = books.filter { $0.genre == by }
        return filteredBooks
    }
    
    func filterBooks(byName: String) -> Array<Book> {
        let filteredBooks = books.filter { $0.title.contains(byName) }
        return filteredBooks
    }
}


class User {
    var name: String = ""
    var discount: Double = 0.0
    init(
        name: String,
        discount: Double
    ) {
        self.name = name
        self.discount = discount
    }
    init() {}
    
    var cart: [Book] = []
    
    func addToCart(_ books_to_add: [Book]) {
        cart += books_to_add
    }
    
    func totalPrice() -> Double {
        var totalPrice = 0.0
        
        for book in cart {
            totalPrice += book.price
        }
        totalPrice *= (1 - self.discount / 100)
        
        return totalPrice
    }
    
    func sortedListOfBooks(by: String) -> Array<Book> {
        var sortedListOfBooks = cart
        if by == "price" {
            sortedListOfBooks = cart.sorted(by: { b1, b2 in b1.price < b2.price })
        } else {
             sortedListOfBooks = cart.sorted(by: { b1, b2 in b1.title < b2.title })
        }
        
        return sortedListOfBooks
    }
}


// -------- Тестирование: --------

let library = Library()
library.addBook(
    Book(
        title: "Гарри Поттер и философский камень",
        author: "Дж.К. Роулинг",
        price: 1000,
        genre: .fiction
    )
)
library.addBook(
    Book(
        title: "Война и мир",
        author: "Лев Толстой",
        price: 850,
        genre: .novel
    )
)
library.addBook(
    Book(
        title: "Стихотворение",
        author: "Владимир Маяковский",
        price: 540,
        genre: .poems
    )
)

let user = User(name: "Алиса", discount: 1.5)
let novelBooks = library.filterBooks(by: .novel)
user.addToCart(novelBooks)
let booksWithName = library.filterBooks(byName: "Гарри")
user.addToCart(booksWithName)

print("Итоговая корзина: \(user.sortedListOfBooks(by: "title"))")
print("Итоговая корзина: \(user.sortedListOfBooks(by: "price"))")
print("Цена корзины: \(user.totalPrice())")
