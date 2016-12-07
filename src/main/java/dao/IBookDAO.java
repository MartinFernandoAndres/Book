package dao;

import java.util.List;

import clases.Book;

public interface IBookDAO {
	
	public List<Book> searchBooksByLooseMatch(String chars);
	public List<Book> listBook();
	public Book getBook(Long id);
	public void addBook(Book book);
	public void deleteBook(Book book);
	public void updateBook(Book book);
}
