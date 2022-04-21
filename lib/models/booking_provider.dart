class BookingDetals {
  final String? name;
  final String? number;
  final String? adults;
  final String? child;

  BookingDetals({this.name, this.number, this.adults, this.child});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone_number': number,
      'no_adults': adults,
      'no_child': child,
    };
  }
}
