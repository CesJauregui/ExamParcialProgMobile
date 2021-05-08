import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen Parcial - Jauregui César',
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.grey[400],
              ),
              Panel(),
              Container(
                margin: EdgeInsets.only(
                  top: 255,
                  left: 5,
                ),
                color: Colors.grey[200],
                width: 385,
                height: 510,
              ),
              IndexForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class Panel extends StatelessWidget {
  const Panel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            padding: EdgeInsets.only(right: 1),
            child: Icon(
              FontAwesomeIcons.solidImage,
              color: Colors.white,
              size: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/imagen.png',
                fit: BoxFit.scaleDown,
                scale: 5,
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lacey Fernandez",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.userEdit,
                  color: Colors.white,
                  size: 15.0,
                ),
              )
            ],
          )
        ],
      ),
      height: 250,
      width: 390,
      margin: EdgeInsets.all(5),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        color: Colors.white,
        gradient: LinearGradient(
          colors: [Colors.pink[800], Colors.purple[700]],
          stops: [0.2, 0.7],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
    );
  }
}

class IndexForm extends StatelessWidget {
  const IndexForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Center(
            child: Text(
              "User profile",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "User name",
            style: TextStyle(color: Colors.purple[700]),
          ),
          InputUser(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Email Id",
            style: TextStyle(color: Colors.purple[700]),
          ),
          InputEmail(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Mobile Number",
            style: TextStyle(color: Colors.purple[700]),
          ),
          InputPhone(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Date of Birth",
            style: TextStyle(color: Colors.purple[700]),
          ),
          InputDate(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sex",
            style: TextStyle(color: Colors.purple[700]),
          ),
          SwitchSex(),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple[700],
            ),
            onPressed: () {},
            child: Text('SAVE'),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 200,
        left: 20,
      ),
      color: Colors.white,
      width: 360,
      height: 500,
    );
  }
}

class SwitchSex extends StatefulWidget {
  const SwitchSex({
    Key key,
  }) : super(key: key);

  @override
  _SwitchSexState createState() => _SwitchSexState();
}

class _SwitchSexState extends State<SwitchSex> {
  bool isSwitchedMale = false;
  bool isSwitchedFemale = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: isSwitchedMale,
          onChanged: (value) {
            setState(() {
              isSwitchedMale = value;
              selectSexMale(context);
            });
          },
          activeTrackColor: Colors.purple[700],
          activeColor: Colors.white60,
        ),
        Text("Male"),
        Switch(
          value: isSwitchedFemale,
          onChanged: (value) {
            setState(() {
              isSwitchedFemale = value;
              selectSexFemale(context);
            });
          },
          activeTrackColor: Colors.purple[700],
          activeColor: Colors.white60,
        ),
        Text("Female"),
      ],
    );
  }

  void selectSexMale(BuildContext context) {
    if (isSwitchedMale == true) {
      isSwitchedFemale = false;
    }
  }

  void selectSexFemale(BuildContext context) {
    if (isSwitchedFemale == true) {
      isSwitchedMale = false;
    }
  }
}

class InputPhone extends StatefulWidget {
  const InputPhone({
    Key key,
  }) : super(key: key);

  @override
  _InputPhoneState createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.phone_iphone,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Mobile number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputEmail extends StatefulWidget {
  const InputEmail({
    Key key,
  }) : super(key: key);

  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Enter email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputUser extends StatefulWidget {
  const InputUser({
    Key key,
  }) : super(key: key);

  @override
  _InputUserState createState() => _InputUserState();
}

class _InputUserState extends State<InputUser> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.userCircle,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Enter User Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputDate extends StatefulWidget {
  const InputDate({
    Key key,
  }) : super(key: key);

  @override
  _InputDateState createState() => _InputDateState();
}

class _InputDateState extends State<InputDate> {
  String fecha = '';
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.calendarAlt,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: '${fecha.toString()}',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onTap: () {
        //Para que no se muestre el teclado al momento de mandar el calendario
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2010),
      initialDate: DateTime.now(),
    );

    if (date != null) {
      setState(() {
        fecha = date.toString();
        textController.text = fecha;
      });
    }
  }
}
