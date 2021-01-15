
//Follows party

if(!myparty.line)
{
x = myparty.x + lengthdir_x(15,90*myplace);
y = myparty.y + lengthdir_y(15,90*myplace);
}
else
{
	if(myplace == 0)
	{
		x = myparty.x;
		y = myparty.y;
	}
	else
	{
		if(myparty.inputMagnitude != 0)
		{
		x = myparty.x + lengthdir_x(myplace*15,myparty.inputDirection+180);
		y = myparty.y + lengthdir_y(myplace*15,myparty.inputDirection+180);
		}
	}
}