package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import clases.User;

public class UserDAO implements IUserDAO {
	
	@Autowired
  	SessionFactory sessionFactory;

	public List<User> listUser() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<User> listaUser = session.createQuery("from User").list();
		session.close();
		return listaUser;
	}

}
