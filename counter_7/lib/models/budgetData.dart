class budgetData {
  static List<budgetData> budgets = [];
  String title;
  int amount;
  String type;
  DateTime date;

  budgetData({required this.title, required this.amount, required this.type, required this.date});
  static void addBudget({required title, required amount, required type, required date}) {
    budgets.add(budgetData(
      title: title,
      amount: amount,
      type: type,
      date: date,
    ));
  }
}
