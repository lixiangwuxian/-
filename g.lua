function init()
	print("斜抛运动模拟")
 
end
 
function sleep(n)
   if n > 0 then
	local i=0
	while(i<n) do
	i=i+0.000004
	end
	end
end
 
function readin()
	io.write("请输入斜抛初速度\nv0=")
	local v1st=io.read()
	io.write("请输入斜抛向上角度(角度制)\ndeg=")
	local degs=io.read()
	io.write("请输入重力加速度\ng=")
	local g=io.read()
	return v1st,degs,g
end
 
function ysp(ysd,xg,t)
	return ysd-xg*t
end
 
function ptout(xset,yset)
	os.execute("cls")
	print("___________________________________________________________________________________________________________")
	for i=1,70-math.ceil(yset) do
		io.write("\n")
	end
	for i=1,math.ceil(xset) do
		io.write(" ")
	end
	io.write("|M|\n")
	for i=1,math.ceil(yset)-2 do
		io.write("\n")
	end
	print("___________________________________________________________________________________________________________")
	sleep(0.0001)
end
 
function main()
	v0,degs,g=readin()
	xspd=v0*math.cos(degs*math.pi/180)
	yspd=v0*math.sin(degs*math.pi/180)
	t=0
	x=0
	y=0
	while (t==0 or y>=0)
		do
		t=t+0.05
		x=t*xspd
		y=t*ysp(yspd,g,t)
		ptout(x,y)
		print("x=",x,"y=",y)
		sleep(0.5)
	end
end
 
init()
main()
