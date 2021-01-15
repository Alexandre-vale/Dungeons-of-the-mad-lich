msp = 3;
vsp = 0;
hsp = 0;
line = false;

//Creating party
for(i = 0; i < 4; i++)
{
	with(instance_create_layer(x+lengthdir_x(15,90*i),y+lengthdir_y(15,90*i),"Characters",O_Char))
	{
		myplace = other.i;
		myparty = other.id;
	}
}

