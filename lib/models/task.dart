class Task {
  final String id;
  final String customerName;
  final String address;
  final DateTime time;
  final String contact;
  String status;

  Task({
    required this.id,
    required this.customerName,
    required this.address,
    required this.time,
    required this.contact,
    this.status = 'Assigned',
  });
}
