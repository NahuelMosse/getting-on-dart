import 'dart:io';
import 'package:getting_on_dart/getting_on_dart.dart' as getting_on_dart;

void main(List<String> arguments) {
  var name = 'Dart'; // infiere el tipo
  int age = 10; // tipo explicito int, bool, double, String
  String lastName = 'Lang'; // String con S mayuscula
  num height = 1.75; // num puede ser int o double, cambia segun el valor que tenga dentro, y es dinamico
  dynamic variableDinamica = 70; // dynamic puede cambiar de tipo en cualquier momento
  variableDinamica = 'ahora soy un String';
  final String country = 'USA'; // final no puede cambiar su valor despues de ser asignado
  const double pi = 3.1416; // const es una constante en tiempo de compilacion, se tiene que asignar en el momento de la declaracion

  String numberString = '100';
  int number = int.parse(numberString); // convierte String a int
  double backToDouble = number.toDouble(); // convierte int a double
  String backToString = number.toString(); // convierte int a String

  String interpolacion = 'Hola $name, tienes $age años y mides $height metros'; // interpolacion de variables en String
  String interpolacionCompleja = 'Hola ${name.toUpperCase()}, tienes ${age + 5} años y mides ${height * 100} cm'; // interpolacion con expresiones

  int resultadoDivision = 7 ~/ 2; // division entera (sin decimales)
  String divisionString = 7.5554.toStringAsFixed(2); // convierte double a String con 2 decimales (redondeando)

  print('Please enter your input:');
  // stdin de dart:io permite leer desde la consola
  String inputText = stdin.readLineSync() ?? ''; // lee una linea de la consola, si es null asigna cadena vacia
  print('You\'ve entered: $inputText');

  // if, switch, for, while, do-while son iguales a otros lenguajes
  int ternario = (age >= 18) ? 1 : 0; // operador ternario

  List<String> lista = ['Dart', 'Java', 'Kotlin']; // lista de Strings
  lista.add('Swift'); // agrega un elemento a la lista
  lista.removeAt(1); // elimina el elemento en la posicion 1 (Java)
  for (var lenguaje in lista) {
    print('Lenguaje: $lenguaje');
  }
  Set<int> conjunto = {1, 2, 3}; // conjunto de enteros (no permite duplicados)
  Map<String, int> mapa = {'uno': 1, 'dos': 2}; // mapa de String a int

  Persona persona = Persona('Juan', 30); // crea una instancia de la clase Persona
  persona.saludar(); // llama al metodo saludar de la clase Persona

  String? nullableString; // variable que puede ser null
  String nonNullableString = nullableString!; // variable que no puede ser null
  
  String? nullableString2; // variable que puede ser null
  nullableString2 ??= 'Ahora tiene un valor';

  print('Hello world: $name!');

  print('Hello world: ${getting_on_dart.calculate()}!');
}

class Persona {
  // clase con constructor y metodo
  String nombre;
  int edad;

  Persona(this.nombre, this.edad); // constructor

  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años');
  }
}
