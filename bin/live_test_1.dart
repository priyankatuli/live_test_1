void main(){

  //Dart list named fruits
  List<Map<String,Object>> fruits=[
    {'name':'Apple','color':'Red','price':2.5},
    {'name':'Banana','color':'Yellow','price':1.0},
    {'name':'Grapes','color':'Purple','price':3.0}
  ];

  print('Original Fruit Details before Discount: ');
  displayFruitDetails(fruits);

  //applying 10% discount
  applyPriceDiscount(fruits,10);

  //Fruit Details After Applying 10% Discount:

  print('Fruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);


}

// to display fruit details
void displayFruitDetails ( List<Map<String,Object>> fruits){

  for (int i = 0; i < fruits.length; i++) {
    print('Name: ${fruits[i]['name']}, Color: ${fruits[i]['color']}, Price: \$${fruits[i]['price']}');
  }
}


//to calculate pricediscount

void applyPriceDiscount(List<Map<String,Object>> fruits,double discountPercentage){
  for(int i=0;i<fruits.length;i++){
    double currentPrice= fruits[i]['price'] as double;
    double discountPrice=(currentPrice*discountPercentage)/100;
    fruits[i]['price']=currentPrice-discountPrice;
  }

}