

import 'package:faq/constants/faqmodel.dart';

class ModelHelper
{
  static List<FaqModel> featuredfaq= faq
  .map((data) => FaqModel(
            id: data['id'].toString(),
            isOpen: data['isOpen'] as bool,
            question: data['question'].toString(),
            answer: data['answer'].toString(),
            
          ))
      .toList();
}


var faq=
[
  {
    'id':'1',
  'isOpen': false,
    'question': 'What happens if my item is unavailable after placing an order?',
    'answer':
        'Partner will suggest a substitute product that is similar to one you have ordered. As a user, you can either choose to accept it or decline it. If you decline it, a partial refund will be done for the unavailable item.',
  
  },
  {
    'id':'1',
  'isOpen': false,
    'question': 'What happens if my item is unavailable after placing an order?',
    'answer':
        'Partner will suggest a substitute product that is similar to one you have ordered. As a user, you can either choose to accept it or decline it. If you decline it, a partial refund will be done for the unavailable item.',
  
  },
  {
    'id':'1',
  'isOpen': false,
    'question': 'What happens if my item is unavailable after placing an order?',
    'answer':
        'Partner will suggest a substitute product that is similar to one you have ordered. As a user, you can either choose to accept it or decline it. If you decline it, a partial refund will be done for the unavailable item.',
  
  },
  {
    'id':'1',
  'isOpen': false,
    'question': 'What happens if my item is unavailable after placing an order?',
    'answer':
        'Partner will suggest a substitute product that is similar to one you have ordered. As a user, you can either choose to accept it or decline it. If you decline it, a partial refund will be done for the unavailable item.',
  
  },
  {
    'id':'1',
  'isOpen': false,
    'question': 'What happens if my item is unavailable after placing an order?',
    'answer':
        'Partner will suggest a substitute product that is similar to one you have ordered. As a user, you can either choose to accept it or decline it. If you decline it, a partial refund will be done for the unavailable item.',
  
  }
];