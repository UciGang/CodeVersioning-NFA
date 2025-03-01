import 'library.dart';
import 'book.dart';
import 'member.dart';

void main() {
  Library myLibrary = Library();

  Book book1 = Book("One Piece", "Eichiro Oda");
  Book book2 = Book("Harry Potter", "JK Rowling");

  Member member1 = Member("Uci", 001);

  myLibrary.addBook(book1);
  myLibrary.addBook(book2);
  myLibrary.addMember(member1);

  myLibrary.displayBooks();
}
