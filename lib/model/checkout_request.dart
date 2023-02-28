class CheckoutRequest {
  int? amount;
  bool? editableAmount;
  int? installmentCount;
  String? transactionType;
  String? installmentType;
  int? orderId;
  String? returnScheme;

  CheckoutRequest({
    this.amount,
    this.editableAmount,
    this.installmentCount,
    this.transactionType,
    this.orderId,
    this.returnScheme,
  });

  CheckoutRequest.fromJson(Map<String?, dynamic> json) {
    amount = json['amount'];
    editableAmount = json['editableAmount'];
    installmentCount = json['installmentCount'];
    transactionType = json['transactionType'];
    orderId = json['orderId'];
    returnScheme = json['returnScheme'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = {};
    data['amount'] = amount;
    data['editableAmount'] = editableAmount;
    data['installmentCount'] = installmentCount;
    data['transactionType'] = transactionType;
    data['orderId'] = orderId;
    data['returnScheme'] = returnScheme;

    return data;
  }
}

class Item {
  String? sku;
  String? name;
  int? unitPrice;
  int? quantity;
  String? unitOfMeasure;

  Item({
    this.sku,
    this.name,
    this.unitPrice,
    this.quantity,
    this.unitOfMeasure,
  });

  Item.fromJson(Map<String?, dynamic> json) {
    sku = json['sku'];
    name = json['name'];
    unitPrice = json['unitPrice'];
    quantity = json['quantity'];
    unitOfMeasure = json['unitOfMeasure'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = {};
    data['sku'] = sku;
    data['name'] = name;
    data['unitPrice'] = unitPrice;
    data['quantity'] = quantity;
    data['unitOfMeasure'] = unitOfMeasure;
    return data;
  }
}
