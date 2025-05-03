//This file was generated from (Academic) UPPAAL 5.0.0 (rev. 714BA9DB36F49691), 2023-06-21

/*

*/
E<> U.payment_sent

/*

*/
A<> PC.waiting

/*

*/
E<> PD.show_owed

/*

*/
A[] (PD.get_owed imply PD.wait_db_response or PD.show_owed)

/*

*/
A[] not deadlock

/*

*/
A<> PayCredit.attempt_payment imply (PayCredit.card_number && PayCredit.security_code && PayCredit.card_name)

/*

*/
A<> (PayCredit.payment_success imply User.payment_sent) && (User.payment_sent imply PayCredit.payment_success)

/*

*/
A<> (PayCredit.card_info_invalid imply User.verification_failed) && (User.verification_failed imply PayCredit.card_info_invalid)
