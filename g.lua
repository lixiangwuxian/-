function init()
 
end
 
function sleep(n)
   if n > 0 then
	local i=0
	while(i<n) do
	i=i+0.000002
	end
	end
end
 
function readin()
	io.write("Please input v0\nv0=")
	local v1st=io.read()
	io.write("Please input deg\ndeg=")
	local degs=io.read()
	io.write("Please input g\ng=")
	local g=io.read()
	return v1st,degs,g
end
 
function ysp(ysd,xg,t)
	return ysd-xg*t
end
 
function ptout(xset,yset)
	print("_______________________________________________________")
	for i=1,40-math.ceil(yset) do
		io.write("\n")
	end
	for i=1,math.ceil(xset) do
		io.write(" ")
	end
	io.write("Q\n")
	for i=1,math.ceil(yset)-2 do
		io.write("\n")
	end
	print("_______________________________________________________")
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
		sleep(3)
	end
end
 
init()
main()
