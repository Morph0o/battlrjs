# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attack.destroy_all
Mattack.destroy_all
Mob.destroy_all
Monst.destroy_all

 morph = Mob.find_or_create_by(name:'morph', desc:"a morphs blob", hp:1000, str:25 , con: 18, img:"https://i.stack.imgur.com/i7Sdf.jpg")
 star = Mob.find_or_create_by(name:'StarChrunch', desc:"astro matter", hp:3000, str:30 , con: 30 ,img:"https://www.startalkradio.net/wp-content/uploads/2013/08/Dark-matter-visualization.jpg")
 ghoul = Monst.find_or_create_by(name:'Ghoul', desc:"lurks in the night", hp:400, str:16 , con: 9, img:"https://media-waterdeep.cursecdn.com/avatars/thumbnails/14/483/183/315/636364323937041514.png")
 bat = Monst.find_or_create_by(name:'Bat', desc:"fly by the night", hp:300, str:14 , con: 10, img:"https://images.wsj.net/im-173860?width=1280&size=1")
 orge = Monst.find_or_create_by(name:'Orge', desc:"brutal strength", hp:500, str:20 , con: 18, img:"https://i.imgur.com/46oKHuv.jpg")

 kick = Move.find_or_create_by(name: 'Kick', power: rand(20..50), desc: 'Kangaroo kick!')
punch = Move.find_or_create_by(name: 'Punch', power: rand(20..50), desc: 'Walloping blow!')
bite =  Move.find_or_create_by(name: 'Bite', power: rand(20..50), desc: 'Chomp chomp!')
elbow =  Move.find_or_create_by(name: 'Elbow', power: rand(20..50), desc: 'Flying elbow!')
claw =  Move.find_or_create_by(name: 'Claw', power: rand(20..50), desc: 'Scratchhhhh!')
acid = Move.find_or_create_by(name: 'Acid', power: rand(20..50), desc: 'Chemical burn achieved!')
knife = Move.find_or_create_by(name: 'Knife', power: rand(20..50), desc: 'Stabby stabby!')
sledgehammer = Move.find_or_create_by(name: 'Sledgehammer', power: rand(20..50), desc: 'Its hammer-time!')
sword = Move.find_or_create_by(name: 'Sword', power: rand(20..50), desc: 'Samourai unleashed!')
slap = Move.find_or_create_by(name: 'Slap', power: rand(20..50), desc: 'SLAP!')
roundhouse = Move.find_or_create_by(name: 'Roundhouse', power: rand(20..50), desc: 'Rouunnnnndhouuuse kick!')

Attack.find_or_create_by(mob_id: morph.id, move_id: punch.id)
Attack.find_or_create_by(mob_id: morph.id, move_id: knife.id)
Attack.find_or_create_by(mob_id: morph.id, move_id: elbow.id)
Attack.find_or_create_by(mob_id: morph.id, move_id: roundhouse.id)

Attack.find_or_create_by(mob_id: star.id, move_id: sledgehammer.id)
Attack.find_or_create_by(mob_id: star.id, move_id: acid.id)
Attack.find_or_create_by(mob_id: star.id, move_id: claw.id)
Attack.find_or_create_by(mob_id: star.id, move_id: sword.id)

Mattack.find_or_create_by(monst_id:ghoul.id, move_id: acid.id)
Mattack.find_or_create_by(monst_id:ghoul.id, move_id: claw.id)

Mattack.find_or_create_by(monst_id:bat.id, move_id: claw.id)
Mattack.find_or_create_by(monst_id:bat.id, move_id: bite.id)

Mattack.find_or_create_by(monst_id:orge.id, move_id: punch.id)
Mattack.find_or_create_by(monst_id:orge.id, move_id: sledgehammer.id)