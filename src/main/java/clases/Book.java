package clases;

import javax.persistence.*;

import org.hibernate.annotations.Proxy;

@Entity
@Table(name="Book")
@Proxy(lazy=false)
public class Book {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name="title")
	private String title;
	
	public Book(){
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	//La cantidad de hojas es la cantiadd de letras del titulo x 2
	public int cantidadPaginas(){
		String aux = title;
		return aux.length()*2;
	}
	
}
