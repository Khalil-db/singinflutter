import 'package:flutter/material.dart';
import 'package:gestion_docs_fpo/Common_Compenents/text_field_container.dart';
import '../constants.dart';



class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {

    
    return TextFieldContainer(
      
       child: TextField(
        obscureText:true, 
        decoration: InputDecoration(
            hintText: "Entez votre mot de passe",
            labelText: "mot de passe",
            
            prefixIcon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon:IconButton(
              onPressed: (){},
              icon:  Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ), 
              

            ),
            border: InputBorder.none
        ),
        onChanged: onChanged,
      ),
    );
  }
}