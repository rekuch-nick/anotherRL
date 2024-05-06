

x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;
timeCD -= 1;

if(timeCD < 1 || image_alpha < 0){
	instance_destroy();
}