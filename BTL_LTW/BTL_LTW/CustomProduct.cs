using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTW
{
    public class CustomProduct
    {
        public Product product { get; set; }
        public int Count {get; set;}

        public static List<CustomProduct> addAProduct(Product newProduct, List<CustomProduct> listCustomproduct)
        {
            for(int i = listCustomproduct.Count - 1; i >= 0; --i)
            {
                if(listCustomproduct[i].product.Id == newProduct.Id)
                {
                    listCustomproduct[i].Count++;
                    return listCustomproduct;
                }
            }
            listCustomproduct.Add(new CustomProduct() { product = newProduct, Count = 1});
            return listCustomproduct;
        }

        public static List<CustomProduct> removeAProduct(Product product, List<CustomProduct> listCustomproduct)
        {
            for(int i = listCustomproduct.Count -1; i >= 0; --i)
            {
                if(listCustomproduct[i].product.Id == product.Id)
                {
                    if (listCustomproduct[i].Count == 1) listCustomproduct.RemoveAt(i);
                    else listCustomproduct[i].Count--;
                    break;
                }
            }

            return listCustomproduct;
        }

        public static List<CustomProduct> removeAllProduct(Product product, List<CustomProduct> listCustomproduct)
        {
            for(int i = listCustomproduct.Count - 1; i >= 0; --i)
            {
                if(listCustomproduct[i].product.Id == product.Id)
                {
                    listCustomproduct.RemoveAt(i);
                    break;
                }
            }
            return listCustomproduct;
        }

    }

}