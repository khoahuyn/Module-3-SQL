package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {

    private static List<Product>products;

    static {
        products = new ArrayList<>();
        products.add( new Product(1, "John", "john@codegym.vn", "Hanoi"));
        products.add( new Product(2, "Bill", "bill@codegym.vn", "Danang"));
        products.add( new Product(3, "Alex", "alex@codegym.vn", "Saigon"));
        products.add( new Product(4, "Adam", "adam@codegym.vn", "Beijin"));
        products.add( new Product(5, "Sophia", "sophia@codegym.vn", "Miami"));
        products.add( new Product(6, "Rose", "rose@codegym.vn", "Newyork"));
    }

    @Override
    public List<Product> findALL() {
        return new ArrayList(products);
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        Product product = new Product();
        for (Product p : products)
        {
            if (p.getId() == id)
            {
                product = p;
            }
        }
        return product;
    }

    @Override
    public void update(int id, Product product) {
        products.set(id-1,product);
    }

    @Override
    public void remove(int id) {
        Product product = new Product();
        for (Product p : products)
        {
            if (p.getId() == id)
            {
                product = p;
            }
        }
        products.remove(product);
    }
}
