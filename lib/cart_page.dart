import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var quentity = 1;

  double price = 199.00;

  double? totalPrice;
  totalprice() {
    totalPrice = price + 10;
    print(totalPrice);
  }

  @override
  void initState() {
    totalPrice = price + 10;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 600,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              "My Cart",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            height: 120,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "images/h.png",
                        scale: 5.5,
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AirPods Max",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "\$$price.00 (-\$4.00 Tax)",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  quentity > 1 ? quentity-- : quentity;
                                  totalPrice = (price * quentity) + 10;

                                  setState(() {});
                                },
                                child: Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    child: Icon(
                                      Icons.remove,
                                      size: 18,
                                      color: Colors.grey.shade700,
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Text(
                                  "$quentity",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  quentity++;
                                  totalPrice = (price * quentity) + 10;

                                  setState(() {});
                                },
                                child: Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    child: Icon(
                                      Icons.add,
                                      size: 18,
                                      color: Colors.grey.shade700,
                                    )),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1, color: Colors.grey)),
                                    child: Icon(
                                      Icons.delete_outline_rounded,
                                      size: 18,
                                      color: Colors.grey.shade700,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Delivery Location",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "📍",
                    style: TextStyle(fontSize: 18),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2 Peter St.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "01658 Tabils",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Payment Method",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                  height: 44,
                  width: 44,
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "images/visa.png",
                    scale: 2,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Visa Classic",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "****01658",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 16),
            child: Text(
              "Order Info",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Row(
            children: [
              Text(
                "Subtotal",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
              Spacer(),
              Text(
                "\$$price.00",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Shipping Cost",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
              Spacer(),
              Text(
                "+\$10.00",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Total",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
              Spacer(),
              Text(
                "\$$totalPrice.00",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Text(
                "CHECKOUT (\$${totalPrice}.00)",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
