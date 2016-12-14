package controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import clases.Book;
import clases.User;

import dao.IBookDAO;
import dao.IUserDAO;


@Controller
@RequestMapping("/Book")
public class BookController {
	
	@Autowired
	IBookDAO bookService;

	@Autowired
	IUserDAO userService;

	@RequestMapping("/User")
	public ModelAndView User(){
		List<User> listUser = userService.listUser();
		return new ModelAndView("/Book/User", "listUser", listUser);
	}
	
	@RequestMapping("/")
	public ModelAndView List(){
		List<Book> listBook = bookService.listBook();
		return new ModelAndView("/Book/looseSearch", "listBook", listBook);
	}
	
	@RequestMapping(path="/looseSearch.do", method=RequestMethod.GET) 
	public @ResponseBody List<Book> performLooseSearch(@RequestParam("CHARS") String chars)
	{
		if(chars.length() < 3){
			return null;
		}
		return bookService.searchBooksByLooseMatch(chars);
	}

	
	@RequestMapping("/Lista")
	public ModelAndView Listar(){
		List<Book> listBook = bookService.listBook();
		return new ModelAndView("/Book/looseSearch", "listBook", listBook);
	}
	
	@RequestMapping(path="/Add")
	public ModelAndView Listara(){
		return new ModelAndView("/Book/Add");
	}
	
	@RequestMapping(path="/List")
	public @ResponseBody List<Book> bookList(){
		List<Book> listBook = bookService.listBook();
		return listBook;
	} 
	
	@RequestMapping(path="/Addd", method=RequestMethod.POST)
	public @ResponseBody Book addBook(Book book){
		bookService.addBook(book);
		return book;
	} 
	
	@RequestMapping(path="/Delete/{id}", method=RequestMethod.DELETE)
	public @ResponseBody void delete(@PathVariable("id")String id){
		Book o = null;
		try{
		 o = bookService.getBook(Long.parseLong(id));
		}
		catch(org.hibernate.ObjectNotFoundException er){
			o = null;
			System.out.println("ERROR");
		}
		bookService.deleteBook(o);
	}
	
	@RequestMapping(path="/Modify/{id}", method=RequestMethod.POST)
	public @ResponseBody Book modify(@PathVariable("id")String id, Book book){
		Book o = null;
		try{
		 o = bookService.getBook(Long.parseLong(id));
		}
		catch(org.hibernate.ObjectNotFoundException er){
			o = null;
			System.out.println("ERROR");
		}
		book.setId(o.getId());
		bookService.updateBook(book);
		return book;
	}
}