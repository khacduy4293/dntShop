package entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ComparedProduct implements Serializable {
    List<Products> comparedProducts;
    List<ProductsDetails> detailsProducts;

    public List<Products> getComparedProducts() {
        return comparedProducts;
    }

    public List<ProductsDetails> getDetailsProducts() {
        return detailsProducts;
    }

    public void setDetailsProducts(List<ProductsDetails> detailsProducts) {
        this.detailsProducts = detailsProducts;
    }

    public void setComparedProducts(List<Products> comparedProducts) {
        this.comparedProducts = comparedProducts;
    }

    public ComparedProduct() {
        this.comparedProducts = new ArrayList<>();
        this.detailsProducts=new ArrayList<>();
    }
    
    
    public void addToComparedList(Products prod) {
        if (!comparedProducts.contains(prod)) {
            comparedProducts.add(prod);
        }
    }
    public void addDetailList(ProductsDetails prodetail) {
            detailsProducts.add(prodetail);
    }
    public void removeFromComparedList(Products prod) {
        if (comparedProducts.contains(prod)) {
            comparedProducts.remove(prod);
        }
    }
    
    public void clearList() {
        comparedProducts.clear();
    }
    
    
}
