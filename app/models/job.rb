class Job < ApplicationRecord
  
  enum document_pass: { selection1:0,not_pass1:1,pass1:2}
  enum interview_pass: { selection_before2:0,selection2:1,not_pass2:2,pass2:3}
  enum unofficial_offer: { selection_before3:0,selection3:1,not_pass3:2,pass3:3}
  
end
