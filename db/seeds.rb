User.create!([
  {email: "a@gmail.com", password: 'abcabc' ,reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-05-04 16:19:52", last_sign_in_at: "2017-05-04 16:19:52", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "b@gmail.com", password: 'abcabc' ,reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-05-04 16:22:25", last_sign_in_at: "2017-05-04 16:22:25", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "c@gmail.com", password: 'abcabc' ,reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-05-04 16:25:19", last_sign_in_at: "2017-05-04 16:24:54", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "d@gmail.com", password: 'abcabc' ,reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-05-04 16:28:25", last_sign_in_at: "2017-05-04 16:28:25", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "e@gmail.com", password: 'abcabc' ,reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-05-04 16:30:26", last_sign_in_at: "2017-05-04 16:30:26", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Profile.create!([
  {user_id: 1, first_name: "Anderson", last_name: ".Paak", profile_pic: "25_AndersonPaak_03.jpg", username: "andypaak", bio: "Smooth as a motherfucker,\r\nsuede on the inside. \r\nTell me hat the rims look like"},
  {user_id: 2, first_name: "Mac ", last_name: "Miller", profile_pic: "mac-miller-tickets_11-05-16_17_579bc28f66d5c.jpg", username: "macmiller", bio: "Chillin 4 hour\r\nwatching worldstar\r\n"},
  {user_id: 3, first_name: "A$AP", last_name: "Rocky", profile_pic: "ASAPRocky1-640x480.jpg", username: "asaprocky", bio: "livethroughtthehustlinnnnn\r\nlife's an everyday\r\n(hustle)"},
  {user_id: 4, first_name: "Quentin", last_name: "Tarantino", profile_pic: "51e200e0-cd9c-4744-a479-3233cdbab12d.jpg", username: "thefilmaker", bio: "The man\r\nThe myth \r\nTHe legend"},
  {user_id: 5, first_name: "Girl", last_name: "Skater", profile_pic: "k8qqix7lovm3iyktioqy.jpg", username: "thegirlskater", bio: "I like riding skateboards\r\nAnd bunning"}
])
