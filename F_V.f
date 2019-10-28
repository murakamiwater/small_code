
      program energy_calclation
              implicit none
              real pi,c1,c2
              real musph,mupro
              real N,a,Rsph,Rpro,L,Fsph,Fpro,Nsph,Npro 
              integer i
	      pi=3.141592
	      Rpro=1.4
	      L=0.77
              N=5/3.6
	      c1=(pi**3)/((N**2)*(L**5))

	      write(6,*) "F1 N1 F2 N2 mu1 mu2"
              do i=1,10000
             a=i*0.01           !prorate
	     Rsph=i*0.01        !semenov sph

	     !semenov 
	     Fsph=(c1/20)*(Rsph**5)
             Fpro=c1*(a*(Rpro**4)/16+(Rpro**5)/20)
             Nsph=(4*pi*(Rsph**3)/3)/(N*(L**3))
             Npro=(4*pi*(Rpro**3)/3 + pi*(Rpro**2)*a)/(N*(L**3))
             musph=Fsph/Nsph
             mupro=Fpro/Npro
            write(6,*) Fsph,Fpro,Nsph,Npro,musph,mupro
              enddo

        end program


