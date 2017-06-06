package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/*import com.niit.model.CartItem;
import com.niit.model.Category;*/
import com.niit.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateProduct(Product product) {
		
		Session session=sessionFactory.openSession();
	    System.out.println("PRODUCT ID BEFORE INSERTION " + product.getId());
		session.saveOrUpdate(product);
		System.out.println("PRODUCT ID AFTER INSERTION " + product.getId());
		session.flush();
		session.close();

	}
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}
	public Product getProductById(int id) {
        Session session=sessionFactory.openSession();
        Product product=(Product)session.get(Product.class, id);
        session.close();
        return product;
	}
	public void deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, id); //persistent
	    product.getCategory().getProducts().remove(product); 
	    //Deleting Product from CartItem table before deleting it from Product Table in case it exists in the cart of one of the Users.
	    int x=product.getId();
		String hql="delete from CartItem C where product_id='" + x + "'"; 
		Query query=session.createQuery(hql);
		query.executeUpdate();
		session.delete(product);
		
		session.flush();
	    session.close();
	}

}
