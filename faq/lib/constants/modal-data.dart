import 'package:flutter/material.dart';

import 'faqmodel.dart';

const DUMMY_faq= 
[
  //placing
  const FaqModel(
    id:'1',
    isOpen: false,
    question: 'What happens if my item is unavailable after placing an order?',
    answer:
        'Partner will suggest a substitute product that is similar to one you have ordered. As a user, you can either choose to accept it or decline it. If you decline it, a partial refund will be done for the unavailable item.',
  ),
  FaqModel(
    id:'2',
    isOpen: false,
    question: 'What are the payment methods supported on EEFind?',
    answer:
        'We currently support UPI, Wallets, Net banking, Credit & Debit cards.',
  ),
  FaqModel(
    id:'3',
    isOpen: false,
    question: 'Can I edit my order to change a few items and quantities?',
    answer:
        'Yes, the order could be edited before the payment has been done. After payment has been done, you will have a 60 seconds cancellation window within which you can cancel your order. After the window, you can again place a new order with correct items.',
  ),
  FaqModel(
    id:'4',
    isOpen: false,
    question: 'Can the order be cancelled?',
    answer:
        'Yes, there will be a 1-minute window within which any cancellations if required can be done. Beyond that, it is not possible to cancel.',
  ),
  FaqModel(
    id:'5',
    isOpen: false,
    question: 'Can I order from multiple shops in a single order?',
    answer:
        'a.	No. You can only place an order from a single store at a time. EEfind allows you to pre-select categories you wish to buy before it shows you a list of shops that sell those categories of products, thereby making it easier for you to buy everything in a single order.',
  ),

//shipping
  FaqModel(
    id:'6',
    isOpen: false,
    question: 'Does EEFind charge a delivery fee?',
    answer:
        'Yes, we charge a delivery fee for every order starting at Rs. 25. You can also claim a free delivery on your order when you use a coupon.',
  ),
  FaqModel(
    id:'7',
    isOpen: false,
    question: 'How does EEFind fulfil my order?',
    answer:
        'Once you have selected the product and the store to buy the same from, we assign a delivery partner to fulfill your order to deliver at your doorstep.',
  ),
  FaqModel(
    id:'8',
    isOpen: false,
    question: 'How can I track my order status?',
    answer:
        'Once the order has been placed, you are automatically directed to a Delivery status screen. In case of any delays or cancellations you can contact our support center about the same.',
  ),
  FaqModel(
    id:'9',
    isOpen: false,
    question:
        'Is there a way to contact the delivery person to give specific instructions',
    answer:
        'Yes. Once the order has been placed, you will be directed to a delivery status screen where you can contact the delivery person once assigned. Before placing the order, you could also place special instructions to the Store to follow.',
  ),

  //Refund
  FaqModel(
      id:'10',
      isOpen: false,
      question: 'How much time does it take to get my refund?',
      answer:
          'For all UPI payments, you will automatically be refunded the amount. For all other payment modes, it usually takes about 5-7 business days. In case of a delay you can raise a request with our support team. Please refer to our Cancellation and Refund policy for the same.'),
];