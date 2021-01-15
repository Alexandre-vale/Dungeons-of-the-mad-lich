//Input
keyLeft = keyboard_check(ord("A"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyRight = keyboard_check(ord("D"));
qpress = keyboard_check_pressed(ord("Q"));
epress = keyboard_check_pressed(ord("E"));
xpress = keyboard_check_pressed(ord("X"));

//Movement
inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

hsp = lengthdir_x(inputMagnitude*msp,inputDirection);
vsp = lengthdir_y(inputMagnitude*msp,inputDirection);


//collision
with(O_Char)
{	
	if((!myparty.line) || (myplace == 0))
	{
		{
			if(place_meeting(x+other.hsp,y,O_Wall))
			{
				while(!place_meeting(x+sign(other.hsp),y,O_Wall))
				{
					x = x+sign(other.hsp);
				}
				other.hsp = 0;
			}

			if(place_meeting(x,y+other.vsp,O_Wall))
			{
				while(!place_meeting(x,y+sign(other.vsp),O_Wall))
				{
					y = y+sign(other.vsp);
				}
				other.vsp = 0;
			}
		}
	}
}
x += hsp;
y += vsp;

//make formation

if(xpress)
{
	if(line)
	{
		line = false;
	}
	else
	{
		line = true;
	}
}

//switch places
if(!line)
{
with(O_Char)
{
if(myparty.qpress)
{
	myplace -= 1;
}
if(myparty.epress)
{
	myplace += 1;
}
if(myplace < 0)
{
	myplace = 3;
}
if(myplace > 3)
{
	myplace = 0;
}
}
}




