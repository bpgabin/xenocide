"SpaceInform" by William Pacini and Brian Gabin

Chapter 1 - Building the Map

port is a direction. The opposite of port is starboard.
starboard is a direction. The opposite of starboard is port.
fore is a direction. The opposite of fore is aft.
aft is a direction. The opposite of aft is fore.
 
The Mining Vessel is a room. The description is "Mining Vessel description".

The Airlock is a room. It is aft of the Mining Vessel. The description is "Air Lock description".

The Entry Commons is a room. It is aft of the Airlock. The description is "Entry Commons description".

The Hallway is a room. It is port of the Entry Commons. The description is "Hallway description".

The Exercise Room is a room. It is starboard of the Entry Commons. The description is "Exercise room description".

The Barracks is a room. It is aft of the Hallway. The description is "Barracks description".

The Galley is a room. It is aft of the Entry Commons. It is fore of the Barracks. It is starboard of the Elevator. The description is "Galley description".

The Medical Bay is a room. It is starboard of the Galley. The description is "Medical Bay description".

The Crew's Quarters is a room. It is aft of the Medical Bay. It is starboard of the Barracks. The description is "Crew's Quarters description".

The Officer's Quarters is a room. It is aft of the Barracks. The description is "Officer's Quarters description".

The Engine Room is a room. It is down of the Officer's Quarters. The description is "Engine Room description".

The Armory is a room. It is fore of the Engine Room. The description is "Armory description".

The Life Support Systems is a room. It is fore of the armory. The description is "Life Support System description".

The Brig is a room. It is starboard of the Armory. The description is "The Brig description".

The Weapons Systems Room is a room. It is up of the Officer's Quarters. The description is "Weapons Systems Room description".

The Observation Deck is a room. It is fore of the Weapons Systems. The description is "Observation Deck"

 The Bridge is a room. It is fore of the Observation Deck. The description is "Bridge description".
 
The Captain's Quarters is a room. It is starboard of the Observation Deck. The description is "Captain's Quarters description".

The Hallway is port of the Barracks.
The Entry Commons is fore of the Hallway.

The Elevator is a room. It is starboard of the Hallway. It is port of the Observation Deck. The description is "Elevator description".
Instead of going up in the Elevator:
	If Observation Deck is mapped starboard of the Elevator, say "The elevator is already on the top level.";
	If Galley is mapped starboard of the Elevator
	begin;
		now Observation Deck is mapped starboard of the Elevator;
		now nothing is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the top level.";
	end if;
	If Armory is mapped starboard of the Elevator
	begin;
		now Galley is mapped starboard of the Elevator;
		now Hallway is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the main level.";
	end if;
Instead of going down in the Elevator:
	If Armory is mapped starboard of the Elevator, say "The elevator is already on the bottom level.";
	If Galley is mapped starboard of the Elevator
	begin;
		now Armory is mapped starboard of the Elevator;
		now nothing is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the bottom level.";
	end if;
	If Observation Deck is mapped starboard of the Elevator
	begin;
		now Galley is mapped starboard of the Elevator;
		now Hallway is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the main level.";
	end if;

Chapter 2 - Everything Else

Include Conversation Package by Eric Eve.