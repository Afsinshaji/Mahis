import 'package:user/models/categoryProductModel.dart';

class Orders {
  String orderid;
  int userid;
  int storeid;
  int addressid;
  String cartid;
  double totalprice;
  double priceWithoutDelivery;
  double totalProductsMrp;
  String paymentMethod;
  int paidByWallet;
  double remPrice;
  int avgTaxPer;
  double totalTaxPrice;
  String orderDate;
  String deliveryDate;
  double deliveryCharge;
  String timeSlot;
  int dboyId;
  String orderStatus;
  String userSignature;
  String cancellingReason;
  int couponId;
  double couponDiscount;
  String paymentStatus;
  int cancelByStore;
  int dboyIncentive;
  DateTime updatedAt;
  String deliveryAddress;
  String storeName;
  String storePhone;
  String storeEmail;
  String storeAddress;
  double price;
  String deliveryBoyName;
  String deliveryBoyPhone;
  double subTotal;
  String estimatedTime;
  String currentLat;
  String currentLng;
  DateTime placingTime;
  DateTime confirmTime;
  DateTime outForDeliveryTime;
  DateTime completedTime;
  DateTime cancelledTime;
  bool pending;
  bool confirm;
  bool outForDelivery;
  bool completed;
  bool cancelled;
  double discountonmrp;
  List<Product> productList = [];
  double storeLat;
  double storeLng;
  double userLat;
  double userLng;
  Orders();

Orders.newOrder({String cartIds, String paymentStatuss,
   String paymentMethods, String wallets, String paymentIds, String paymentGateways}){
cartid=cartIds;

}

  Orders.fromJson(Map<String, dynamic> json) {
    try {
      orderid = json['order_id'] != null ? json['order_id'].toString() : '';
      userid = json['user_id'] != null ? int.parse(json['user_id'].toString()) : null;
      storeid = json['store_id'] != null ? int.parse(json['store_id'].toString()) : null;
      addressid = json['address_id'] != null ? int.parse(json['address_id'].toString()) : null;
      cartid = json['cart_id'] != null ? json['cart_id'] : null;
      totalprice = json['total_price'] != null ? double.parse('${json['total_price']}') : null;
      priceWithoutDelivery = json['price_without_delivery'] != null ? double.parse('${json['price_without_delivery']}') : null;
      totalProductsMrp = json['total_products_mrp'] != null ? double.parse('${json['total_products_mrp']}') : null;
      paymentMethod = json['payment_method'] != null ? json['payment_method'] : null;
      paidByWallet = json['paid_by_wallet'] != null ? double.parse(json['paid_by_wallet'].toString()).round() : null;
      remPrice = json['rem_price'] != null ? double.parse('${json['rem_price']}') : null;
      avgTaxPer = json['avg_tax_per'] != null ? double.parse(json['avg_tax_per'].toString()).round() : null;
      totalTaxPrice = json['total_tax_price'] != null ? double.parse('${json['total_tax_price']}') : null;
      orderDate = json['order_date'] != null ? json['order_date'] : '';
      deliveryDate = json['delivery_date'] != null ? json['delivery_date'] : '';
      deliveryCharge = json['delivery_charge'] != null ? double.parse('${json['delivery_charge']}') : null;
      timeSlot = json['time_slot'] != null ? json['time_slot'] : null;
      dboyId = json['dboy_id'] != null ? int.parse(json['dboy_id'].toString()) : null;
      orderStatus = json['order_status'] != null ? json['order_status'] : null;
      userSignature = json['user_signature'] != null ? json['user_signature'] : '';
      cancellingReason = json['cancelling_reason'] != null ? json['cancelling_reason'] : '';
      couponId = json['coupon_id'] != null ? int.parse(json['coupon_id'].toString()) : null;
      couponDiscount = json['coupon_discount'] != null ? double.parse('${json['coupon_discount']}') : null;
      discountonmrp = json["discountonmrp"] != null ? double.parse('${json["discountonmrp"]}') : 0;
      paymentStatus = json['payment_status'] != null ? json['payment_status'] : null;
      cancelByStore = json['cancel_by_store'] != null ? int.parse(json['cancel_by_store'].toString()) : null;
      dboyIncentive = json['dboy_incentive'] != null ? double.parse(json['dboy_incentive'].toString()).round() : null;
      updatedAt = json['updated_at'] != null ? json['updated_at'] : null;
      deliveryAddress = json['delivery_address'] != null ? json['delivery_address'] : null;
      storeName = json['store_name'] != null ? json['store_name'] : null;
      storePhone = json['store_phone'] != null ? json['store_phone'] : null;
      storeEmail = json['store_email'] != null ? json['store_email'] : null;
      storeAddress = json['store_address'] != null ? json['store_address'] : null;
      price = json['price'] != null ? double.parse('${json['price']}') : null;
      deliveryBoyName = json['dboy_name'] != null ? json['dboy_name'] : null;
      deliveryBoyPhone = json['dboy_phone'] != null ? json['dboy_phone'] : null;
      subTotal = json['sub_total'] != null ? double.parse('${json['sub_total']}') : null;
      currentLat = json['current_lat'] != null ? json['current_lat'] : null;
      currentLng = json['current_lng'] != null ? json['current_lng'] : null;
      placingTime = json['placing_time'] != null ? DateTime.parse(json['placing_time'].toString()) : null;
      confirmTime = json['confirm_time'] != null ? DateTime.parse(json['confirm_time'].toString()) : null;
      outForDeliveryTime = json['out_for_delivery_time'] != null ? DateTime.parse(json['out_for_delivery_time'].toString()) : null;
      completedTime = json['completed_time'] != null ? DateTime.parse(json['completed_time'].toString()) : null;
      cancelledTime = json['cancelled_time'] != null ? DateTime.parse(json['cancelled_time'].toString()) : null;
      estimatedTime = json['estimated_time'] != null ? json['estimated_time'] : null;
      pending = json['pending'] != null && json['pending'] == "true" ? true : false;
      confirm = json['confirm'] != null && json['confirm'] == "true" ? true : false;
      outForDelivery = json['out_for_delivery'] != null && json['out_for_delivery'] == "true" ? true : false;
      completed = json['completed'] != null && json['completed'] == "true" ? true : false;
      cancelled = json['cancelled'] != null && json['cancelled'] == "true" ? true : false;
      productList = json['data'] != null ? List<Product>.from(json['data'].map((x) => Product.fromJson(x))) : [];

      storeLat = json['store_lat'] != null ? double.parse(json['store_lat'].toString()) : null;
      storeLng = json['store_lng'] != null ? double.parse(json['store_lng'].toString()) : null;
      userLat = json['user_lat'] != null ? double.parse(json['user_lat'].toString()) : null;
      userLng = json['user_lng'] != null ? double.parse(json['user_lng'].toString()) : null;
    } catch (e) {
      print("Exception - orderModel.dart - Order.fromJson():" + e.toString());
    }
  }
}
