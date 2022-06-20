#define init
global.sprPipe = sprite_add_weapon("Weapon-Sprites/sprPipe.png", 3, 4);

#define weapon_name
return "RARE PIPE";

#define weapon_text
return "this one's special pipe";

#define weapon_sprt
return global.sprPipe;

#define weapon_type
return 0;

#define weapon_melee
return 1;

#define weapon_cost
return 0;

#define weapon_load
return 10;

#define weapon_swap
return sndSwapSword;

#define weapon_area
return 25;

#define weapon_fire
{
	sound_play_gun(sndWrench, 0.2, 0.6);

	with(instance_create(x + lengthdir_x(skill_get(13)*20, aimDirection), y + lengthdir_y(skill_get(13)*20, aimDirection), Slash))
	{
		damage = 12;

		motion_add(other.aimDirection, 3 + skill_get(13)*4);
		image_angle = direction;
		
		team = other.team;
		creator = other.id;
	}

	wepangle = -wepangle;
	weapon_post(-6, 8, 1);
	motion_add(aimDirection,6)
}