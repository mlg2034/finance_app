import 'package:finance_app/core/db/data_base_helper.dart';
import 'package:finance_app/feature/deposit/domain/model/deposit_model.dart';

class DepositRepository {
  final LocaleDataBase _localeDataBase;
  DepositRepository(this._localeDataBase);

  Future<int> insertDeposit(DepositModel deposit) async {
    final db = await _localeDataBase.dataBase;
    return await db.insert('deposits', deposit.toMap());
  }

  Future<List<DepositModel>> getAllDeposits() async {
    final db = await _localeDataBase.dataBase;
    final List<Map<String, dynamic>> listOfDeposit = await db.query('deposits');
    return List.generate(listOfDeposit.length, (i) {
      return DepositModel.fromMap(listOfDeposit[i]);
    });
  }

  Future<int> updateDeposit(DepositModel deposit) async {
    final db = await _localeDataBase.dataBase;
    return await db.update(
      'deposits',
      deposit.toMap(),
      where: 'id = ?',
      whereArgs: [deposit.id],
    );
  }

  Future<int> deleteDeposit(int id) async {
    final db = await _localeDataBase.dataBase;
    return await db.delete(
      'deposits',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  
}
