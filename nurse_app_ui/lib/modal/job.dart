class Job {

  String role1;
  String role2;
  String hramt;
  String totalamt;
  String location;
  String date;
  String time;
  String trust;

  Job(this.role1, this.role2, this.hramt, this.totalamt, this.location, this.date,this.time,this.trust);

}

List<Job> getJobs(){
  return <Job>[
    Job("RN", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","Guaranteed"),
    Job("CNA", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","NonGuaranteed"),
    Job("RN", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","Guaranteed"),
    Job("LNP", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","NonGuaranteed"),
    Job("RNA", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","NonGuaranteed"),
    Job("CNA", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","Guaranteed"),
    Job("RN", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","NonGuaranteed"),
    Job("RN", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","NonGuaranteed"),
    Job("RN", "Brightview Senior Living", "15.00", "250.32", "Annapolis, MD 4.3 Mi", "Jul 29","3pm-11pm","Guaranteed"),
  ];
}

List<String> getJobsRequirements(){
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}