import 'package:finance_app/ui_components/ui_kit.dart';
import 'package:flutter/material.dart';

class CreateDepositPage extends StatefulWidget {
  const CreateDepositPage({super.key});

  @override
  State<CreateDepositPage> createState() => _CreateDepositPageState();
}

class _CreateDepositPageState extends State<CreateDepositPage> {
  List<Widget> _depositWidgets = [];

  _createDeposit() {
    setState(() {
      _depositWidgets.add(
        CreateDepositWidget(
          key: UniqueKey(),
        ),
      );
    });
  }

  @override
  void initState() {
    _createDeposit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(
        title: 'Создание Депозита',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Создайте свои депозиты для накопления',
              style: AppTextTheme.bodyText1
                  .copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(height: 20),
            const CreateDepositWidget(),
            const SizedBox(height: 20),
            AppButon(
              showBorder: true,
              onTap: _createDeposit,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.accentColor,
                    child: Icon(
                      Icons.add,
                      color: AppColors.textColor,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Добавить депозит',
                    style: AppTextTheme.bodyText3
                        .copyWith(color: AppColors.textColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            AppButon(
              backgoundColor: AppColors.primaryColor,
              child: Text(
                'Продолжить',
                style:
                    AppTextTheme.bodyText2.copyWith(color: AppColors.textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateDepositWidget extends StatefulWidget {
  const CreateDepositWidget({super.key});

  @override
  State<CreateDepositWidget> createState() => _CreateDepositWidgetState();
}

class _CreateDepositWidgetState extends State<CreateDepositWidget> {
  late TextEditingController _depositNameController;
  late TextEditingController _depositDescriptionController;
  late TextEditingController _depositSumController;

  @override
  void initState() {
    _depositNameController = TextEditingController();
    _depositDescriptionController = TextEditingController();
    _depositSumController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _depositNameController.dispose();
    _depositSumController.dispose();
    _depositDescriptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          label: 'Названия депозита',
          controller: _depositNameController,
        ),
        Text(
          'Опишите для чего он вам нужен',
          style: AppTextTheme.bodyText1.copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(height: 20),
        CustomTextField(
          label: 'Описания',
          controller: _depositNameController,
          maxLines: 3,
        ),
        const SizedBox(height: 20),
        Text(
          'Ввидите нужную сумму',
          style: AppTextTheme.bodyText1.copyWith(color: AppColors.primaryColor),
        ),
        CustomTextField(
          label: 'Сумма',
          controller: _depositNameController,
        ),
      ],
    );
  }
}
