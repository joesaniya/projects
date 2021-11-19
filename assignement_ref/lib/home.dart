import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'DetailPage.dart';
class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> 
{
   late Future <List<States>> futureData;
  final String apiURL = 'https://api.covidtracking.com/v1/states/current.json';


  Future<List<States>> fetchJSONData() async {
    print("fetch");
    final response = await http
      .get(Uri.parse('https://api.covidtracking.com/v1/states/current.json'));

    if (response.statusCode == 200) {
      print("response1234");

     final jsonItems= json.decode(response.body).cast<Map<String, dynamic>>();
    
   
 
    List<States> usersList = jsonItems.map<States>((json) {
        print("data");
        return States.fromJson(json);
      }).toList();
      print(usersList);
 
      return usersList;
    
    }
      
    
    else {
      print("error");
      throw Exception('Failed to load data from internet');
    }
    
  }


  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text('displaying Data'),
  
      ),

      body: FutureBuilder<List<States>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {
 
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
 
          return ListView(
            children: snapshot.data!
            .map((user) => Card(
              child: ListTile(
                    title: Text(user.state,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    onTap: (){ 
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>DetailPage(user.state))
                      );
                      print(user.state); 
                    },
                    subtitle: Text(user.date.toString(),style: TextStyle(fontSize: 18),),
                    trailing: Icon(Icons.arrow_forward),
                    leading: CircleAvatar(
                      backgroundColor: Colors.pinkAccent[100],
                      child: Text(user.state[0],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                    ),
                  ),
            ),
              )
            .toList(),
          );
        },
      ),

    );
  }
}

class States {
  int date;
  String state;
//   int positive;
 String probableCases;
//   // String negative;
//   // String pending;
//   String totalTestResultsSource;
//   int totalTestResults;
//   int hospitalizedCurrently;
//   int hospitalizedCumulative;
//   // String inIcuCurrently;
//   // String inIcuCumulative;
//   int onVentilatorCurrently;
//  // String onVentilatorCumulative;
//  // String recovered;
//   String lastUpdateEt;
//   String dateModified;
//   String checkTimeEt;
//   int death;
//   int hospitalized;
//  // String hospitalizedDischarged;
//   String dateChecked;
//   int totalTestsViral;
//   int positiveTestsViral;
//   int negativeTestsViral;
//   // String positiveCasesViral;
//   // String deathConfirmed;
//   // String deathProbable;
//   // String totalTestEncountersViral;
//   // String totalTestsPeopleViral;
//   // String totalTestsAntibody;
//   // String positiveTestsAntibody;
//   // String negativeTestsAntibody;
//   // String totalTestsPeopleAntibody;
//   // String positiveTestsPeopleAntibody;
//   // String negativeTestsPeopleAntibody;
//   // String totalTestsPeopleAntigen;
//   // String positiveTestsPeopleAntigen;
//   // String totalTestsAntigen;
//   // String positiveTestsAntigen;
//   String fips;
//   int positiveIncrease;
//   int negativeIncrease;
//   int total;
//   int totalTestResultsIncrease;
//   int posNeg;
//  // String dataQualityGrade;
//   int deathIncrease;
//   int hospitalizedIncrease;
//   String hash;
//   int commercialScore;
//   int negativeRegularScore;
//   int negativeScore;
//   int positiveScore;
//   int score;
//   String grade;

  States(
      {required this.date,
      required this.state,
    //   required this.positive,
   required this.probableCases,
    //   // required this.negative,
    //   // required this.pending,
    //   required this.totalTestResultsSource,
    //   required this.totalTestResults,
    //   required this.hospitalizedCurrently,
    //   required this.hospitalizedCumulative,
    //   // required this.inIcuCurrently,
    //   // required this.inIcuCumulative,
    //   required this.onVentilatorCurrently,
    //  // required this.onVentilatorCumulative,
    //  // required this.recovered,
    //   required this.lastUpdateEt,
    //   required this.dateModified,
    //   required this.checkTimeEt,
    //   required this.death,
    //   required this.hospitalized,
    //  // required this.hospitalizedDischarged,
    //   required this.dateChecked,
    //   required this.totalTestsViral,
    //   required this.positiveTestsViral,
    //   required this.negativeTestsViral,
    //   // required this.positiveCasesViral,
    //   // required this.deathConfirmed,
    //   // required this.deathProbable,
    //   // required this.totalTestEncountersViral,
    //   // required this.totalTestsPeopleViral,
    //   // required this.totalTestsAntibody,
    //   // required this.positiveTestsAntibody,
    //   // required this.negativeTestsAntibody,
    //   // required this.totalTestsPeopleAntibody,
    //   // required this.positiveTestsPeopleAntibody,
    //   // required this.negativeTestsPeopleAntibody,
    //   // required this.totalTestsPeopleAntigen,
    //   // required this.positiveTestsPeopleAntigen,
    //   // required this.totalTestsAntigen,
    //   // required this.positiveTestsAntigen,
    //   required this.fips,
    //   required this.positiveIncrease,
    //   required this.negativeIncrease,
    //   required this.total,
    //   required this.totalTestResultsIncrease,
    //   required this.posNeg,
    //  // required this.dataQualityGrade,
    //   required this.deathIncrease,
    //   required this.hospitalizedIncrease,
    //   required this.hash,
    //   required this.commercialScore,
    //   required this.negativeRegularScore,
    //   required this.negativeScore,
    //   required this.positiveScore,
    //   required this.score,
    //   required this.grade
    });

  factory States.fromJson(Map<String, dynamic> json) {
    return States(
    date : json['date'],
    state : json['state'],
  //   positive : json['positive'],
probableCases : json['probableCases'].toString(),
  //   //negative : json['negative'],
  //   //pending : json['pending'],
  //   totalTestResultsSource : json['totalTestResultsSource'],
  //   totalTestResults : json['totalTestResults'],
  //   hospitalizedCurrently : json['hospitalizedCurrently'],
  //   hospitalizedCumulative : json['hospitalizedCumulative'],
  //   //inIcuCurrently : json['inIcuCurrently'],
  //   //inIcuCumulative : json['inIcuCumulative'],
  //   onVentilatorCurrently : json['onVentilatorCurrently'],
  //  // onVentilatorCumulative : json['onVentilatorCumulative'],
  //   //recovered : json['recovered'],
  //   lastUpdateEt : json['lastUpdateEt'],
  //   dateModified : json['dateModified'],
  //   checkTimeEt : json['checkTimeEt'],
  //   death : json['death'],
  //   hospitalized : json['hospitalized'],
  //   //hospitalizedDischarged : json['hospitalizedDischarged'],
  //   dateChecked : json['dateChecked'],
  //   totalTestsViral : json['totalTestsViral'],
  //   positiveTestsViral : json['positiveTestsViral'],
  //   negativeTestsViral : json['negativeTestsViral'],
  //   //positiveCasesViral : json['positiveCasesViral'],
  //   //deathConfirmed : json['deathConfirmed'],
  //   // deathProbable : json['deathProbable'],
  //   // totalTestEncountersViral : json['totalTestEncountersViral'],
  //   // totalTestsPeopleViral : json['totalTestsPeopleViral'],
  //   // totalTestsAntibody : json['totalTestsAntibody'],
  //   // positiveTestsAntibody : json['positiveTestsAntibody'],
  //   // negativeTestsAntibody : json['negativeTestsAntibody'],
  //   // totalTestsPeopleAntibody : json['totalTestsPeopleAntibody'],
  //   // positiveTestsPeopleAntibody : json['positiveTestsPeopleAntibody'],
  //   // negativeTestsPeopleAntibody : json['negativeTestsPeopleAntibody'],
  //   // totalTestsPeopleAntigen : json['totalTestsPeopleAntigen'],
  //   // positiveTestsPeopleAntigen : json['positiveTestsPeopleAntigen'],
  //   // totalTestsAntigen : json['totalTestsAntigen'],
  //   // positiveTestsAntigen : json['positiveTestsAntigen'],
  //   fips : json['fips'],
  //   positiveIncrease : json['positiveIncrease'],
  //   negativeIncrease : json['negativeIncrease'],
  //   total : json['total'],
  //   totalTestResultsIncrease : json['totalTestResultsIncrease'],
  //   posNeg : json['posNeg'],
  //   //dataQualityGrade : json['dataQualityGrade'],
  //   deathIncrease : json['deathIncrease'],
  //   hospitalizedIncrease : json['hospitalizedIncrease'],
  //   hash : json['hash'],
  //   commercialScore : json['commercialScore'],
  //   negativeRegularScore : json['negativeRegularScore'],
  //   negativeScore : json['negativeScore'],
  //   positiveScore : json['positiveScore'],
  //   score : json['score'],
  //   grade : json['grade']
    );
  }

}

// class States {
//   int? date;
//   String? state;
//   int? positive;
//   Null? probableCases;
//   Null? negative;
//   Null? pending;
//   String? totalTestResultsSource;
//   int? totalTestResults;
//   int? hospitalizedCurrently;
//   int? hospitalizedCumulative;
//   Null? inIcuCurrently;
//   Null? inIcuCumulative;
//   int? onVentilatorCurrently;
//   Null? onVentilatorCumulative;
//   Null? recovered;
//   String? lastUpdateEt;
//   String? dateModified;
//   String? checkTimeEt;
//   int? death;
//   int? hospitalized;
//   Null? hospitalizedDischarged;
//   String? dateChecked;
//   int? totalTestsViral;
//   int? positiveTestsViral;
//   int? negativeTestsViral;
//   Null? positiveCasesViral;
//   Null? deathConfirmed;
//   Null? deathProbable;
//   Null? totalTestEncountersViral;
//   Null? totalTestsPeopleViral;
//   Null? totalTestsAntibody;
//   Null? positiveTestsAntibody;
//   Null? negativeTestsAntibody;
//   Null? totalTestsPeopleAntibody;
//   Null? positiveTestsPeopleAntibody;
//   Null? negativeTestsPeopleAntibody;
//   Null? totalTestsPeopleAntigen;
//   Null? positiveTestsPeopleAntigen;
//   Null? totalTestsAntigen;
//   Null? positiveTestsAntigen;
//   String? fips;
//   int? positiveIncrease;
//   int? negativeIncrease;
//   int? total;
//   int? totalTestResultsIncrease;
//   int? posNeg;
//   Null? dataQualityGrade;
//   int? deathIncrease;
//   int? hospitalizedIncrease;
//   String? hash;
//   int? commercialScore;
//   int? negativeRegularScore;
//   int? negativeScore;
//   int? positiveScore;
//   int? score;
//   String? grade;

//   States(
//       {required this.date,
//       required this.state,
//       required this.positive,
//       this.probableCases,
//       this.negative,
//       this.pending,
//       required this.totalTestResultsSource,
//       required this.totalTestResults,
//       required this.hospitalizedCurrently,
//       required this.hospitalizedCumulative,
//       this.inIcuCurrently,
//       this.inIcuCumulative,
//       required this.onVentilatorCurrently,
//       this.onVentilatorCumulative,
//       this.recovered,
//       required this.lastUpdateEt,
//       required this.dateModified,
//       required this.checkTimeEt,
//       required this.death,
//       required this.hospitalized,
//       this.hospitalizedDischarged,
//       required this.dateChecked,
//       required this.totalTestsViral,
//       required this.positiveTestsViral,
//       required this.negativeTestsViral,
//       this.positiveCasesViral,
//       this.deathConfirmed,
//       this.deathProbable,
//       this.totalTestEncountersViral,
//       this.totalTestsPeopleViral,
//       this.totalTestsAntibody,
//       this.positiveTestsAntibody,
//       this.negativeTestsAntibody,
//       this.totalTestsPeopleAntibody,
//       this.positiveTestsPeopleAntibody,
//       this.negativeTestsPeopleAntibody,
//       this.totalTestsPeopleAntigen,
//       this.positiveTestsPeopleAntigen,
//       this.totalTestsAntigen,
//       this.positiveTestsAntigen,
//       required this.fips,
//       required this.positiveIncrease,
//       required this.negativeIncrease,
//       required this.total,
//       required this.totalTestResultsIncrease,
//       required this.posNeg,
//       this.dataQualityGrade,
//       required this.deathIncrease,
//       required this.hospitalizedIncrease,
//       required this.hash,
//       required this.commercialScore,
//       required this.negativeRegularScore,
//       required this.negativeScore,
//       required this.positiveScore,
//       required this.score,
//       required this.grade});

//   States.fromJson(Map<String, dynamic> json) {
//     date = json['date'];
//     state = json['state'];
//     positive = json['positive'];
//     probableCases = json['probableCases'];
//     negative = json['negative'];
//     pending = json['pending'];
//     totalTestResultsSource = json['totalTestResultsSource'];
//     totalTestResults = json['totalTestResults'];
//     hospitalizedCurrently = json['hospitalizedCurrently'];
//     hospitalizedCumulative = json['hospitalizedCumulative'];
//     inIcuCurrently = json['inIcuCurrently'];
//     inIcuCumulative = json['inIcuCumulative'];
//     onVentilatorCurrently = json['onVentilatorCurrently'];
//     onVentilatorCumulative = json['onVentilatorCumulative'];
//     recovered = json['recovered'];
//     lastUpdateEt = json['lastUpdateEt'];
//     dateModified = json['dateModified'];
//     checkTimeEt = json['checkTimeEt'];
//     death = json['death'];
//     hospitalized = json['hospitalized'];
//     hospitalizedDischarged = json['hospitalizedDischarged'];
//     dateChecked = json['dateChecked'];
//     totalTestsViral = json['totalTestsViral'];
//     positiveTestsViral = json['positiveTestsViral'];
//     negativeTestsViral = json['negativeTestsViral'];
//     positiveCasesViral = json['positiveCasesViral'];
//     deathConfirmed = json['deathConfirmed'];
//     deathProbable = json['deathProbable'];
//     totalTestEncountersViral = json['totalTestEncountersViral'];
//     totalTestsPeopleViral = json['totalTestsPeopleViral'];
//     totalTestsAntibody = json['totalTestsAntibody'];
//     positiveTestsAntibody = json['positiveTestsAntibody'];
//     negativeTestsAntibody = json['negativeTestsAntibody'];
//     totalTestsPeopleAntibody = json['totalTestsPeopleAntibody'];
//     positiveTestsPeopleAntibody = json['positiveTestsPeopleAntibody'];
//     negativeTestsPeopleAntibody = json['negativeTestsPeopleAntibody'];
//     totalTestsPeopleAntigen = json['totalTestsPeopleAntigen'];
//     positiveTestsPeopleAntigen = json['positiveTestsPeopleAntigen'];
//     totalTestsAntigen = json['totalTestsAntigen'];
//     positiveTestsAntigen = json['positiveTestsAntigen'];
//     fips = json['fips'];
//     positiveIncrease = json['positiveIncrease'];
//     negativeIncrease = json['negativeIncrease'];
//     total = json['total'];
//     totalTestResultsIncrease = json['totalTestResultsIncrease'];
//     posNeg = json['posNeg'];
//     dataQualityGrade = json['dataQualityGrade'];
//     deathIncrease = json['deathIncrease'];
//     hospitalizedIncrease = json['hospitalizedIncrease'];
//     hash = json['hash'];
//     commercialScore = json['commercialScore'];
//     negativeRegularScore = json['negativeRegularScore'];
//     negativeScore = json['negativeScore'];
//     positiveScore = json['positiveScore'];
//     score = json['score'];
//     grade = json['grade'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['date'] = this.date;
//     data['state'] = this.state;
//     data['positive'] = this.positive;
//     data['probableCases'] = this.probableCases;
//     data['negative'] = this.negative;
//     data['pending'] = this.pending;
//     data['totalTestResultsSource'] = this.totalTestResultsSource;
//     data['totalTestResults'] = this.totalTestResults;
//     data['hospitalizedCurrently'] = this.hospitalizedCurrently;
//     data['hospitalizedCumulative'] = this.hospitalizedCumulative;
//     data['inIcuCurrently'] = this.inIcuCurrently;
//     data['inIcuCumulative'] = this.inIcuCumulative;
//     data['onVentilatorCurrently'] = this.onVentilatorCurrently;
//     data['onVentilatorCumulative'] = this.onVentilatorCumulative;
//     data['recovered'] = this.recovered;
//     data['lastUpdateEt'] = this.lastUpdateEt;
//     data['dateModified'] = this.dateModified;
//     data['checkTimeEt'] = this.checkTimeEt;
//     data['death'] = this.death;
//     data['hospitalized'] = this.hospitalized;
//     data['hospitalizedDischarged'] = this.hospitalizedDischarged;
//     data['dateChecked'] = this.dateChecked;
//     data['totalTestsViral'] = this.totalTestsViral;
//     data['positiveTestsViral'] = this.positiveTestsViral;
//     data['negativeTestsViral'] = this.negativeTestsViral;
//     data['positiveCasesViral'] = this.positiveCasesViral;
//     data['deathConfirmed'] = this.deathConfirmed;
//     data['deathProbable'] = this.deathProbable;
//     data['totalTestEncountersViral'] = this.totalTestEncountersViral;
//     data['totalTestsPeopleViral'] = this.totalTestsPeopleViral;
//     data['totalTestsAntibody'] = this.totalTestsAntibody;
//     data['positiveTestsAntibody'] = this.positiveTestsAntibody;
//     data['negativeTestsAntibody'] = this.negativeTestsAntibody;
//     data['totalTestsPeopleAntibody'] = this.totalTestsPeopleAntibody;
//     data['positiveTestsPeopleAntibody'] = this.positiveTestsPeopleAntibody;
//     data['negativeTestsPeopleAntibody'] = this.negativeTestsPeopleAntibody;
//     data['totalTestsPeopleAntigen'] = this.totalTestsPeopleAntigen;
//     data['positiveTestsPeopleAntigen'] = this.positiveTestsPeopleAntigen;
//     data['totalTestsAntigen'] = this.totalTestsAntigen;
//     data['positiveTestsAntigen'] = this.positiveTestsAntigen;
//     data['fips'] = this.fips;
//     data['positiveIncrease'] = this.positiveIncrease;
//     data['negativeIncrease'] = this.negativeIncrease;
//     data['total'] = this.total;
//     data['totalTestResultsIncrease'] = this.totalTestResultsIncrease;
//     data['posNeg'] = this.posNeg;
//     data['dataQualityGrade'] = this.dataQualityGrade;
//     data['deathIncrease'] = this.deathIncrease;
//     data['hospitalizedIncrease'] = this.hospitalizedIncrease;
//     data['hash'] = this.hash;
//     data['commercialScore'] = this.commercialScore;
//     data['negativeRegularScore'] = this.negativeRegularScore;
//     data['negativeScore'] = this.negativeScore;
//     data['positiveScore'] = this.positiveScore;
//     data['score'] = this.score;
//     data['grade'] = this.grade;
//     return data;
//   }
// }