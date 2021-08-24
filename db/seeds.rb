# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

agents_hash = [
  {
    name: 'Brimstone',
    description: "Joining from the USA, Brimstone's orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and from a distance make him an unmatched boots-on-the-ground commander.",
    role: :controller,
    abilities: [
      {
        name: 'Stim Beacon',
        description: "INSTANTLY toss a stim beacon in front of Brimstone. Upon landing, the stim beacon will create a field that grants players RapidFire.",
        ability_type: :basic
      },
      {
        name: 'Incendiary',
        description: "EQUIP an incendiary grenade launcher. FIRE to launch a grenade that detonates as it comes to a rest on the floor, creating a lingering fire zone that damages players within the zone.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Sky Smoke',
        description: "EQUIP a tactical map. FIRE to set locations where Brimstone's smoke clouds will land. ALTERNATE FIRE to confirm, launching long-lasting smoke clouds that block vision in the selected area.",
        ability_type: :signature
      },
      {
        name: 'Orbital Strike',
        description: "EQUIP a tactical map. FIRE to launch a lingering orbital strike laser at the selected location, dealing high damage-over-time to players caught in the selected area.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Omen',
    description: "A phantom of a memory, Omen hunts in the shadows. He renders enemies blind, teleports across the field, then lets paranoia take hold as his foe scrambles to learn where he might strike next.",
    role: :controller,
    abilities: [
      {
        name: 'Shrouded Step',
        description: "EQUIP a shrouded step ability and see its range indicator. FIRE to begin a brief channel, then teleport to the marked location.",
        ability_type: :basic
      },
      {
        name: 'Paranoia',
        description: "EQUIP a blinding orb. FIRE to throw it forward, briefly reducing the vision range and deafening all players it touches. This projectile can pass through walls.",
        ability_type: :basic
      },
      {
        name: 'Dark Cover',
        description: "EQUIP a shadow orb, entering a phased world to place and target the orbs. PRESS the ability key to throw the shadow orb to the marked location, creating a long-lasting shadow sphere that blocks vision. HOLD FIRE while targeting to move the marker further away. HOLD SECONDARY FIRE while targeting to move the marker closer. PRESS RELOAD to toggle normal targeting view.",
        lineups: true,
        ability_type: :signature
      },
      {
        name: 'From the Shadows',
        description: "EQUIP a tactical map. FIRE to begin teleporting to the selected location. While teleporting, Omen will appear as a Shade that can be destroyed by an enemy to cancel his teleport, or press EQUIP for Omen to cancel his teleport.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Astra',
    description: "Ghanaian Agent Astra harnesses the energies of the cosmos to reshape battlefields to her whim. With full command of her astral form and a talent for deep strategic foresight, she's always eons ahead of her enemy's next move.",
    role: :controller,
    abilities: [
      {
        name: 'Gravity Well',
        description: "ACTIVATE a Star to form a Gravity Well. Players in the area are pulled toward the center before it explodes, making all players still trapped inside vulnerable.",
        ability_type: :basic
      },
      {
        name: 'Nova Pulse',
        description: "ACTIVATE a Star to detonate a Nova Pulse. The Nova Pulse charges briefly then strikes, concussing all players in its area.",
        ability_type: :basic
      },
      {
        name: 'Nebula / Dissipate',
        description: "ACTIVATE a Star to transform it into a Nebula (smoke).  USE a Star to Dissipate it, returning the Star to be placed in a new location after a delay.  Dissipate briefly forms a fake Nebula at the Star’s location before returning.",
        ability_type: :basic
      },
      {
        name: 'Astral Form',
        description: "ACTIVATE to enter Astral Form where you can place Stars with PRIMARY FIRE. Stars can be reactivated later, transforming them into a Nova Pulse, Nebula, or Gravity Well.",
        ability_type: :signature
      },
      {
        name: 'Cosmic Divide',
        description: "When Cosmic Divide is charged, use SECONDARY FIRE in Astral Form to begin aiming it, then PRIMARY FIRE to select two locations. An infinite Cosmic Divide connects the two points you select. Cosmic Divide blocks bullets and heavily dampens audio.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Viper',
    description: "The American chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and cripple the enemy's vision. If the toxins don't kill her prey, her mind games surely will.",
    role: :controller,
    abilities: [
      {
        name: 'Fuel',
        description: "Some of Viper's abilities can be toggled on or off, but require her to consume fuel to keep them active.",
        ability_type: :passive
      },
      {
        name: 'Toxin',
        description: "Abilities that apply Toxin cause affected enemies to have their maximum health instantly reduced, which get lower the longer they stay within the ability's area of effect.",
        ability_type: :passive
      },
      {
        name: 'Snake Bite',
        description: "EQUIP a chemical launcher. FIRE to launch a canister that shatters upon hitting the floor, creating a lingering chemical zone that damages and applies Vulnerable.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Poison Cloud',
        description: "EQUIP a gas emitter. FIRE to throw the emitter that perpetually remains throughout the round. RE-USE the ability to create a toxic gas cloud at the cost of fuel. This ability can be RE-USED more than once and can be picked up to be REDEPLOYED.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Toxic Screen',
        description: "EQUIP a gas emitter launcher. FIRE to deploy a long line of gas emitters. RE-USE the ability to create a tall wall of toxic gas at the cost of fuel. This ability can be RE-USED more than once.",
        ability_type: :signature
      },
      {
        name: "Viper's Pit",
        description: "EQUIP a chemical sprayer. FIRE to spray a chemical cloud in all directions around Viper, creating a large cloud that reduces the vision range of players and maximum health of enemies inside of it. HOLD the ability key to disperse the cloud early.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Phoenix',
    description: "Hailing from the U.K., Phoenix's star power shines through in his fighting style, igniting the battlefield with flash and flare. Whether he's got backup or not, he'll rush into a fight on his own terms.",
    role: :duelist,
    abilities: [
      {
        name: 'Heal',
        description: "Phoenix can heal himself when standing in his abilities, i.e. when standing in Blaze or standing in Hot Hands.",
        ability_type: :passive
      },
      {
        name: 'Blaze',
        description: "EQUIP a flame wall. FIRE to create a line of flames that moves forward, creating a wall that blocks vision and damages players passing through it. HOLD FIRE to bend the wall in the direction of your crosshair.",
        ability_type: :basic
      },
      {
        name: 'Curveball',
        description: "EQUIP a flare orb that takes a curving path and detonates shortly after throwing. FIRE to curve the flare orb to the left, detonating and blinding any player who sees the orb. ALTERNATE FIRE to curve the flare orb to the right.",
        ability_type: :basic
      },
      {
        name: 'Hot Hands',
        description: "EQUIP a fireball. FIRE to throw a fireball that explodes after a set amount of time or upon hitting the ground, creating a lingering fire zone that damages enemies.",
        lineups: true,
        ability_type: :signature
      },
      {
        name: 'Run It Back',
        description: "INSTANTLY place a marker at Phoenix's location. While this ability is active, dying or allowing the timer to expire will end this ability and bring Phoenix back to this location with full health.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Raze',
    description: "Raze explodes out of Brazil with her big personality and big guns. With her blunt-force-trauma playstyle, she excels at flushing entrenched enemies and clearing tight spaces with a generous dose of “boom.",
    role: :duelist,
    abilities: [
      {
        name: 'Boom Bot',
        description: "EQUIP a Boom Bot. FIRE will deploy the bot, causing it to travel in a straight line on the ground, bouncing off walls. The Boom Bot will lock on to any enemies in its frontal cone and chase them, exploding for heavy damage if it reaches them.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Blast Pack',
        description: "INSTANTLY throw a Blast Pack that will stick to surfaces. RE-USE the ability after deployment to detonate, damaging and moving anything hit.",
        ability_type: :basic,
        lineups: true
      },
      {
        name: 'Paint Shells',
        description: "EQUIP a cluster grenade. FIRE to throw the grenade, which does damage and creates sub-munitions, each doing damage to anyone in their range.",
        ability_type: :signature
      },
      {
        name: 'Showstopper',
        description: "EQUIP a rocket launcher. FIRE shoots a rocket that does massive area damage on contact with anything.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Reyna',
    description: "Forged in the heart of Mexico, Reyna dominates single combat, popping off with each kill she scores. Her capability is only limited by her raw skill, making her highly dependent on performance.",
    role: :duelist,
    abilities: [
      {
        name: 'Soul Harvest',
        description: "Enemies that die to Reyna, or die within 3 seconds of taking damage from Reyna, leave behind Soul Orbs that last 3 seconds.",
        ability_type: :passive
      },
      {
        name: 'Leer',
        description: "EQUIP an ethereal, destructible eye. ACTIVATE to cast the eye a short distance forward. The eye will Nearsight all enemies who look at it.",
        ability_type: :basic
      },
      {
        name: 'Devour',
        description: "INSTANTLY consume a nearby Soul Orb, rapidly healing for a short duration. Health gained through this skill exceeding 100 will decay over time. If Empress is active, this skill will automatically cast and not consume the Soul Orb.",
        ability_type: :signature,
      },
      {
        name: 'Dismiss',
        description: "INSTANTLY consume a nearby Soul Orb, becoming intangible for a short duration. If Empress is active, also become invisible.",
        ability_type: :signature
      },
      {
        name: 'Empress',
        description: "INSTANTLY enter a frenzy, increasing firing, equip and reload speed dramatically. Grants infinite charges of Soul Harvest abilities. When an enemy dies to Reyna, or dies within 3 seconds of taking damage from Reyna, the duration is renewed.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Yoru',
    description: "Hailing from Australia, Skye and her band of beasts trail-blaze the way through hostile territory. With her creations hampering the enemy, and her power to heal others, the team is strongest and safest by Skye’s side.",
    role: :duelist,
    abilities: [
      {
        name: 'Fakeout',
        description: "EQUIP an echo that mimics footsteps when activated. FIRE to activate and send the echo forward. ALT FIRE to place an echo in place. USE the inactive echo to send it forward.",
        ability_type: :basic
      },
      {
        name: 'Blindside',
        description: "EQUIP to rip an unstable dimensional fragment from reality. FIRE to throw the fragment, activating a flash that winds up once it collides with a hard surface in world.",
        ability_type: :basic,
      },
      {
        name: 'Gatecrash',
        description: "EQUIP to harness a rift tether. FIRE to send the tether out moving forward. ALT FIRE to place a tether in place. ACTIVATE to teleport to the tether's location.",
        ability_type: :signature
      },
      {
        name: 'Dimensional Drift',
        description: "EQUIP a mask that can see between dimensions. FIRE to drift into Yoru's dimension, unable to be affected or seen by enemies from the outside.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Jett',
    description: "Representing her home country of South Korea, Jett's agile and evasive fighting style lets her take risks no one else can. She runs circles around every skirmish, cutting enemies before they even know what hit them.",
    role: :duelist,
    abilities: [
      {
        name: 'Drift',
        description: "Holding the jump button while falling allows you to glide through the air.",
        ability_type: :passive
      },
      {
        name: 'Cloudburst',
        description: "INSTANTLY throw a projectile that expands into a brief vision-blocking cloud on impact with a surface. HOLD the ability key to curve the smoke in the direction of your crosshair.",
        ability_type: :basic
      },
      {
        name: 'Updraft',
        description: "INSTANTLY propel Jett high into the air.",
        ability_type: :basic,
      },
      {
        name: 'Tailwind',
        description: "INSTANTLY propel Jett in the direction she is moving. If Jett is standing still, she will propel forward.",
        ability_type: :signature
      },
      {
        name: 'Blade Storm',
        description: "EQUIP a set of highly accurate throwing knives that recharge on killing an opponent. FIRE to throw a single knife at your target. ALTERNATE FIRE to throw all remaining daggers at your target.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Sova',
    description: "Born from the eternal winter of Russia's tundra, Sova tracks, finds, and eliminates enemies with ruthless efficiency and precision. His custom bow and incredible scouting abilities ensure that even if you run, you cannot hide.",
    role: :initiator,
    abilities: [
      {
        name: 'OWL Drone',
        description: "EQUIP an owl drone. FIRE to deploy and take control of movement of the drone. While in control of the drone, FIRE to shoot a marking dart. This dart will reveal the location of any player struck by the dart.",
        ability_type: :basic
      },
      {
        name: 'Shock Bolt',
        description: "EQUIP a bow with shock bolt. FIRE to send the explosive bolt forward, detonating upon collision and damaging players nearby. HOLD FIRE to extend the range of the projectile. ALTERNATE FIRE to add up to two bounces to this arrow.",
        lineups: true,
        ability_type: :basic,
      },
      {
        name: 'Recon Bolt',
        description: "EQUIP a bow with recon bolt. FIRE to send the recon bolt forward, activating upon collision and revealing the location of nearby enemies caught in the line of sight of the bolt. Enemies can destroy this bolt. HOLD FIRE to extend the range of the projectile. ALTERNATE FIRE to add up to two bounces to this arrow.",
        lineups: true,
        ability_type: :signature
      },
      {
        name: "Hunter's Fury",
        description: "EQUIP a bow with three long-range, wall-piercing energy blasts. FIRE to release an energy blast in a line in front of Sova, dealing damage and revealing the location of enemies caught in the line. This ability can be RE-USED up to two more times while the ability timer is active.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Skye',
    description: "Hailing from Australia, Skye and her band of beasts trail-blaze the way through hostile territory. With her creations hampering the enemy, and her power to heal others, the team is strongest and safest by Skye’s side.",
    role: :initiator,
    abilities: [
      {
        name: 'Regrowth',
        description: "EQUIP a healing trinket. HOLD FIRE to channel, healing allies in range and line of sight. Can be reused until her healing pool is depleted. Skye cannot heal herself.",
        ability_type: :basic
      },
      {
        name: 'Trailblazer',
        description: "EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator. While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies.",
        ability_type: :basic,
      },
      {
        name: 'Guiding Light',
        description: "EQUIP a hawk trinket. FIRE to send it forward. HOLD FIRE to guide the hawk in the direction of your crosshair. RE-USE while the hawk is in flight to transform it into a flash that plays a hit confirm if an enemy was within range and line of sight.",
        ability_type: :signature
      },
      {
        name: 'Seekers',
        description: "EQUIP a Seeker trinket. FIRE to send out three Seekers to track down the three closest enemies. If a Seeker reaches its target, it nearsights them.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Breach',
    description: "Breach, the bionic Swede, fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair.",
    role: :initiator,
    abilities: [
      {
        name: 'Aftershock',
        description: "EQUIP a fusion charge. FIRE the charge to set a slow-acting burst through the wall. The burst does heavy damage to anyone caught in its area.",
        ability_type: :basic
      },
      {
        name: 'Flashpoint',
        description: "EQUIP a blinding charge. FIRE the charge to set a fast-acting burst through the wall. The charge detonates to blind all players looking at it.",
        ability_type: :basic,
      },
      {
        name: 'Fault Line',
        description: "EQUIP a seismic blast. HOLD FIRE to increase the distance. RELEASE to set off the quake, dazing all players in its zone and in a line up to the zone.",
        ability_type: :signature
      },
      {
        name: 'Rolling Thunder',
        description: "EQUIP a seismic charge. FIRE to send a cascading quake through all terrain in a large line. The quake dazes and knocks up anyone caught in it.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'KAY/O',
    description: "KAY/O is a machine of war built for a single purpose: neutralizing radiants. His power to suppress enemy abilities cripples his opponents' capacity to fight back, securing him and his allies the ultimate edge.",
    role: :initiator,
    abilities: [
      {
        name: 'FRAG/MENT',
        description: "EQUIP an explosive fragment. FIRE to throw. The fragment sticks to the floor and explodes multiple times, dealing near lethal damage at the center with each explosion.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'FLASH/DRIVE',
        description: "EQUIP a flash grenade. FIRE to throw. The flash grenade explodes after a short fuse, blinding anyone in line of sight.",
        ability_type: :basic,
      },
      {
        name: 'ZERO/POINT',
        description: "EQUIP a suppression blade. FIRE to throw. The blade sticks to the first surface it hits, winds up, and suppresses anyone in the radius of the explosion.",
        lineups: true,
        ability_type: :signature
      },
      {
        name: 'NULL/CMD',
        description: "INSTANTLY overload with polarized radianite energy that pulses from KAY/O in a massive radius. Enemies hit with pulses are suppressed for a short duration. While overloaded, KAY/O gains combat stim and can be re-stabilized if downed.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Sage',
    description: "The stronghold of China, Sage creates safety for herself and her team wherever she goes. Able to revive fallen friends and stave off aggressive pushes, she provides a calm center to a hellish fight.",
    role: :sentinel,
    abilities: [
      {
        name: 'Barrier Orb',
        description: "EQUIP a barrier orb. FIRE places a wall that fortifies after a few seconds. ALT FIRE rotates the targeter.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Slow Orb',
        description: "EQUIP a slowing orb. FIRE to throw a slowing orb forward that detonates upon landing, creating a lingering field that slows players caught inside of it.",
        lineups: true,
        ability_type: :basic,
      },
      {
        name: 'Healing Orb',
        description: "EQUIP a healing orb. FIRE with your crosshairs over a damaged ally to activate a heal-over-time on them. ALT FIRE while Sage is damaged to activate a self heal-over-time.",
        ability_type: :signature
      },
      {
        name: 'Resurrection',
        description: "EQUIP a resurrection ability. FIRE with your crosshairs placed over a dead ally to begin resurrecting them. After a brief channel, the ally will be brought back to life with full health.",
        ability_type: :ultimate
      },
    ]
  },
  {
    name: 'Cypher',
    description: "The Moroccan information broker, Cypher is a one-man surveillance network who keeps tabs on the enemy's every move. No secret is safe. No maneuver goes unseen. Cypher is always watching.",
    role: :sentinel,
    abilities: [
      {
        name: 'Trapwire',
        description: "EQUIP a trapwire. FIRE to place a destructible and covert tripwire at the targeted location, creating a line that spans between the placed location and the wall opposite. Enemy players who cross a tripwire will be tethered, revealed, and dazed after a short period if they do not destroy the device in time. This ability can be picked up to be REDEPLOYED.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Cyber Cage',
        description: "INSTANTLY toss the cyber cage in front of Cypher. ACTIVATE to create a zone that blocks vision and plays an audio cue when enemies pass through it.",
        lineups: true,
        ability_type: :basic,
      },
      {
        name: 'Spycam',
        description: "EQUIP a spycam. FIRE to place the spycam at the targeted location. RE-USE this ability to take control of the camera's view. While in control of the camera, FIRE to shoot a marking dart. This dart will reveal the location of any player struck by the dart.",
        lineups: true,
        ability_type: :signature
      },
      {
        name: 'Neural Theft',
        description: "INSTANTLY use on a dead enemy player in your crosshairs to reveal the location of all living enemy players.",
        ability_type: :ultimate
      },
    ]
  },
  { 
    name: 'Killjoy',
    description: "The genius of Germany. Killjoy secures the battlefield with ease using her arsenal of inventions. If the damage from her gear doesn't stop her enemies, her robots' debuff will help make short work of them.",
    role: :sentinel,
    abilities: [
      {
        name: 'Nanoswarm',
        description: "EQUIP a Nanoswarm grenade. FIRE to throw the grenade. Upon landing, the Nanoswarm goes covert. ACTIVATE the Nanoswarm to deploy a damaging swarm of nanobots.",
        lineups: true,
        ability_type: :basic
      },
      {
        name: 'Alarmbot',
        description: "EQUIP a covert Alarmbot. FIRE to deploy a bot that hunts down enemies that get in range. After reaching its target, the bot explodes and applies Vulnerable to enemies in the area. HOLD EQUIP to recall a deployed bot.",
        ability_type: :basic,
      },
      {
        name: 'Turret',
        description: "EQUIP a Turret. FIRE to deploy a turret that automatically fires at enemies in a 180 degree cone. HOLD EQUIP to recall the deployed turret.",
        ability_type: :signature
      },
      {
        name: 'Lockdown',
        description: "EQUIP the Lockdown device. FIRE to deploy the device. After a long windup, the device Detains all enemies caught in the radius. The device can be destroyed by enemies.",
        lineups: true,
        ability_type: :ultimate
      },
    ]
  },
]

agents_hash.each do |agent_hash|
  agent = Agent.create(agent_hash.except(:abilities))
  abilities = agent_hash[:abilities]&.map do |ability|
    ability.merge(agent: agent)
  end
  Ability.create(abilities)
end
