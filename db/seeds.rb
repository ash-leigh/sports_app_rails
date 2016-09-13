Contract.delete_all
Player.delete_all
Sponsor.delete_all
Team.delete_all

t1 = Team.create({name: "Newcastle United"})
t2 = Team.create({name: "Raith Rovers"})

p1 = Player.create({name: "Cruel", team_id: t1.id})
p2 = Player.create({name: "Ferney", team_id: t2.id})

s1 = Sponsor.create({name: "Sports Direct"})
s2 = Sponsor.create({name: "Kilrie Farm"})
s3 = Sponsor.create({name: "Apple"})
s4 = Sponsor.create({name: "Highland Spring"})

Contract.create({player_id: p1.id, sponsor_id: s1.id, value: 10})
Contract.create({player_id: p2.id, sponsor_id: s2.id, value: 50000})
Contract.create({player_id: p1.id, sponsor_id: s3.id, value: 2000})
Contract.create({player_id: p2.id, sponsor_id: s4.id, value: 100})