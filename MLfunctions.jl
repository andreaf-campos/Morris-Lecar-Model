minf(V,V1,V2)=1/2*(1 + tanh((V-V1)/V2) )
ninf(V,V3,V4)=1/2*(1 + tanh((V-V3)/V4) )
taun(V,V3,V4)=1/cosh((V-V3)/(2V4))

Iion(V,n,gL,EL,gK,EK,gCa,ECa,V1,V2)=gL*(V-EL)+gK*n*(V-EK)+gCa*minf(V,V1,V2)*(V-ECa)
Vdot(V,n,Iapp,gL,EL,gK,EK,gCa,ECa,CM,V1,V2)=(Iapp-Iion(V,n,gL,EL,gK,EK,gCa,ECa,V1,V2))/CM

ndot(V,n,phi,V3,V4)=phi/taun(V,V3,V4)*(ninf(V,V3,V4)-n)