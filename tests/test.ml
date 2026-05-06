#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 56; capacity = 88; latency = 15; risk = 8; weight = 6 };;
expect (score signal_case_1 = 96);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 80; capacity = 90; latency = 27; risk = 8; weight = 10 };;
expect (score signal_case_2 = 106);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 98; capacity = 87; latency = 23; risk = 17; weight = 10 };;
expect (score signal_case_3 = 92);;
expect (classify signal_case_3 = "review");;

#use "src/review.ml";;
let domain_review = { signal = 43; slack = 31; drag = 13; confidence = 47 };;
expect (review_score domain_review = 125);;
expect (review_lane domain_review = "watch");;
