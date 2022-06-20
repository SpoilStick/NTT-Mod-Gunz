#define init
global.sprUltraSeekerPistol = sprite_add_weapon("Weapon-Sprites/sprUltraSeekerPistol.png", 2, 2);

#define weapon_name
return "ULTRA SEEKER PISTOL";

#define weapon_text
return "green dorito";

#define weapon_sprt
return global.sprUltraSeekerPistol;

#define weapon_type
return 3;

#define weapon_cost
return 3;

#define weapon_load
return 24;

#define weapon_swap
return sndSwapBow;

#define weapon_area
return 24;

#define weapon_rads
return 24

#define weapon_fire
sound_play(sndSeekerPistol);

for (var d = -10; d <= 20; d += 20) {
	mod_script_call("mod", "Ultra Seeker", "obj_UltraSeeker", x, y, other.gunangle + random(20) - 10 - d * other.accuracy, 5.6)
}

weapon_post(-3, -15, 3);