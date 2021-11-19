import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  Home({required this.title}) : super();

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late List data;

  // Function to get the JSON data
  Future<String> getJSONData() async {
  print("fetch");
    final response = await http
      .get(Uri.parse('https://api.covidtracking.com/v1/states/current.json'));
    print(response.body);


    setState(() {
      print("set");
      // Get the JSON data
      data = json.decode(response.body)['results'];
      print(data);
    });

    return "Successfull";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (context, item) {
        return _buildRow(item);
      }
    );
  }


  Widget _buildRow(dynamic item) {
    return ListTile(
      title: Text(
        item['state'] == null ? '': item['state'],
      ),
      subtitle: Text("state: " + item['state']),
    );
  }
  @override
  void initState() {
    super.initState();
    // Call the getJSONData() method when the app initializes
    this.getJSONData();
  }
}

class States {
  int date;
  String state;
  int positive;
  String probableCases;
  String negative;
  String pending;
  String totalTestResultsSource;
  int totalTestResults;
  int hospitalizedCurrently;
  int hospitalizedCumulative;
  String inIcuCurrently;
  String inIcuCumulative;
  int onVentilatorCurrently;
  String onVentilatorCumulative;
  String recovered;
  String lastUpdateEt;
  String dateModified;
  String checkTimeEt;
  int death;
  int hospitalized;
  String hospitalizedDischarged;
  String dateChecked;
  int totalTestsViral;
  int positiveTestsViral;
  int negativeTestsViral;
  String positiveCasesViral;
  String deathConfirmed;
  String deathProbable;
  String totalTestEncountersViral;
  String totalTestsPeopleViral;
  String totalTestsAntibody;
  String positiveTestsAntibody;
  String negativeTestsAntibody;
  String totalTestsPeopleAntibody;
  String positiveTestsPeopleAntibody;
  String negativeTestsPeopleAntibody;
  String totalTestsPeopleAntigen;
  String positiveTestsPeopleAntigen;
  String totalTestsAntigen;
  String positiveTestsAntigen;
  String fips;
  int positiveIncrease;
  int negativeIncrease;
  int total;
  int totalTestResultsIncrease;
  int posNeg;
  String dataQualityGrade;
  int deathIncrease;
  int hospitalizedIncrease;
  String hash;
  int commercialScore;
  int negativeRegularScore;
  int negativeScore;
  int positiveScore;
  int score;
  String grade;

  States(
      {required this.date,
      required this.state,
      required this.positive,
      required this.probableCases,
      required this.negative,
      required this.pending,
      required this.totalTestResultsSource,
      required this.totalTestResults,
      required this.hospitalizedCurrently,
      required this.hospitalizedCumulative,
      required this.inIcuCurrently,
      required this.inIcuCumulative,
      required this.onVentilatorCurrently,
      required this.onVentilatorCumulative,
      required this.recovered,
      required this.lastUpdateEt,
      required this.dateModified,
      required this.checkTimeEt,
      required this.death,
      required this.hospitalized,
      required this.hospitalizedDischarged,
      required this.dateChecked,
      required this.totalTestsViral,
      required this.positiveTestsViral,
      required this.negativeTestsViral,
      required this.positiveCasesViral,
      required this.deathConfirmed,
      required this.deathProbable,
      required this.totalTestEncountersViral,
      required this.totalTestsPeopleViral,
      required this.totalTestsAntibody,
      required this.positiveTestsAntibody,
      required this.negativeTestsAntibody,
      required this.totalTestsPeopleAntibody,
      required this.positiveTestsPeopleAntibody,
      required this.negativeTestsPeopleAntibody,
      required this.totalTestsPeopleAntigen,
      required this.positiveTestsPeopleAntigen,
      required this.totalTestsAntigen,
      required this.positiveTestsAntigen,
      required this.fips,
      required this.positiveIncrease,
      required this.negativeIncrease,
      required this.total,
      required this.totalTestResultsIncrease,
      required this.posNeg,
      required this.dataQualityGrade,
      required this.deathIncrease,
      required this.hospitalizedIncrease,
      required this.hash,
      required this.commercialScore,
      required this.negativeRegularScore,
      required this.negativeScore,
      required this.positiveScore,
      required this.score,
      required this.grade
    });

  factory States.fromJson(Map<String, dynamic> json) {
    return States(
    date : json['date'],
    state : json['state'],
    positive : json['positive'],
    probableCases : json['probableCases'],
    negative : json['negative'],
    pending : json['pending'],
    totalTestResultsSource : json['totalTestResultsSource'],
    totalTestResults : json['totalTestResults'],
    hospitalizedCurrently : json['hospitalizedCurrently'],
    hospitalizedCumulative : json['hospitalizedCumulative'],
    inIcuCurrently : json['inIcuCurrently'],
    inIcuCumulative : json['inIcuCumulative'],
    onVentilatorCurrently : json['onVentilatorCurrently'],
    onVentilatorCumulative : json['onVentilatorCumulative'],
    recovered : json['recovered'],
    lastUpdateEt : json['lastUpdateEt'],
    dateModified : json['dateModified'],
    checkTimeEt : json['checkTimeEt'],
    death : json['death'],
    hospitalized : json['hospitalized'],
    hospitalizedDischarged : json['hospitalizedDischarged'],
    dateChecked : json['dateChecked'],
    totalTestsViral : json['totalTestsViral'],
    positiveTestsViral : json['positiveTestsViral'],
    negativeTestsViral : json['negativeTestsViral'],
    positiveCasesViral : json['positiveCasesViral'],
    deathConfirmed : json['deathConfirmed'],
    deathProbable : json['deathProbable'],
    totalTestEncountersViral : json['totalTestEncountersViral'],
    totalTestsPeopleViral : json['totalTestsPeopleViral'],
    totalTestsAntibody : json['totalTestsAntibody'],
    positiveTestsAntibody : json['positiveTestsAntibody'],
    negativeTestsAntibody : json['negativeTestsAntibody'],
    totalTestsPeopleAntibody : json['totalTestsPeopleAntibody'],
    positiveTestsPeopleAntibody : json['positiveTestsPeopleAntibody'],
    negativeTestsPeopleAntibody : json['negativeTestsPeopleAntibody'],
    totalTestsPeopleAntigen : json['totalTestsPeopleAntigen'],
    positiveTestsPeopleAntigen : json['positiveTestsPeopleAntigen'],
    totalTestsAntigen : json['totalTestsAntigen'],
    positiveTestsAntigen : json['positiveTestsAntigen'],
    fips : json['fips'],
    positiveIncrease : json['positiveIncrease'],
    negativeIncrease : json['negativeIncrease'],
    total : json['total'],
    totalTestResultsIncrease : json['totalTestResultsIncrease'],
    posNeg : json['posNeg'],
    dataQualityGrade : json['dataQualityGrade'],
    deathIncrease : json['deathIncrease'],
    hospitalizedIncrease : json['hospitalizedIncrease'],
    hash : json['hash'],
    commercialScore : json['commercialScore'],
    negativeRegularScore : json['negativeRegularScore'],
    negativeScore : json['negativeScore'],
    positiveScore : json['positiveScore'],
    score : json['score'],
    grade : json['grade']
    );
  }

}













// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// class home extends StatefulWidget {
//   const home({ Key? key }) : super(key: key);

//   @override
//   _homeState createState() => _homeState();
// }

// class _homeState extends State<home> {
//   final String apiURL = 'https://api.covidtracking.com/v1/states/current.json';


//   Future<List<States>> fetchJSONData() async {
//     print("fetch");
//     final response = await http
//       .get(Uri.parse('https://api.covidtracking.com/v1/states/current.json'));

//   //   if (response.statusCode == 200) {
//   //     print("response1234");


     
//   //   //  List  data = json.decode(response.body);

//   //   //  print(data);
  
 
//   //     // final jsonItems = json.decode(response.body).cast<List<dynamic>>();
//   //     final jsonItems = json.decode(response.body);
//   //     print(jsonItems);
      
//   //     List<states> usersList=[];
//   //     print("object");
//   //     for(var data in jsonDecode(response.body) as List) {
//   //       print("list");
//   //       // print(usersList[1].state);
//   //       print(data['state']);
//   //     }
     

//   // //     Map<String, dynamic> map = json.decode(response.body);
//   // //     List<dynamic> data = map["states"];
//   // //  print(data[1]["state"]);
   
 
//   //   // List<states> usersList = jsonItems.List<states>((json) {
//   //   //     print("data");
//   //   //     return states.fromJson(json);
//   //   //   }).toList();
//   //   //   print(usersList);
 
//   //     return usersList;
    
//   //   } 

//       if (response.statusCode == 200) {
 
//       final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();
//       print(jsonItems);
// //  print("List Size: ${jsonItems.length}");
//       List<States> usersList = jsonItems.map<States>((json) {
//         return States.fromJson(json);
//       }).toList();

//       return usersList;
    
//     } 
      
    
//     else {
//       print("error");
//       throw Exception('Failed to load data from internet');
//     }
    
//   }


  
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue[100],
//         title: Text('displaying Data'),
  
//       ),
//       // body:_buildListView(),
      
//       // body:Container(
//       //   child: FutureBuilder(
//       //     future: fetchJSONData(),
//       //     builder: (BuildContext context,AsyncSnapshot snapshot)
//       //     {
//       //       if(snapshot.data == null){
//       //         return Container(
//       //           child: Center(
//       //             child: CircularProgressIndicator(),
                  
//       //           ),
//       //         );
//       //       }
//       //       else{
//       //         return ListView.builder(
//       //           itemCount: snapshot.data.length,
//       //           itemBuilder: (BuildContext context,int index)
//       //           {
//       //             return ListTile(
//       //               title: Text(snapshot.data[index].state),
//       //             );
//       //           }
//       //           );
//       //       }
            
//       //     }
//       //   ),
//       // )
  
// //       body: FutureBuilder<List<States>>(
// //         future: fetchJSONData(),
// //         builder: (context, snapshot) {
 
        
         
// //  if(!snapshot.hasData){
// //       ListView(
// //             children: snapshot.data!
// //             .map((j) => 
            
// //             Card(
// //               child: ListTile(
// //                     title: Text(j.state.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
// //                     // onTap: (){ 
// //                     //   print(states.state); 
// //                     // },
// //                     subtitle: Text(j.totalTestsPeopleAntigen.toString(),style: TextStyle(fontSize: 18),),
// //                     trailing: Icon(Icons.arrow_forward),
// //                   ),
// //             ),
// //               )
// //             .toList(),
// //           );


// //  }else{
// //    Text("data");
// //  }
   
 
       
// //  return Center(child: Text(snapshot.data.toString()));
// //         },
// //       ),
//     );
//   }
// }

// // Widget _buildListView() {
// //     return ListView.builder(
// //       padding: const EdgeInsets.all(16.0),
// //       itemCount: json == null ? 0 : json.length,
// //       itemBuilder: (context, index) {
// //         // return _buildImageColumn(json[index]);
// //         // return _buildRow(data[index]);
// //       }
// //     );
// //   }

// class States {
//   int date;
//   String state;
//   int positive;
//   String probableCases;
//   String negative;
//   String pending;
//   String totalTestResultsSource;
//   int totalTestResults;
//   int hospitalizedCurrently;
//   int hospitalizedCumulative;
//   String inIcuCurrently;
//   String inIcuCumulative;
//   int onVentilatorCurrently;
//   String onVentilatorCumulative;
//   String recovered;
//   String lastUpdateEt;
//   String dateModified;
//   String checkTimeEt;
//   int death;
//   int hospitalized;
//   String hospitalizedDischarged;
//   String dateChecked;
//   int totalTestsViral;
//   int positiveTestsViral;
//   int negativeTestsViral;
//   String positiveCasesViral;
//   String deathConfirmed;
//   String deathProbable;
//   String totalTestEncountersViral;
//   String totalTestsPeopleViral;
//   String totalTestsAntibody;
//   String positiveTestsAntibody;
//   String negativeTestsAntibody;
//   String totalTestsPeopleAntibody;
//   String positiveTestsPeopleAntibody;
//   String negativeTestsPeopleAntibody;
//   String totalTestsPeopleAntigen;
//   String positiveTestsPeopleAntigen;
//   String totalTestsAntigen;
//   String positiveTestsAntigen;
//   String fips;
//   int positiveIncrease;
//   int negativeIncrease;
//   int total;
//   int totalTestResultsIncrease;
//   int posNeg;
//   String dataQualityGrade;
//   int deathIncrease;
//   int hospitalizedIncrease;
//   String hash;
//   int commercialScore;
//   int negativeRegularScore;
//   int negativeScore;
//   int positiveScore;
//   int score;
//   String grade;

//   States(
//       {required this.date,
//       required this.state,
//       required this.positive,
//       required this.probableCases,
//       required this.negative,
//       required this.pending,
//       required this.totalTestResultsSource,
//       required this.totalTestResults,
//       required this.hospitalizedCurrently,
//       required this.hospitalizedCumulative,
//       required this.inIcuCurrently,
//       required this.inIcuCumulative,
//       required this.onVentilatorCurrently,
//       required this.onVentilatorCumulative,
//       required this.recovered,
//       required this.lastUpdateEt,
//       required this.dateModified,
//       required this.checkTimeEt,
//       required this.death,
//       required this.hospitalized,
//       required this.hospitalizedDischarged,
//       required this.dateChecked,
//       required this.totalTestsViral,
//       required this.positiveTestsViral,
//       required this.negativeTestsViral,
//       required this.positiveCasesViral,
//       required this.deathConfirmed,
//       required this.deathProbable,
//       required this.totalTestEncountersViral,
//       required this.totalTestsPeopleViral,
//       required this.totalTestsAntibody,
//       required this.positiveTestsAntibody,
//       required this.negativeTestsAntibody,
//       required this.totalTestsPeopleAntibody,
//       required this.positiveTestsPeopleAntibody,
//       required this.negativeTestsPeopleAntibody,
//       required this.totalTestsPeopleAntigen,
//       required this.positiveTestsPeopleAntigen,
//       required this.totalTestsAntigen,
//       required this.positiveTestsAntigen,
//       required this.fips,
//       required this.positiveIncrease,
//       required this.negativeIncrease,
//       required this.total,
//       required this.totalTestResultsIncrease,
//       required this.posNeg,
//       required this.dataQualityGrade,
//       required this.deathIncrease,
//       required this.hospitalizedIncrease,
//       required this.hash,
//       required this.commercialScore,
//       required this.negativeRegularScore,
//       required this.negativeScore,
//       required this.positiveScore,
//       required this.score,
//       required this.grade
//     });

//   factory States.fromJson(Map<String, dynamic> json) {
//     return States(
//     date : json['date'],
//     state : json['state'],
//     positive : json['positive'],
//     probableCases : json['probableCases'],
//     negative : json['negative'],
//     pending : json['pending'],
//     totalTestResultsSource : json['totalTestResultsSource'],
//     totalTestResults : json['totalTestResults'],
//     hospitalizedCurrently : json['hospitalizedCurrently'],
//     hospitalizedCumulative : json['hospitalizedCumulative'],
//     inIcuCurrently : json['inIcuCurrently'],
//     inIcuCumulative : json['inIcuCumulative'],
//     onVentilatorCurrently : json['onVentilatorCurrently'],
//     onVentilatorCumulative : json['onVentilatorCumulative'],
//     recovered : json['recovered'],
//     lastUpdateEt : json['lastUpdateEt'],
//     dateModified : json['dateModified'],
//     checkTimeEt : json['checkTimeEt'],
//     death : json['death'],
//     hospitalized : json['hospitalized'],
//     hospitalizedDischarged : json['hospitalizedDischarged'],
//     dateChecked : json['dateChecked'],
//     totalTestsViral : json['totalTestsViral'],
//     positiveTestsViral : json['positiveTestsViral'],
//     negativeTestsViral : json['negativeTestsViral'],
//     positiveCasesViral : json['positiveCasesViral'],
//     deathConfirmed : json['deathConfirmed'],
//     deathProbable : json['deathProbable'],
//     totalTestEncountersViral : json['totalTestEncountersViral'],
//     totalTestsPeopleViral : json['totalTestsPeopleViral'],
//     totalTestsAntibody : json['totalTestsAntibody'],
//     positiveTestsAntibody : json['positiveTestsAntibody'],
//     negativeTestsAntibody : json['negativeTestsAntibody'],
//     totalTestsPeopleAntibody : json['totalTestsPeopleAntibody'],
//     positiveTestsPeopleAntibody : json['positiveTestsPeopleAntibody'],
//     negativeTestsPeopleAntibody : json['negativeTestsPeopleAntibody'],
//     totalTestsPeopleAntigen : json['totalTestsPeopleAntigen'],
//     positiveTestsPeopleAntigen : json['positiveTestsPeopleAntigen'],
//     totalTestsAntigen : json['totalTestsAntigen'],
//     positiveTestsAntigen : json['positiveTestsAntigen'],
//     fips : json['fips'],
//     positiveIncrease : json['positiveIncrease'],
//     negativeIncrease : json['negativeIncrease'],
//     total : json['total'],
//     totalTestResultsIncrease : json['totalTestResultsIncrease'],
//     posNeg : json['posNeg'],
//     dataQualityGrade : json['dataQualityGrade'],
//     deathIncrease : json['deathIncrease'],
//     hospitalizedIncrease : json['hospitalizedIncrease'],
//     hash : json['hash'],
//     commercialScore : json['commercialScore'],
//     negativeRegularScore : json['negativeRegularScore'],
//     negativeScore : json['negativeScore'],
//     positiveScore : json['positiveScore'],
//     score : json['score'],
//     grade : json['grade']
//     );
//   }

// }

