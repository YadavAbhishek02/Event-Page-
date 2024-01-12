import 'package:flutter/material.dart';
import 'package:untitled1/Eventscontroller/Eventdetails_Controllerview.dart';
import 'package:untitled1/Eventscontroller/Eventdone.dart';
import 'package:intl/intl.dart';

final nameController = TextEditingController();
final emailController = TextEditingController();
final phoneController = TextEditingController();
final dobController = TextEditingController();
DateTime? selectedDate; // Store the selected date
bool isValidEmail(String email) {
  final emailRegex =
  RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  return emailRegex.hasMatch(email);
}
bool isValidPhoneNumber(String phone) {
  final phoneRegex = RegExp(r'^\d{10}$');
  return phoneRegex.hasMatch(phone);
}
class Eventregistration extends StatefulWidget {
  const Eventregistration({super.key});

  @override
  State<Eventregistration> createState() => _EventregistrationState();
}

class _EventregistrationState extends State<Eventregistration> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    ))!;
    if (picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dobController.text = DateFormat('yyyy-MM-dd').format(selectedDate!);  // Update the controller
      });
    }
  }
  @override
  void initState() {
    super.initState();
    // Clear text in the text fields when the page is visited.
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    dobController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border:Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )
                  ) ,
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      iconSize: 100,
                      icon:  const Icon(
                        Icons.arrow_back,size: 30,),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Eventdetails()));
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Event details",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/image/Rectangle 18946.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  height: 165,
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 115,
                                child:  Container(
                                  height: 80,
                                  width: 85,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.pink.shade100,
                                  ),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Aug",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                                      Text("11",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                ),),
                              const Positioned(
                                left: 320,
                                top: 180,
                                child:  Text("₹ 299",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.group_outlined,color: Colors.red,),
                                  SizedBox(width: 5,),
                                  Text("1500+ Students")
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("05:00 PM",style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 4,),
                                  Text("|",style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 4,),
                                  Text("Online",style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(247, 150, 51, 0.4),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [Text("Event Name ",style: TextStyle(fontWeight: FontWeight.bold),)],
                                  ),
                                  Row(
                                    children: [Text('Lorem Ipsum lorem ipsum',style: TextStyle(fontWeight: FontWeight.bold),)],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Row(
                            children: [
                              Text("Registration Form",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Row(
                              children: [
                                Text("Please fill up the form to complete the registration.",style: TextStyle(fontSize: 12),)
                              ],
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 25),
                          child:SizedBox(
                            height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),),
                                        labelText: 'Name',
                                        hintText: 'Enter Name',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),),
                                        labelText: 'Email id',
                                        hintText: 'Enter Email id',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextField(
                                      controller: phoneController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),),
                                        labelText: 'Phone number',
                                        hintText: 'Enter Phone number',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),),
                                        labelText: 'City',
                                        hintText: 'Enter City',
                                          suffixIcon: const Icon(Icons.arrow_drop_down)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: double.infinity,
                                    child: TextField(
                                      controller: dobController,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        labelText: 'Date of Birth',
                                        hintText: 'Enter DOB',
                                          suffixIcon: GestureDetector(
                                              onTap: () {
                                                _selectDate(context); // Show date picker
                                              },
                                              child: const Icon(Icons.calendar_today_outlined)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: SizedBox(
                height: 35,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (nameController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Name is reqiured'),
                        ),
                      );
                    } else
                      if( !isValidEmail(emailController.text)){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Enter valid Email id'),
                          ),
                        );
                      } else
                        if(!isValidPhoneNumber(phoneController.text)){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Enter valid Phone number'),
                            ),
                          );
                        }
                        else
                          if( dobController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Enter DOB'),
                              ),
                            );
                          } else {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Eventdone()));
                          }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Register Now - INR 299",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
