import 'package:finance_app/core/model/model.dart';

class DepositModel extends Model{
  final String name;
  final String description;
  final double amount;
  final int id;
  DepositModel({
    required this.name,
    required this.description,
    required this.id,
    required this.amount,
  });
  
  @override
   @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'amount': amount,
    };
  }

  factory DepositModel.fromMap(Map<String, dynamic> map) {
    return DepositModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      amount: map['amount'],
    );
  }
}
