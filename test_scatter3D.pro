
pro test_scatter3D
 
 x=findgen(100)-50
 y=findgen(100)-50
 z=findgen(100)
 data=bytscl(sin(dist(400)/10))

 maplimit=[-50,-50,50,50]

 
 ;mp=map('Geographic',limit=maplimit,/nodata)
 ;mp.mapgrid.hide=1
; mc=mapcontinents(/continents,/hires)

 ; test 1== save high resolution image, and then over plot 3D image
; mp.save,'map.png',border=0,resolution=600 
; dis=scatterplot3d(x,y,z,rgb_table=33)
; read_png,'map.png',imdata
; im=image(imdata,image_dimensions=[100,100],image_location=[-50,-50],overplot=dis)
; test 2== using image to load map projection,not working
   read_png,'map.png',imdata
  im=image(imdata,grid_units='degrees',map_projection='Geographic',image_location=[-50,-50],$
	image_dimensions=[100,100])
 
 stop
end
