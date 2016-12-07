package test;
import org.junit.Test;

import clases.Book;

import static org.junit.Assert.assertEquals;

public class BookTest {

	   @Test
	   public void testJunit() {
	      String str = "Junit is working fine";
	      assertEquals("Junit is working fine",str);
	   }
	   
	   @Test
	   public void testBook(){
		   Book book = new Book();
		   book.setTitle("Hola");
		   assertEquals(8, book.cantidadPaginas());
	   }
}
