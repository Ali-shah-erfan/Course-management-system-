import '../homeScreen/home_screen.dart';
import '../seniorScreen/constants.dart';
import 'package:flutter/material.dart';
import 'custom_buttons.dart';


late bool _passwordvisible;

class LoginScreen extends StatefulWidget{
    static String routeName = 'LoginScreen';
@override
_LoginScreenState createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen>{
  final _formKey = GlobalKey();

@override
 void initState(){
  super.initState();
  _passwordvisible = true;
 }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // appBar: AppBar(
        //    title: Center(child: Text('Login',style:TextStyle(fontWeight:FontWeight.w600))),
        // ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.8,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/seniorSchool.png',
                 height: 150,  
                 width: 150,
                ),
                SizedBox(height: kDefultPadding/2,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                  Text('Hi ', style: TextStyle(
                      color: Colors.white,
                       fontSize: 20,
                  )),
                  Text('Student',  style: TextStyle(
                    fontSize: 20,
                  color: Colors.white,
                ),),
                  ],
                ),
                 SizedBox(
                   height: kDefultPadding/6,
                    ),
               Text('Sign in to continue',style: TextStyle(
                    fontSize: 20,
                  color: Color.fromARGB(255, 254, 252, 255),
                ),),
            ],
           ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(kDefultPadding*3),
                 topRight: Radius.circular(kDefultPadding*3),
                ),
                 color: kOtherColor,
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                           sizedBox,
                    buildEmailField(),
                      sizedBox,

                     buildPasswordField(),
                     sizedBox,
                      DefultButton(
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                          
                        },
                          title: 'SIGN IN',
                          iconData: Icons.arrow_forward_outlined,

                      ),
                       sizedBox,
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forget Password',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),  
                  ],
                 ),
                
             ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
              color: kTextBlackColor,
              fontSize: 17,
              fontWeight: FontWeight.w300
              ),
              decoration: InputDecoration(
              labelText: 'Mobile Number/Email',
              floatingLabelBehavior:FloatingLabelBehavior.always,
              isDense: true,
              
            
              ),
              validator:(value){
                RegExp regExp = new RegExp(emailPattern);
                if (value == null || value.isEmpty) {
                  return 'please enter some text';
                }else if(!regExp.hasMatch(value)){
                    return 'please enter a valid email address';
                }
              },
            );
  }
  TextFormField buildPasswordField() {
    return TextFormField(
           obscureText: _passwordvisible,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(
            color: kTextBlackColor,
            fontSize: 17,
            fontWeight: FontWeight.w300
            ),
            decoration: InputDecoration(
            labelText: 'Password',
            floatingLabelBehavior:FloatingLabelBehavior.always,
            isDense: true,
            suffixIcon: IconButton(
              icon:Icon(
                  _passwordvisible ? Icons.visibility_off_outlined 
                  : Icons.visibility_off_outlined,
                  
                ),
             onPressed: (){
                setState(() {
                  _passwordvisible =  !_passwordvisible;
                });
             }
              ),
            
            ),
            validator: (value){
              if(value!.length < 5){
                return 'must be more than 5 characters';
        }
        iconsize: kDefultPadding;
      }
    );
  }
}



                
              