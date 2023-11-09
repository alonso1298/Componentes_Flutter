import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  //Propiedad a la cuel yo quiero manejar de mi formulario
  final String formProperty;
  //Formulaario que yo quiero manejar 
  final Map<String, String> formValues;

  const CustomInputField({
    super.key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.sufixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //Inmediatamente sale el teclado
      autofocus: true,
      initialValue: '',
      //Agrega mayusculas en cada palabra que escribamos 
      textCapitalization: TextCapitalization.words,
      //Camabia la forma del teclado
      keyboardType: keyboardType,
      //En las contraseñas no se ve el texto
      obscureText: obscureText,
      //Capturamos el valor que el usuario nos esta mandando 
      onChanged: (value) => formValues[formProperty] = value,
      
      validator: (value) {
        if ( value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      //Hasta que la persona empiece a escribir aparecera el mensaje 
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefix: Icon(Icons.verified_user_outlined),
        suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}