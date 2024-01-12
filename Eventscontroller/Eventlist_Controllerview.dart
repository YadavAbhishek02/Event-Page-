import 'package:flutter/material.dart';
import 'package:untitled1/Eventscontroller/Eventdetails_Controllerview.dart';
List imageList=[
  {"id":1,"image_path": 'assets/image/Forum1.jpg'},
  {"id":1,"image_path": 'assets/image/forum3.jpg'},
  {"id":1,"image_path": 'assets/image/ForumIAS2.jpg'},
];

class Eventlist extends StatefulWidget {
  const Eventlist({super.key});

  @override
  State<Eventlist> createState() => _EventlistState();
}

class _EventlistState extends State<Eventlist> {
  String selectedCategory = "New"; // Track the selected category

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
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
                     width: 1,
                   )
                 ) ,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Event List",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "New";
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 95,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedCategory == "New"
                                ? Colors.blue
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "New",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: selectedCategory == "New"
                                ? Colors.black
                                : const Color.fromRGBO(88, 93, 108, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Registered";
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 95,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedCategory == "Registered"
                                ? Colors.blue
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Registered",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: selectedCategory == "Registered"
                                ? Colors.black
                                : const Color.fromRGBO(88, 93, 108, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = "Previous";
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 95,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: selectedCategory == "Previous"
                                ? Colors.blue
                                : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Previous",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: selectedCategory == "Previous"
                                ? Colors.black
                                : const Color.fromRGBO(88, 93, 108, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    )
                ) ,
              ),
            ),
            selectedCategory == "New"
                ? Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // You can customize the card's content based on the data in your list
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color.fromRGBO(189, 189, 189, 1)),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage(imageList[index % imageList.length]["image_path"]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 100,
                              height: 110,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: SizedBox(
                              height: 110,
                              width: width * 0.60,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Event Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                                    const Text(
                                      "Ac enim est felis aliquam dis. Lacus amet nulla morbi nulla.",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text('11th August, 2023'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              size: 17,
                                            ),
                                            Text('05:00 PM'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    SizedBox(
                                      height: 25,
                                      width: width * 0.66,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Eventdetails()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          backgroundColor: Colors.blue,
                                        ),
                                        child: const Text(
                                          "Register Now",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
                : Container(), // Hidden when not "New" category
            selectedCategory == "Registered"
                ? Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // You can customize the card's content based on the data in your list
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(imageList[index % imageList.length]["image_path"]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 100,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: SizedBox(
                              height: 120,
                              width: width * 0.60,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Event Name",style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1),fontWeight: FontWeight.w600),),
                                    const Text(
                                      "Ac enim est felis aliquam dis. Lacus amet nulla morbi nulla.",
                                      style: TextStyle(fontSize: 9,color:Color.fromRGBO(51, 51, 51, 1),),
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text('11th August, 2023',style: TextStyle(color: Color.fromRGBO(88, 93, 108, 1)),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              size: 17,
                                            ),
                                            Text('05:00 PM'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Order ID: #34TGB7776B",style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    SizedBox(
                                      height: 25,
                                      width: width * 0.66,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          backgroundColor: Colors.green,
                                        ),
                                        child: const Text(
                                          "Registered",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
                : Container(), // Hidden when not "Registered" category
            selectedCategory == "Previous"
                ? Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // You can customize the card's content based on the data in your list
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(imageList[index % imageList.length]["image_path"]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: 100,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: SizedBox(
                              height: 120,
                              width: width * 0.60,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Event Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                                    const Text(
                                      "Ac enim est felis aliquam dis. Lacus amet nulla morbi nulla.",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text('11th August, 2023'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              size: 17,
                                            ),
                                            Text('05:00 PM'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Order ID: #34TGB7776B",style: TextStyle(fontSize: 10),),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    SizedBox(
                                      height: 25,
                                      width: width * 0.66,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          backgroundColor: const Color.fromRGBO(151, 151, 151, 1),
                                        ),
                                        child: const Text(
                                          "Expired",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
                : Container(),
          ],
        ),
    );
  }
}

