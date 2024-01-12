import 'package:flutter/material.dart';
import 'package:untitled1/Eventscontroller/Eventlist_Controllerview.dart';

class Eventdone extends StatefulWidget {
  const Eventdone({super.key});

  @override
  State<Eventdone> createState() => _EventdoneState();
}

class _EventdoneState extends State<Eventdone> {
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Eventlist()));
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
                        Container(
                          height: 200,
                          width: double.infinity,
                          color: Colors.cyan,
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
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child: Text("Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. ",
                            style: TextStyle(fontSize: 12),),
                        ),
                        const SizedBox(height: 5,),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child: Text("Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. ",
                            style: TextStyle(fontSize: 12),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. Lorem ipsum dolor sit amet consectetur. Tortor consectetur quis non eu senectus. "),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("About Instructor",style: TextStyle(color: Colors.grey.shade800),),
                              const SizedBox(height: 5,),
                              const Text("Trivia Simon",style: TextStyle(fontWeight: FontWeight.bold),),
                              const Text("General Science Assistant Professor",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            height: 35,
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: const Color.fromRGBO(0, 168, 90, 1),
                              ),
                              child: const Text(
                                "Registerd",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
