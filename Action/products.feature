Feature: Product Table Operations
  
Scenario: Find lowest discount and highest price
    * def lowestDiscountProduct = Products.sort((a, b) => a.Discount - b.Discount)[0]
    * print 'ProductName with Lowest Discount:', lowestDiscountProduct.ProductName

    * def highestPriceProduct = Products.sort((a, b) => b.Price - a.Price)[0]
    * print 'Id:', highestPriceProduct.Id
    * print 'ProductName:', highestPriceProduct.ProductName
