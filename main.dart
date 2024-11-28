import 'dart:io';

void main() {
  const int seatsPerRow = 12;
  int seatRow;
  int seatNumber;
  int ticketPrice;
  int? ticketNumber;
  bool isTicketNumberValid = false;

  // Get ticket number from user and ensure only positive integers are accepted
  while (!isTicketNumberValid) {
    print("Bitte Ticketnummer eingeben.");
    String? input = stdin.readLineSync() ?? '';

    if ((int.tryParse(input) != null) && (int.parse(input) > 0)) {
      isTicketNumberValid = true;
      ticketNumber = int.parse(input);
    } else {
      print("Falsche Eingabe. Gebe eine gültige Ticketnummer ein." + "\n\n");
    }
  }

  seatRow = ((ticketNumber! - 1) ~/ seatsPerRow) + 1;
  seatNumber = ((ticketNumber - 1) % seatsPerRow) + 1;
  ticketPrice = (ticketNumber % 2) == 0 ? 15 : 12;

  // Print: The row of the seat, the seat number and the ticket price
  print("\n");
  print("TICKET-INFO für Ticketnummer $ticketNumber");
  print("Reihe: $seatRow");
  print("Platz: $seatNumber");
  print("Preis: $ticketPrice");
}