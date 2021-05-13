AdminUser.create(email: 'test', password: 'test', club_name: 'Ricers FC');

User.create(email: 'user1', teamname: 'user1 FC', password: 'user1', transfers:  0, budget: 8.07, admin_user_id: 1);
User.create(email: 'user2', teamname: 'user2 FC', password: 'user2', transfers:  0, budget: 18.07, admin_user_id: 1);
User.create(email: 'user3', teamname: 'user3 FC', password: 'user3', transfers:  0, budget: 19.07, admin_user_id: 1);
User.create(email: 'user4', teamname: 'user4 FC', password: 'user4', transfers:  0, budget: 2.07, admin_user_id: 1);




Player.create(first_name: 'Mac', last_name: 'Daddy', position: 1, price: 6.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Mad', last_name: 'Steve', position: 1, price: 8.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'John', last_name: 'Ward', position: 2, price: 6.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Harry', last_name: 'Painter', position: 2, price: 7.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'James', last_name: 'Sykes', position: 2, price: 8.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Ali', last_name: 'Carroll', position: 2, price: 9.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'James', last_name: 'Kelly', position: 2, price: 5.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Toby', last_name: 'Allitt', position: 2, price: 4.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Mike', last_name: 'Clifford', position: 2, price: 3.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Pat', last_name: 'Sykes', position: 3, price: 6.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Peter', last_name: 'Sampson', position: 3, price: 7.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Alex', last_name: 'Reed', position: 3, price: 8.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Jake', last_name: 'McCausland', position: 3, price: 9.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Dom', last_name: 'Oniell', position: 3, price: 5.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Ant', last_name: 'Lomas', position: 3, price: 4.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Jack', last_name: 'Vincent', position: 3, price: 3.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Andy', last_name: 'Wood', position: 3, price: 8.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Alex', last_name: 'Sampson', position: 4, price: 6.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Goat', last_name: 'Goat', position: 4, price: 7.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Dom', last_name: 'Beckham', position: 4, price: 8.77, availability: 'a', admin_user_id: 1);
Player.create(first_name: 'Matt', last_name: 'Barber', position: 4, price: 9.77, availability: 'a', admin_user_id: 1);

# 9 players
# 6 starters
# 3 subs
PlayerUserJoiner.create(sub: false, captain: true, vice_captain: false, player_id: 2, user_id: 4);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: true, player_id: 5, user_id: 4);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 6, user_id: 4);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 7, user_id: 4);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 11, user_id: 4);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 12, user_id: 4);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 13, user_id: 4);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 20, user_id: 4);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 21, user_id: 4);

PlayerUserJoiner.create(sub: false, captain: true, vice_captain: false, player_id: 2, user_id: 3);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: true, player_id: 9, user_id: 3);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 3, user_id: 3);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 4, user_id: 3);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 16, user_id: 3);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 17, user_id: 3);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 10, user_id: 3);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 18, user_id: 3);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 19, user_id: 3);

PlayerUserJoiner.create(sub: false, captain: true, vice_captain: false, player_id: 1, user_id: 2);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: true, player_id: 6, user_id: 2);
PlayerUserJoiner.create(sub: false, captain: true, vice_captain: false, player_id: 7, user_id: 2);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 8, user_id: 2);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 13, user_id: 2);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 14, user_id: 2);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 15, user_id: 2);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 18, user_id: 2);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 19, user_id: 2);

PlayerUserJoiner.create(sub: false, captain: true, vice_captain: false, player_id: 1, user_id: 1);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: true, player_id: 3, user_id: 1);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 4, user_id: 1);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 5, user_id: 1);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 10, user_id: 1);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 11, user_id: 1);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 12, user_id: 1);
PlayerUserJoiner.create(sub: true, captain: false, vice_captain: false, player_id: 20, user_id: 1);
PlayerUserJoiner.create(sub: false, captain: false, vice_captain: false, player_id: 21, user_id: 1);




