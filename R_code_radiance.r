#R_code_radiance.r

toy <- raster(ncol=2, nrow=2, xmn=1, xmx=2, ymn=1, ymx=2)
values(toy) <- c(1.13,1.44,1.55,3.4)
 toy8bits <- stretch(toy,minv=0,maxv=255)
> toy8bits <- stretch(toy,minv=0,maxv=255)
> plot(toy8bits)
> text(toy8bits, digits=2)
