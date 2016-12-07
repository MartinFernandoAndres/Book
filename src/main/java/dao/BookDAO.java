package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import clases.Book;

public class BookDAO implements IBookDAO {
	
	@Autowired
  	SessionFactory sessionFactory;
  	
	public List<Book> listBook()
	{
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Book> listaBook = session.createQuery("from Book").list();
		session.close();
		return listaBook;
	}
	
	@Transactional
	public Book getBook(Long id)
	{
		Session session = sessionFactory.openSession();
		Book book = (Book) session.load(Book.class, id);
		session.close();
		return book;
	}

	public List<Book> searchBooksByLooseMatch(String chars)
	{
		System.out.println("looking for "+chars);
		List<Book> returnList = new ArrayList<Book>();
		
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Book> listaBook = session.createQuery("from Book").list();
		session.close();
		
		for(Book next : listaBook)
		{
			if(next.getTitle().toUpperCase().contains(chars.toUpperCase())){
				returnList.add(next);
			}
		}
		return returnList;
	}
	
	@Transactional
	public void addBook(Book book) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(book);
		tx.commit();
		session.close();
	}
	
	@Transactional
	public void deleteBook(Book book) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.delete(book);
		tx.commit();
		session.close();		
	}
	
	@Transactional
	public void updateBook(Book book) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(book);
		tx.commit();
		session.close();		
	}

}
