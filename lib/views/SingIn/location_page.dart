import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  List<String> _locations = ['Banasree', 'Banasree1', 'Banasree2', 'Banasree3'];
  List<String> _locationsArea = [
    'Banasree4',
    'Banasree5',
    'Banasree22',
    'Banasree31'
  ];
  String? _selectedLocation;
  String? _selectedArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/MaskGroup2.png'),
              fit: BoxFit.cover),
        ),
        height: MediaQuery.of(context).size.height,
        //margin: EdgeInsets.only(left: 25.18, right: 24.52),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //margin: EdgeInsets.only(top: 119.8),
              margin: EdgeInsets.only(left: 25.18, right: 24.52),

              child: Center(
                child: Image.asset('assets/images/illustration.png'),
              ),
            ),
            // Container(
            //   child: Text('Select Your Location'),
            // ),
            Container(
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text('Select Your Location',
                            style: TextStyle(
                              fontSize: 26,
                              color: Color(0xff181725),
                            ))),
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                            'Swithch on your location to stay in tune with',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7C7C7C),
                            ))),
                    Text('what’s happening in your area',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7C7C7C),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 25.18, right: 24.52),
              margin: EdgeInsets.only(top: 89.35, left: 25.18, right: 24.52),
              child: Text('Your Zone',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff7C7C7C),
                  )),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 25.18, right: 24.52),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 10),
                      child: DropdownButtonFormField<String>(
                        hint: Text('Banasree',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            )), // Not necessary for Option 1
                        value: _selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLocation = newValue;
                          });
                        },
                        items: _locations.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                )),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text('Your Area',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff7C7C7C),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40.35, top: 10),
                      child: DropdownButtonFormField<String>(
                        hint: Text('Types of your area',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffB1B1B1),
                            )), // Not necessary for Option 1
                        value: _selectedArea,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedArea = newValue;
                          });
                        },
                        items: _locationsArea.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 25.18, right: 24.52)
              margin: EdgeInsets.only(bottom: 80.55, left: 25.18, right: 24.52),
              child: SizedBox(
                width: double.infinity,
                height: 67,
                child: SubmitButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        onChangeLogin(context);
      },
      child: Text(
        'Submit',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      color: Color(0xff53B175),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(23))),
    );
  }

  void onChangeLogin(BuildContext context) {
    Navigator.pushNamed(context, '/LoginPage');
  }
}
