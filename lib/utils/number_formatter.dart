
class NumberFormatter {
  static String format(String text) {
    double parseNumber = double.parse(text);

    if ((parseNumber == parseNumber.floor()) && (parseNumber != double.infinity)) {
      return parseNumber.truncate().toString();

    }

    return text;
  }

}